package com.ctb.importData;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FilenameFilter;
import java.sql.SQLException;
import java.util.Arrays;
import java.util.Comparator;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

import org.apache.log4j.Logger;
import org.apache.log4j.PropertyConfigurator;

import com.ctb.bean.DataFileAudit;
import com.ctb.bean.OrgNodeCategory;
import com.ctb.bean.UploadMoveData;
import com.ctb.exception.CTBBusinessException;
import com.ctb.exception.FileHeaderException;
import com.ctb.exception.FileNotUploadedException;
import com.ctb.utils.Configuration;
import com.ctb.utils.Constants;
import com.ctb.utils.EmailSender;
import com.ctb.utils.ExtractUtil;
import com.ctb.utils.FtpSftpUtil;
import com.ctb.utils.UploadFormUtils;
import com.ctb.utils.UploadThread;
import com.ctb.utils.cache.OrgMDRDBCacheImpl;
import com.ctb.utils.cache.UserDBCacheImpl;
import com.ctb.utils.cache.UserNewRecordCacheImpl;
import com.ctb.utils.cache.UserUpdateRecordCacheImpl;
import com.jcraft.jsch.Session;

/**
 * This Class is entry point to this USER UPLOAD Utility
 * 
 * @author TCS
 * 
 */
public class ImportDataProcessor {

	static Logger logger = Logger
			.getLogger(ImportDataProcessor.class.getName());

	/**
	 * Properties File name should be mentioned as 1st Argument and Properties
	 * File location should be mentioned as 2nd Argument
	 */
	static String sourceDir, targetDir, archiveDir = "";
	static Integer customerId = new Integer(0);
	Map<Integer, UploadMoveData>uploadMoveDataMap = new HashMap<Integer, UploadMoveData>();

	/**
	 * Accepts single Parameter denoting the Properties file Name
	 * 
	 * @param args
	 */
	public static void main(String[] args) {
		String envName = getPropFileFromCommandLine(args);
		ExtractUtil.loadExternalPropetiesFile(envName,args[1]);
		PropertyConfigurator.configure(Configuration.getLog4jFile());
		logger.info("\t******Utility Fresh Start*******");
		logger.info("Properties File Successfully Loaded of Environment :: "+ envName);
		Long startTime = System.currentTimeMillis();
		logger.info("StartTime:" + new Date(System.currentTimeMillis()));
		try {
			sourceDir = Configuration.getFtpFilePath();
			targetDir = Configuration.getLocalFilePath();
			archiveDir = Configuration.getArchivePath();
			customerId = Integer.valueOf(Configuration.getCustomerId());
			logger.info("Import Process started..."
					+ new Date(System.currentTimeMillis()));
			Session session = null;
			Map<String, Long>fileTimeMap = new HashMap<String, Long>();
			logger.info("Temp Directory CleanUp Started..."
					+ new Date(System.currentTimeMillis()));
			deleteFiles(targetDir);
			logger.info("Temp Directory CleanUp Completed..."
					+ new Date(System.currentTimeMillis()));
			logger.info(" DownloadFiles Start Time:"
					+ new Date(System.currentTimeMillis()));
			session = FtpSftpUtil.getSFTPSession();
			FtpSftpUtil.downloadFiles(session, sourceDir, targetDir,fileTimeMap);
			logger.info("DownloadFiles End Time:"
					+ new Date(System.currentTimeMillis()));

			/**
			 * Processing the files from Temp Location
			 **/
			ImportDataProcessor importProcessor = new ImportDataProcessor();
			importProcessor.processImportedFiles(fileTimeMap);
			/**
			 * End of Processing the files from Temp Location
			 **/

			logger.info("Import Process Is Completed...  total time taken -> "
					+ (System.currentTimeMillis() - startTime) + "ms");
		} catch (Exception e) {
			logger.info("Exception Occurred..");
			logger.info(e.getMessage());
		} finally {
			cacheManagerClean();
		}
	}

	private static void cacheManagerClean() {
		OrgMDRDBCacheImpl.removeCache();
		UserDBCacheImpl.removeCache();
		UserNewRecordCacheImpl.removeCache();
		UserUpdateRecordCacheImpl.removeCache();
	}

	private static String getPropFileFromCommandLine(String[] args) {
		String envName = "";
		String usage = "Usage:\n 	java -jar ImportStudentData.jar <properties file name>";
		if (args.length < 1) {
			System.out.println("Cannot parse command line. No command specified.");
			System.out.println(usage);
			System.exit(1);
		} else {
			envName = args[0].toUpperCase();
		}
		return envName;
	}

	/**
	 * All files that are downloaded in the targetDir are processed one by one.
	 * @param fileMap 
	 * 
	 * @throws Exception
	 */
	private void processImportedFiles(Map<String, Long> fileMap) {
		File folder = new File(targetDir);

		File[] listOfFiles = folder.listFiles(new FilenameFilter() {
			public boolean accept(File dir, String filename) {
				return filename.endsWith(".csv");
			}
		});
		setFileLastModifiedTime(listOfFiles,fileMap);
		fileMap.clear();
		
		if (listOfFiles != null && listOfFiles.length > 0) {
			Arrays.sort(listOfFiles, new Comparator<File>() {
				public int compare(File f1, File f2) {
					return Long.valueOf(f1.lastModified()).compareTo(Long.valueOf(f2.lastModified()));
				}
			});
			int length = listOfFiles.length;
			ExecutorService executor = Executors
					.newFixedThreadPool(Constants.THREADCOUNT);
			logger.info("Process Started for Customer Id used : "
					+ ImportDataProcessor.customerId);
			for (int j = 0; j < length; j++) {
				int uploadDataFileId = 0;
				File inFile = listOfFiles[j];
				if (inFile.isFile()) {
					logger.info("ReadFileContent Start Time :"
							+ new Date(System.currentTimeMillis())
							+ " for file :" + inFile.getName());
					
					uploadDataFileId = readFileContent(inFile).intValue();
					if (uploadDataFileId != 0) {
						try {
							fileMap.put(inFile.getName(), new Long(uploadDataFileId));
							addErrorDataFile(inFile, new Integer(
									uploadDataFileId));
						} catch (Exception e) {
						} finally {
							logger.info("ReadFileContent End Time:"
									+ new Date(System.currentTimeMillis())
									+ " for file :" + inFile.getName());
						}
					} else {
						logger.info("Upload Process Failed.. for file :"
								+ inFile.getName());
					}
				}
			}

			for (int indx = 0; indx < length; indx++) {
				File inFile = listOfFiles[indx];
				int uploadDataFileId = fileMap.get(inFile.getName()).intValue();
				try {
					if (uploadMoveDataMap.containsKey(new Integer(uploadDataFileId))) {
						UploadMoveData uploadMoveData = uploadMoveDataMap.get(new Integer(uploadDataFileId));
						UploadThread uploadThread = new UploadThread(
								customerId, inFile, new Integer(
										uploadDataFileId), uploadMoveData);
						executor.execute(uploadThread);
					}
				} catch (Exception e) {
					logger.error("Thread invoking Error.. ");
				}
			}
			fileMap.clear();
			executor.shutdown();
			while (!executor.isTerminated()) {
				// Break after all the task is completed.
			}
		} else {
			logger.info("No Input Files to be processed..");
		}
	}
	
	private void setFileLastModifiedTime(File[] listOfFiles,
			Map<String, Long> fileTimeMap) {
		if (listOfFiles != null && listOfFiles.length > 0) {
			for (int i = 0; i < listOfFiles.length; i++) {
				File inFile = listOfFiles[i];
				String name = inFile.getName();
				if (fileTimeMap.containsKey(name))
					inFile.setLastModified(fileTimeMap.get(name));
			}
		}

	}

	/**
	 * Deletes all files present in targetDir folder location
	 * 
	 * @param targetDir
	 * @throws Exception
	 */
	private static void deleteFiles(String targetDir) throws Exception {
		File dir = new File(targetDir);
		try {
			if (dir.isDirectory()) {
				if (dir.listFiles().length > 0) {
					File[] inFile = dir.listFiles();
					for (int i = 0; i < inFile.length; i++) {
						inFile[i].delete();
					}
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}
	}

	/**
	 * File is saved in Database after basic extension and size check.
	 * 
	 * @param inFile
	 * @return Integer
	 */
	private Integer readFileContent(File inFile) {
		UploadFormUtils uploadFormUtils = new UploadFormUtils();
		String strFileName = inFile.getName();
		Integer uploadDataFileId = new Integer(0);
		try {
			if (!UploadFormUtils.verifyFileExtension(strFileName)) {
				logger.error("Upload File Extension must be .csv : file :"+inFile.getName());
				return new Integer(0);
			}
			if ((inFile.length() == 0) || (strFileName.length() == 0)) {
				logger.error("Upload File Cannot be empty.. : file :"+inFile.getName());
				/**
				 * Send Mail
				 */
				if ("true".equalsIgnoreCase(Configuration.getEmailAlerts())) {
					EmailSender.sendMail("", Configuration.getEmailSender(),
							Configuration.getEmailRecipient(),
							Configuration.getEmailCC(),
							Configuration.getEmailBCC(),
							Configuration.getEmailSubjectFileEmptyIssue(),
							Configuration.getEmailBodyFileEmptyIssue(), null);
				}
				return new Integer(0);
			}

			uploadDataFileId = uploadFormUtils.saveFileToDBTemp(inFile);
			logger.info("File Data saved in data_file_temp table.. : file :"+inFile.getName());
			return uploadDataFileId;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return new Integer(0);

	}

	/**
	 * Basic File Validation is checked After Configuration check
	 * 
	 * @param inFile
	 * @param uploadDataFileId
	 * @return Integer
	 * @throws CTBBusinessException
	 */
	public Integer addErrorDataFile(File inFile, Integer uploadDataFileId)
			throws CTBBusinessException {
		int noOfUserColumn = 0;
		// Used to read the file type
		UploadFormUtils uploadFormUtils = new UploadFormUtils();
		try {
			DataFileAudit dataFileAudit = new DataFileAudit();
			Integer customerId = ImportDataProcessor.customerId;
			boolean isEngradeCustomer = uploadFormUtils
					.checkCustomerConfigurationEntries(customerId,
							"ENGRADE_Customer");
			if (!isEngradeCustomer) {
				logger.info("ENGRADE_Customer Configuration not present..");
				throw new CTBBusinessException("Uploaded.Failed");
			}
			OrgNodeCategory[] orgNodeCategory = uploadFormUtils
					.getOrgNodeCategories(customerId);
			noOfUserColumn = (orgNodeCategory.length) * 3 + 1;
			// Validating the excel sheet
			String fileType = uploadFormUtils.getUploadFileCheck(inFile,
					noOfUserColumn, customerId, orgNodeCategory);
			if (fileType == "") {
				throw new CTBBusinessException("Uploaded.Failed");
			}

			dataFileAudit.setDataFileAuditId(uploadDataFileId);
			dataFileAudit.setUploadFileName(inFile.getName());
			dataFileAudit.setCreatedDateTime(new Date());
			dataFileAudit.setStatus("IN");
			dataFileAudit.setUserId(new Integer(1));
			dataFileAudit.setCustomerId(customerId);
			dataFileAudit.setCreatedBy(new Integer(1));
			uploadFormUtils.createDataFileAudit(dataFileAudit);

			UploadMoveData uploadMoveData = uploadFormUtils.getUploadMoveData();
			uploadMoveDataMap.put(uploadDataFileId, uploadMoveData);

		} catch (FileNotFoundException fn) {
			FileNotUploadedException fileNotUploadedException = new FileNotUploadedException(
					"FileNotFound.Failed");
			fileNotUploadedException.setStackTrace(fn.getStackTrace());
			throw fileNotUploadedException;
		} catch (FileHeaderException fh) {
			FileHeaderException fileHeaderException = new FileHeaderException(
					"FileHeader.Failed");
			fileHeaderException.setStackTrace(fh.getStackTrace());
			throw fileHeaderException;
		} catch (CTBBusinessException e) {
			FileHeaderException fileHeaderException = new FileHeaderException(
					"Uploaded.Failed");
			fileHeaderException.setStackTrace(e.getStackTrace());
			throw fileHeaderException;

		} catch (SQLException e) {
			FileNotUploadedException fileNotUploadedException = new FileNotUploadedException(
					"Uploaded.Failed");
			fileNotUploadedException.setStackTrace(e.getStackTrace());
			throw fileNotUploadedException;
		} catch (Exception e) {
			FileNotUploadedException fileNotUploadedException = new FileNotUploadedException(
					"Uploaded.Failed");
			fileNotUploadedException.setStackTrace(e.getStackTrace());
			throw fileNotUploadedException;
		}

		return uploadDataFileId;
	}

}