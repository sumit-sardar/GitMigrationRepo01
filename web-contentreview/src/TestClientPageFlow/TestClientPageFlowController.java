package TestClientPageFlow;
import org.apache.beehive.netui.pageflow.Forward;
import org.apache.beehive.netui.pageflow.PageFlowController;
import com.ctb.bean.content.DeliverableUnitBean;
import com.ctb.bean.content.ItemBean;
import com.ctb.util.web.sanitizer.JavaScriptSanitizer;
import global.Global;
import java.io.BufferedInputStream;
import java.io.ByteArrayInputStream;
import java.io.DataInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.apache.beehive.netui.pageflow.annotations.Jpf;
import org.jdom.Element;

/**
 * @jpf:controller
 *  */
@Jpf.Controller()
public class TestClientPageFlowController extends PageFlowController
{

    public static final String OK = "<OK />";
    public static final String ERROR = "<ERROR />";
    public static boolean forReal = true;
    // Uncomment this declaration to access Global.app.
    // 
    protected global.Global globalApp;
    // 
    // For an example of page flow exception handling see the example "catch" and "exception-handler"
    // annotations in {project}/WEB-INF/src/global/Global.app

    /**
     * This method represents the point of entry into the pageflow
     * @jpf:action
     * @jpf:forward name="success" path="preview.jsp"
     */
    @Jpf.Action(forwards = { 
        @Jpf.Forward(name = "success",
                     path = "preview.jsp")
    })
    protected Forward begin()
    {
        return new Forward("success");
    }
  
    /**
     * write xml content to response 
     * 
     */
    public void writeResponse(String xml) throws IOException
    {
        HttpServletResponse response = this.getResponse();
        response.setContentType("text/xml");
        PrintWriter out = response.getWriter();
        out.println(xml);            
        out.flush();
        out.close();        
    }


    /**
     * login xml
     * 
     */
    public String getLoginXML() 
    {
        
        String questionBgColor = globalApp.questionBgColor != null ? globalApp.questionBgColor : "";
        String questionFgColor = globalApp.questionFgColor != null ? globalApp.questionFgColor : "";
        String answerBgColor = globalApp.answerBgColor != null ? globalApp.answerBgColor : "0xFFFFB0";
        String answerFgColor = globalApp.answerFgColor != null ? globalApp.answerFgColor : "";
        String questionFontSize = globalApp.questionFontSize != null ? globalApp.questionFontSize : "1.0";
        String answerFontSize = globalApp.answerFontSize != null ? globalApp.answerFontSize : "1.0";    
        
            
        String timeLimit = globalApp.currentDeliverableUnitBean.getTimeLimit();
        if (timeLimit == null)
            timeLimit = "0";
		String speedValue = "";
        if (!globalApp.screenReader.equals("false") && !globalApp.speedAdjustment.equals("false"))
        {
            speedValue = " tts_speed_value=\"M\"";
        }
            
        String loginXML = "<tmssvc_response method=\"login_response\"><login_response restart_number=\"0\" restart_flag=\"false\" lsid=\"1:swirl50346\"" +
                          speedValue +
                          "><status status_code=\"200\"/>" +

                          "<testing_session_data><cmi.core student_first_name=\"" +
                          globalApp.studentFirstName +
                          "\" student_last_name=\"" +
                          globalApp.studentLastName +
                          "\" student_middle_name=\"\" student_id=\"12345\" />" +
                          "<lms.student.accommodations calculator=\"" +
                          globalApp.calculator + 
                          "\" screen_reader=\"" +
                          globalApp.screenReader +
                          "\" untimed=\"" +
                          globalApp.untimed +
                          "\" highlighter=\"" +
                          globalApp.highlighter +
                          "\" rest_break=\"" +
                          globalApp.rest_break + 
                          "\"><stereotype_style stereotype=\"directions\" bgcolor=\"" +
                          questionBgColor +
                          "\" font_color=\"" +
                          questionFgColor +
                          "\" font_magnification=\"" +
                          questionFontSize +
                          "\"/><stereotype_style stereotype=\"stimulus\" bgcolor=\"" +
                          questionBgColor +
                          "\" font_color=\"" +
                          questionFgColor +
                          "\" font_magnification=\"" +
                          questionFontSize +
                          "\"/><stereotype_style stereotype=\"stem\" bgcolor=\"" +
                          questionBgColor +
                          "\" font_color=\"" +
                          questionFgColor +
                          "\" font_magnification=\"" +
                          questionFontSize +
                          "\"/><stereotype_style stereotype=\"answerArea\" bgcolor=\"" +
                          answerBgColor +
                          "\" font_color=\"" +
                          answerFgColor +
                          "\" font_magnification=\"" +
                          answerFontSize +
                          "\"/></lms.student.accommodations></testing_session_data>" +
                          "<manifest title=\"" +
                          globalApp.currentDeliverableUnitBean.getTitle().replaceAll( "& ", "&amp; " ) +
                          "\">" +
                          "<sco cmi.core.total_time=\"0:0:0\" adsid=\"10\" item_encryption_key=\"n7673nBJ2n27bB4oAfme7Ugl5VV42g8\" asmt_encryption_key=\"1\" asmt_hash=\"1003A05C5AFDD27F24A5F05B627C52E9\"" +
                          " title=\"" +
                          globalApp.currentDeliverableUnitBean.getTitle().replaceAll( "& ", "&amp; " ) + 
                          "\" sco_unit_type=\"SUBTEST\" sco_unit_question_number_offset=\"0\" sco_duration_minutes=\"" +
                          timeLimit +
                          "\" id=\"24105\" cmi.core.entry=\"ab-initio\" force_logout=\"false\" />" + 
                          "<terminator id=\"SEE_YOU_LATER\" /> </manifest> </login_response> </tmssvc_response>";
         
        return loginXML;
    
    }
   
    /**
     * @jpf:action
     * @jpf:forward path="/error.jsp" name="error"
      */
    @Jpf.Action(forwards = { 
        @Jpf.Forward(path = "/error.jsp",
                     name = "error")
    })
    protected Forward PersistenceServlet()
    {
        String result = this.OK; 
        String method = getRequest().getParameter("method");
        String inxml = getRequest().getParameter("requestXML");
        
        if (method.equals("login"))
            result = getLoginXML(); 
        else if (method.equals("save") || method.equals("feedback") || method.equals("uploadAuditFile") || method.equals("writeToAuditFile"))
            result = this.OK; 
       else
            result = this.ERROR;  
              
        try{
            // return response to client
            this.writeResponse(result);
        }
        catch(IOException e) 
       {
                StackTraceElement [] trace = e.getStackTrace();
                StringBuffer sb = new StringBuffer();
                sb.append("\n" + e.getMessage() + "\n");
                for( int i = 0; i < trace.length; i++ ) 
                {
                    sb.append( trace[i].getClassName() + "." + trace[i].getMethodName() + "()  " + trace[i].getFileName() + " line " + trace[i].getLineNumber() + "\n");
                }
                getRequest().setAttribute( "errorMessage", JavaScriptSanitizer.sanitizeString(sb.toString()) );
                return new Forward("error");
        }
        return null; 
    }
    
     /**
     * @jpf:action
     * @jpf:forward path="/error.jsp" name="error"
     * @jpf:forward path="subtest.jsp" name="subtest"
     * @jpf:forward path="item.jsp" name="item"
     */
	@Jpf.Action(
		forwards = { 
			@Jpf.Forward(path = "/error.jsp", name = "error"), 
			@Jpf.Forward(path = "subtest.jsp", name = "subtest"), 
			@Jpf.Forward(path = "item.jsp", name = "item")
		}
	)
    protected Forward ContentServlet()
    {
       String result = this.OK; 
       String method = getRequest().getParameter("method");
       String inxml = getRequest().getParameter("requestXML");
    try{
        
       if (method.equals("downloadItem"))
            result = this.OK; 
       else if (method.equals("getSubtest"))
           { getSubtestXML(); 
            return new Forward("subtest"); }     
       else if (method.equals("getItem"))
            { getClientItemXML(inxml); 
            return new Forward("item");  }    
       else if (method.equals("getImage")) 
             return getImage(inxml);
       else if (method.equals("getLocalResource")) 
             return getLocalResource();
       else
            result = this.ERROR;  
       
            // return response to client
            this.writeResponse(result);
        }
        catch(Exception e) 
       {
                StackTraceElement [] trace = e.getStackTrace();
                StringBuffer sb = new StringBuffer();
                sb.append("\n" + e.getMessage() + "\n");
                for( int i = 0; i < trace.length; i++ ) 
                {
                    sb.append( trace[i].getClassName() + "." + trace[i].getMethodName() + "()  " + trace[i].getFileName() + " line " + trace[i].getLineNumber() + "\n");
                }
                getRequest().setAttribute( "errorMessage", JavaScriptSanitizer.sanitizeString(sb.toString()) );
                return new Forward("error");
        }
        return null; 
    }


    /**
     * Subtest XML
     */
    protected void getSubtestXML()
    {
        
        
        getRequest().setAttribute("title", globalApp.currentDeliverableUnitBean.getTitle().replaceAll( "& ", "&amp; " ));
        getRequest().setAttribute("startingQuestionNumber", globalApp.currentDeliverableUnitBean.getStartingQuestionNumber());
        getRequest().setAttribute("itemReferences", globalApp.currentDeliverableUnitBean.getItemReferences());
        getRequest().setAttribute("orderReferences", globalApp.currentDeliverableUnitBean.getOrderReferences() );
      
    }


    /**
     * Item XML
     */
    protected void getClientItemXML(String inxml) throws Exception
    {
       
       org.jdom.input.SAXBuilder saxBuilder = new org.jdom.input.SAXBuilder();
       ByteArrayInputStream bais = new ByteArrayInputStream( inxml.toString().getBytes());
       org.jdom.Document requestDoc = saxBuilder.build( bais );
       
       Element requestElement = requestDoc.getRootElement();
       Element itemElement = requestElement.getChild("get_item");
            
       String itemId = itemElement.getAttributeValue("itemid");
       // For Lesser than symbol issue
       String itemLML  = null;
       
       
        int index;
        //try
        {
            index = Integer.parseInt( itemId );
            if ( index > globalApp.currentDeliverableUnitBean.getItems().length )
                index = 1;
            if ( index < 1 )
                index = 1;
        }
                
        ItemBean item = globalApp.currentDeliverableUnitBean.getItems()[ index - 1 ];
        
		// For Lesser than symbol issue
		//Start
        itemLML = item.getLml();
        
        itemLML = itemLML.replaceAll("&#x003C", "&LT;");
        itemLML = itemLML.replaceAll("&lt;", "&LT;");
        item.setLml(itemLML);
       // System.out.println("itemLML**********" + itemLML);
        //End
        
        getRequest().setAttribute("item", item.getLml());
        
    }
    
    protected Forward getLocalResource() throws IOException {
    	String filename = getRequest().getParameter("resourcePath");
    	
        Forward result = null;

    	try {
    		
    		if (filename == null || "".equals(filename.trim())) 
    			throw new Exception("No filename in request.");
    	//	String resourcePath = getSession().getServletContext().getRealPath("resources");    //removed -because not working for .ear files
    		String resourcePath = getUserImageFolderPath();
    		String filePath = resourcePath + "/" + filename;
            
            System.out.println("Loading resource: " + filePath);
		
    		FileInputStream fstream = new FileInputStream(filePath);
    		DataInputStream in = new DataInputStream(fstream);

    		ServletOutputStream myOutput = getResponse().getOutputStream();
    		byte[] data = new byte[4096];
    		int cnt = 0;
    		int size = 0;
    		int index= filename.lastIndexOf(".");
    		String ext = filename.substring(index+1);
    		AssetInfo assetInfo = new AssetInfo();
    		assetInfo.setExt(ext);
    		String mimeType = assetInfo.getMIMEType();
    		getResponse().setContentType(mimeType);

    		while ((cnt = in.read(data, 0, 4096)) == 4096) {
    			size += cnt;
    			myOutput.write( data );
    		}
    		size += cnt;
    		size = ((size / 4096) + 1) * 4096;
    		getResponse().setContentLength( size );
    		myOutput.write( data );
    		in.close();	 
    		myOutput.flush();
    		myOutput.close();	

	        result = new Forward("success");
        } catch (Exception e) {
            StackTraceElement [] trace = e.getStackTrace();
            StringBuffer sb = new StringBuffer();
            sb.append("\n" + e.getMessage() + "\n");
            for( int i = 0; i < trace.length; i++ ) 
            {
                sb.append( trace[i].getClassName() + "." + trace[i].getMethodName() + "()  " + trace[i].getFileName() + " line " + trace[i].getLineNumber() + "\n");
            }
            getRequest().setAttribute( "errorMessage", sb.toString() );
            result = new Forward("error");
        }
        return result;
   }
   
   public class AssetInfo 
    {
        public byte[] data;
        public String mimeType;
        
        public AssetInfo()
        {
            super();
        }
        
        public void setExt( String ext )
        {
            mimeType = "image/gif";
            if ( "swf".equals( ext ))
                mimeType = "application/x-shockwave-flash";
            if ( "gif".equals( ext ))
                mimeType = "image/gif";
            if ( "jpg".equals( ext ))
                mimeType = "image/jpg";
        }
        
        public void setData( byte[] data_ )
        {
            data = data_;
        }
        
        public String getMIMEType()
        {
            return mimeType;
        }
        
        public byte[] getData()
        {
            return data;
        }
    
    }

    /**
     * 
     */
    protected Forward getImage(String inxml)
    {
        Forward result = null;
        try
        {
            /*String file = getRequest().getParameter("file");
            if ( file.lastIndexOf( "/" ) >= 0 )
                file = file.substring( file.lastIndexOf( "/" ) + 1 );
            String ext = file.substring( file.lastIndexOf( "." ) + 1 ).toLowerCase();
            String imageFolder = getUserImageFolderPath();
            file = imageFolder + "/" + file;*/
            
            org.jdom.input.SAXBuilder saxBuilder = new org.jdom.input.SAXBuilder();
            ByteArrayInputStream bais = new ByteArrayInputStream( inxml.toString().getBytes());
            org.jdom.Document requestDoc = saxBuilder.build( bais );
       
            Element requestElement = requestDoc.getRootElement();
            Element imageElement = requestElement.getChild("get_image");
            
            String imageId = imageElement.getAttributeValue("imageid");
            String imageFolder = getUserImageFolderPath();
            imageId = imageFolder + "/" + imageId;
            String ext = imageId.substring( imageId.lastIndexOf( "." ) + 1 ).toLowerCase();
            
            String mimeType = null;
            if ( "swf".equals( ext ) )
                mimeType = "application/x-shockwave-flash";
            else if ( "gif".equals( ext ) )
                mimeType = "image/gif";
            else // let it die if not jpg
                mimeType = "image/jpg";
            getRequest().setAttribute( "imageType", mimeType );
            File imgFile = new File( imageId );
            BufferedInputStream bis = new BufferedInputStream( new FileInputStream( imgFile ) );
            int size = bis.available();
            byte[] data = new byte[ size ];
            bis.read( data );
            bis.close();
            getResponse().setContentType( mimeType );
            getResponse().setContentLength( size );
            ServletOutputStream myOutput = getResponse().getOutputStream();
            myOutput.write( data );
            myOutput.flush();
            myOutput.close();
            result = null;
        }
        catch (Exception e) 
        {
            StackTraceElement [] trace = e.getStackTrace();
            StringBuffer sb = new StringBuffer();
            sb.append("\n" + e.getMessage() + "\n");
            for( int i = 0; i < trace.length; i++ ) 
            {
                sb.append( trace[i].getClassName() + "." + trace[i].getMethodName() + "()  " + trace[i].getFileName() + " line " + trace[i].getLineNumber() + "\n");
            }
            getRequest().setAttribute( "errorMessage", JavaScriptSanitizer.sanitizeString(sb.toString()) );
            result = new Forward("error");
        }
        return result;
    }
      public String getUserFolderPath() throws Exception
    {
        String userFolderPath = null;
        if ( forReal )
            userFolderPath = "/export/data/contentdemo/" + globalApp.userFolder;
        else
            userFolderPath = "c:/contentdemo/" + globalApp.userFolder;
        return userFolderPath;
    }
    
    public String getUserImageFolderPath() throws Exception
    {
        String userFolderPath = null;
        if ( forReal )
            userFolderPath = "/export/data/contentdemo/images";
        else
            userFolderPath = "c:/contentdemo/images";
        return userFolderPath;
    }
    
}
