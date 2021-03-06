package utils; 

import com.lowagie.text.BadElementException;
import com.lowagie.text.Cell;
import com.lowagie.text.Chunk;
import data.TestRosterVO;
import data.TestAdminVO;
import java.io.IOException;
import java.util.List;

import com.lowagie.text.Document;
import com.lowagie.text.DocumentException;
import com.lowagie.text.Font;
import com.lowagie.text.FontFactory;
import com.lowagie.text.Image;
import com.lowagie.text.PageSize;
import com.lowagie.text.Paragraph;
import com.lowagie.text.Phrase;
import com.lowagie.text.Table;
import com.lowagie.text.pdf.PdfContentByte;
import com.lowagie.text.pdf.PdfPCell;
import com.lowagie.text.pdf.PdfPTable;
import com.lowagie.text.pdf.PdfTable;
import com.lowagie.text.pdf.PdfWriter;
import data.ImageVO;
import data.TableVO;
import java.awt.Color;
import java.net.URL;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import javax.servlet.ServletOutputStream;
//import weblogic.webservice.tools.pagegen.result;

public class IndividualTestTicketsReportUtils extends ReportUtils
{ 
    // image location
    private static final String WAVING_MAN_URL = "/images/wavingMan.gif";// "/TestAdministrationWeb/resources/images/wavingMan.gif";

    // page coordinates
    private static final float LEFT_X = 70f;
    private static final float WAVING_MAN_X = 458f;
    private static final float KEYBOARD_X = 156f;
    private static final float INFO_X = 170;
    private static final float WATERMARK_X = 530f;

    private static final float TITLE_Y = 752f;
    private static final float LINE_Y = 726f;
    private static final float STUDENT_NAME_Y = 715f;
    private static final float STUDENT_ID_Y = 700f;
    private static final float TEST_NAME_Y = 667f;
    private static final float LOCATION_Y = 635f;
    private static final float LOGIN_INFO_Y = 607f;
    private static final float LOGIN_INFO_TABLE_Y = 587f;
    private static final float LOGIN_INSTRUCTIONS_Y = 508f;
    private static final float KEYBOARD_SHORTCUTS_Y = 464f;
    private static final float KEYBOARD_SHORTCUTS_TEXT_1_Y = 442f;
    private static final float KEYBOARD_SHORTCUTS_TEXT_2_Y = 398f;
    private static final float KEYBOARD_SHORTCUTS_TEXT_3_Y = 358f;
    private static final float KEYBOARD_SHORTCUTS_TABLE_Y = 317f;
    private static final float FOOTER_Y = 72f;
    private static final float WAVING_MAN_Y = 488f;
    private static final float WATERMARK_Y = 30f;

    private static final float PAGE_WIDTH = 460f;
    private static final float INFO_LABEL_WIDTH = 460f;
    private static final float INFO_VALUE_WIDTH = 300f;
    private static final float LINE_WIDTH = 480f;
    private static final float LOGIN_WIDTH = 388f;
    private static final float KEYBOARD_WIDTH = 306f;
    private static final float WATERMARK_WIDTH = 50f;

    // table column width ratios
    private static float[] LOGIN_WIDTHS = new float[] {1.3f, 3f};
    private static float[] KEYBOARD_WIDTHS = new float[] {1f, 1f};
    
    // table borders
    private static final float LOGIN_BORDER = 1f;
    private static final float LOGIN_INSTRUCTIONS_BORDER = 0.5f;
    private static final float KEYBOARD_BORDER = 2f;
    
    // page text
    private static final String PAGE_NAME_LABEL = "Individual Test Ticket";
	private static final String STUDENT_NAME_LABEL = "Student Name:";
	private static final String STUDENT_ID_LABEL = "Student ID:";
	private static final String TEST_NAME_LABEL = "Test Name:";
    private static final String LOGIN_INFORMATION = "Your login information";
	private static final String LOCATION_LABEL = "Location:";
	private static final String LOGIN_ID_LABEL = "Login ID:";
	private static final String PASSWORD_LABEL = "Password:";
    private static final String TEST_ACCESS_CODE_LABEL = "Test Access Code:";
    private static final String LOGIN_INSTRUCTIONS = "Wait for the teacher or test proctor to give you the Test Access Code.";
    private static final String KEYBOARD_SHORTCUTS_LABEL = "Keyboard Shortcuts";
    private static final String KEYBOARD_SHORTCUTS_TEXT_1 = "To move through the test, use the buttons on each screen, or you may use these keyboard shortcuts.";
    private static final String KEYBOARD_SHORTCUTS_TEXT_2 = "If two keys are used together, a + sign is shown between them.  You don't need to press the + key.";
    private static final String KEYBOARD_SHORTCUTS_TEXT_3 = "For example, to Go Back, press the Ctrl key and hold it down as you press the J key.";
    private static final String DESCRIPTION_LABEL = "Description";
    private static final String ENTER_ANSWSER_LABEL = "Enter an answer:";
    private static final String GO_BACK_LABEL = "Go Back:";
    private static final String GO_ON_LABEL = "Go On:";
    private static final String MARK_UNMARK_LABEL = "Mark/Unmark for review:";
    private static final String SHOW_HIDE_LABEL = "Show/Hide time:";
    private static final String STOP_LABEL = "Stop:";
    private static final String FINISH_TEST_LABEL = "Finish Test:";
    private static final String PAUSE_LABEL = "Pause:";
    private static final String KEYBOARD_SHORTCUT_LABEL = "Keyboard Shortcut";
    private static final String ENTER_ANSWER_SHORTCUT = "A B C D E";
    private static final String GO_BACK_SHORTCUT = "Ctrl + J";
    private static final String GO_ON_SHORTCUT = "Ctrl + K";
    private static final String MARK_UNMARK_SHORTCUT = "Ctrl + L";
    private static final String SHOW_HIDE_SHORTCUT = "Ctrl + O";
    private static final String STOP_SHORTCUT = "Ctrl + S";
    private static final String FINISH_TEST_SHORTCUT = "Ctrl + F";
    private static final String PAUSE_SHORTCUT = "Ctrl + U";
    private static final String WATERMARK_TEXT = "TTI";
    
    // global variables
	private Collection rosterList = null;
	private TestAdminVO testAdmin = null;
    
    private TableVO noPauseKeyboards = null;
    private TableVO pauseKeyboards = null;
     
    protected boolean createStaticTables() throws DocumentException, IOException {
        addTitle();
        addStaticGeneralInformation();
        addStaticLoginInformation();
        addKeyboardShortcuts();
        addFooter();
        addWatermark();
        return true;
    }
    protected boolean setDynamicTables() throws DocumentException, IOException{
        this.dynamicTables = (Collection)this.pages.get(currentPageIndex);
        return (this.dynamicTables != null && this.dynamicTables.size() > 0);
    }
    protected boolean setImages() throws DocumentException, IOException{
        if(currentPageIndex == 0){
            addWavingMan();
        }
        return true;
    }
    
    protected void setup(Object[] args) throws DocumentException, IOException{
        super.initializeGlobals(new Object[] {args[2], args[3], args[4], PageSize.LETTER, args[5]});
        this.rosterList = (Collection)args[0];
        this.testAdmin = (TestAdminVO)args[1];
        this.getKeyboardShortcutsTables();
        this.createStaticTables();
        this.createPages();
    }
    
    private void createPages() throws DocumentException{
        this.totalPages = this.rosterList.size();
        for(Iterator it=this.rosterList.iterator(); it.hasNext();){
            TestRosterVO student = (TestRosterVO)it.next();
            ArrayList tables = new ArrayList();
            tables.add(getStudentNameValue(student));
            tables.add(getStudentIdValue(student));
            tables.add(getLoginTable(student));
            tables.add(getKeyboardShortcutsTable(student));
            this.pages.add(tables);
        }
    }
    private void addTitle() throws DocumentException{
        addTitleText();
        addTitleLine();
    }
    
    private void addTitleText() throws DocumentException{
         this.staticTables.add(
            tableUtils.getTitleTable(PAGE_NAME_LABEL,
                                     PAGE_WIDTH,
                                     LEFT_X,
                                     TITLE_Y));
    }
    
    private void addTitleLine() throws DocumentException{
        this.staticTables.add(
            tableUtils.getLineTable(LINE_WIDTH,
                                    LEFT_X,
                                    LINE_Y));
    }
    
    private void addFooter() throws DocumentException{
        this.staticTables.add(
            tableUtils.getCopywriteTable(PAGE_WIDTH,
                                         LEFT_X,
                                         FOOTER_Y));
     }
    
    private void addWatermark() throws DocumentException{
        this.staticTables.add(
            tableUtils.getWatermarkTable(WATERMARK_TEXT,
                                         WATERMARK_WIDTH,
                                         WATERMARK_X,
                                         WATERMARK_Y));
     }
    
    private void addStaticGeneralInformation() throws DocumentException{
        addStudentNameLabel();
        addStudentIdLabel();
        addTestNameLabel();
        addTestNameValue();
        addLocationLabel();
        addLocationValue();
    }
    
    private void addStudentNameLabel() throws DocumentException{
        this.staticTables.add( 
             tableUtils.getLabelTable(STUDENT_NAME_LABEL,
                                      INFO_LABEL_WIDTH,
                                      LEFT_X,
                                      STUDENT_NAME_Y));
    }

    private TableVO getStudentNameValue(TestRosterVO student) throws DocumentException{
        return tableUtils.getInfoTable(getStudentName(student),
                                       INFO_VALUE_WIDTH,
                                       INFO_X,
                                       STUDENT_NAME_Y);
   }

    private void addStudentIdLabel() throws DocumentException{
        this.staticTables.add( 
             tableUtils.getLabelTable(STUDENT_ID_LABEL,
                                      INFO_LABEL_WIDTH,
                                      LEFT_X,
                                      STUDENT_ID_Y));
    }

    private TableVO getStudentIdValue(TestRosterVO student) throws DocumentException{
        return tableUtils.getInfoTable(getStudentId(student),
                                       INFO_VALUE_WIDTH,
                                       INFO_X,
                                       STUDENT_ID_Y);
   }

    private void addTestNameLabel() throws DocumentException{
        this.staticTables.add( 
             tableUtils.getLabelTable(TEST_NAME_LABEL,
                                      INFO_LABEL_WIDTH,
                                      LEFT_X,
                                      TEST_NAME_Y));
   }

    private void addTestNameValue() throws DocumentException{
         this.staticTables.add( 
            tableUtils.getInfoTable(getTestName(),
                                    INFO_VALUE_WIDTH,
                                    INFO_X,
                                    TEST_NAME_Y));
     }
    
    private void addLocationLabel() throws DocumentException{
        if(hasLocation()){
            this.staticTables.add( 
                 tableUtils.getLabelTable(LOCATION_LABEL,
                                          INFO_LABEL_WIDTH,
                                          LEFT_X,
                                          LOCATION_Y));
        }
    }

    private void addLocationValue() throws DocumentException{
        if(hasLocation()){
            this.staticTables.add( 
                tableUtils.getInfoTable(getLocation(),
                                        INFO_VALUE_WIDTH,
                                        INFO_X,
                                        LOCATION_Y));
        }
   }

    private void addStaticLoginInformation() throws DocumentException, IOException{
        addLoginLabel();
        addWavingMan();
        addLoginInstructions();
    }
 
    private void addLoginInstructions() throws DocumentException{
        this.staticTables.add( 
            tableUtils.getBorderedTable(LOGIN_INSTRUCTIONS,
                                        LOGIN_WIDTH,
                                        LEFT_X,
                                        LOGIN_INSTRUCTIONS_Y,
                                        LOGIN_INSTRUCTIONS_BORDER));
    }
    
    private void addWavingMan() throws DocumentException, IOException{
        ImageVO wavingMan = new ImageVO(WAVING_MAN_URL, WAVING_MAN_X, WAVING_MAN_Y);
        if(this.images == null){
            this.images = new ArrayList();
        }
        this.images.add(wavingMan);
    }

    private void addLoginLabel() throws DocumentException{
        this.staticTables.add( 
             tableUtils.getLabelTable(LOGIN_INFORMATION,
                                      PAGE_WIDTH,
                                      LEFT_X,
                                      LOGIN_INFO_Y));
    }
    
    private TableVO getLoginTable(TestRosterVO student) throws DocumentException {
        return tableUtils.getLoginTable(getLoginInfoTexts(student),
                                        LOGIN_WIDTH,
                                        LOGIN_WIDTHS,
                                        LEFT_X,
                                        LOGIN_INFO_TABLE_Y,
                                        LOGIN_BORDER);
    }
    
    private String[] getLoginInfoTexts(TestRosterVO student){
        String[] result = new String[6];
        result[0] = LOGIN_ID_LABEL;
        result[1] = getLoginId(student);
        result[2] = PASSWORD_LABEL;
        result[3] = getPassword(student);
        result[4] = TEST_ACCESS_CODE_LABEL;
        result[5] = " ";
        return result;
    }
    private void addKeyboardShortcuts() throws DocumentException{
        addKeyboardShortcutsTitle();
        addKeyboardShortcutsText();
    }
    
    private void addKeyboardShortcutsTitle() throws DocumentException{
        this.staticTables.add( 
             tableUtils.getLabelTable(KEYBOARD_SHORTCUTS_LABEL,
                                      PAGE_WIDTH,
                                      LEFT_X,
                                      KEYBOARD_SHORTCUTS_Y));
    }
    
    private void addKeyboardShortcutsText() throws DocumentException{
        addKeyboardShortcutsText1();
        addKeyboardShortcutsText2();
        addKeyboardShortcutsText3();
    }
    
    private void addKeyboardShortcutsText1() throws DocumentException{
        this.staticTables.add( 
             tableUtils.getInfoTable(KEYBOARD_SHORTCUTS_TEXT_1,
                                     PAGE_WIDTH,
                                     LEFT_X,
                                     KEYBOARD_SHORTCUTS_TEXT_1_Y));
    }
    
    private void addKeyboardShortcutsText2() throws DocumentException{
        this.staticTables.add( 
             tableUtils.getInfoTable(KEYBOARD_SHORTCUTS_TEXT_2,
                                     PAGE_WIDTH,
                                     LEFT_X,
                                     KEYBOARD_SHORTCUTS_TEXT_2_Y));
      }
     
     private void addKeyboardShortcutsText3() throws DocumentException{
        this.staticTables.add( 
             tableUtils.getInfoTable(KEYBOARD_SHORTCUTS_TEXT_3,
                                     PAGE_WIDTH,
                                     LEFT_X,
                                     KEYBOARD_SHORTCUTS_TEXT_3_Y));
     }
     
     private TableVO getKeyboardShortcutsTable(TestRosterVO student) throws DocumentException{
        if(hasPauseAccommodation(student)){
            return this.pauseKeyboards;
        }
        else{
            return this.noPauseKeyboards;
        }
    }
    
     private void getKeyboardShortcutsTables() throws DocumentException{
        this.pauseKeyboards =  
             tableUtils.getHeaderBorderTable(getKeyboardShortcutsTexts(true),
                                             KEYBOARD_WIDTH,
                                             KEYBOARD_WIDTHS,
                                             KEYBOARD_X,
                                             KEYBOARD_SHORTCUTS_TABLE_Y,
                                             KEYBOARD_BORDER);
        this.noPauseKeyboards =  
             tableUtils.getHeaderBorderTable(getKeyboardShortcutsTexts(false),
                                             KEYBOARD_WIDTH,
                                             KEYBOARD_WIDTHS,
                                             KEYBOARD_X,
                                             KEYBOARD_SHORTCUTS_TABLE_Y,
                                             KEYBOARD_BORDER);
    }
    
    private String getStudentName(TestRosterVO student){
        StringBuffer buff = new StringBuffer();
        buff.append(student.getLastName());
        buff.append(", ");
        buff.append(student.getFirstName());
        String middleName = student.getMiddleName();
        if(middleName != null && middleName.length() > 0){
            buff.append(" ");
            buff.append(middleName);
        }
        return tableUtils.infoEllipsis(buff.toString(), INFO_VALUE_WIDTH - 20);
    }

    private boolean hasLocation(){
        String location = testAdmin.getLocation();
        return(location != null && 
               location.trim().length() > 0);
    }
    private String getLocation(){
        return tableUtils.infoEllipsis(getNonBlankString(testAdmin.getLocation()), INFO_VALUE_WIDTH - 20);
    }
     
     private String getStudentId(TestRosterVO student){
        return getNonBlankString(student.getStudentNumber());
    }

   private String getPassword(TestRosterVO student){
        return getNonBlankString(student.getPassword());
   }   
   private String getLoginId(TestRosterVO student){
        return getNonBlankString(student.getLoginName());
   }   
   private String getTestName(){
        return getNonBlankString(testAdmin.getTestName());
   }   
   private String[] getKeyboardShortcutsTexts(boolean pause){
        int totalCells = pause ? 18 : 16;
        String[] result = new String[totalCells];
        result[0] = DESCRIPTION_LABEL;
        result[1] = KEYBOARD_SHORTCUT_LABEL;
        result[2] = ENTER_ANSWSER_LABEL;
        result[3] = ENTER_ANSWER_SHORTCUT;
        result[4] = GO_BACK_LABEL;
        result[5] = GO_BACK_SHORTCUT;
        result[6] = GO_ON_LABEL;
        result[7] = GO_ON_SHORTCUT;
        result[8] = MARK_UNMARK_LABEL;
        result[9] = MARK_UNMARK_SHORTCUT;
        result[10] = SHOW_HIDE_LABEL;
        result[11] = SHOW_HIDE_SHORTCUT;
        result[12] = STOP_LABEL;
        result[13] = STOP_SHORTCUT;
        result[14] = FINISH_TEST_LABEL;
        result[15] = FINISH_TEST_SHORTCUT;
        if(pause){
            result[16] = PAUSE_LABEL;
            result[17] = PAUSE_SHORTCUT;
        }
        return result;
   }
   private boolean hasPauseAccommodation(TestRosterVO student){
        return student.getHasPause();
   }
} 
