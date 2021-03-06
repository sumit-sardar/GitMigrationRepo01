package dto; 

public class Message implements java.io.Serializable 
{ 
    static final long serialVersionUID = 1L;
    
    private String title = null;
    private String content = null;
    private String type = null;

    public static final String ERROR          = "errorMessage";
    public static final String INFORMATION    = "informationMessage";
    public static final String ALERT          = "alertMessage";

    public static final String REQUIRED_TEXT            = "Please enter/select this value to continue.";
    public static final String REQUIRED_TEXT_MULTIPLE   = "Please enter/select these values to continue.";
    public static final String INVALID_CHARS  = "Please re-enter your string without these characters: !, @, #, $, %, ^";
    public static final String INVALID_NUMBER_CHARS  = "Please re-enter your string with these characters: A-Z, a-z, 0-9, space";
    public static final String INVALID_NAME_CHARS  = "Please re-enter your string with these characters: A-Z, a-z, 0-9, /, \\, -, ', (, ), &, +, comma, period, space";
    public static final String INVALID_DATE  = "Please re-select valid month, day, and year.";

    public static final String ADD_TITLE      = "Add Student";
    public static final String ADD_SUCCESSFUL = "Student has been successfully added into your organization.";
    public static final String ADD_ERROR = "Failed to create this student.";

    public static final String EDIT_TITLE      = "Edit Student";
    public static final String EDIT_SUCCESSFUL    = "Student information has been updated successfully.";
    public static final String EDIT_ERROR = "Failed to update this student.";

    public static final String DELETE_TITLE      = "Delete Student";
    public static final String DELETE_SUCCESSFUL = "Student has been deleted successfully.";
    public static final String DELETE_ERROR_TAS = "You cannot delete this student. Student is associated with test administrations.";
    public static final String DELETE_ERROR_UNKNOWN = "Failed to delete this student.";

    public Message()
    {
        this.title = "";
        this.content = "";
        this.type = null;
    }
    public Message(String title, String content, String type)
    {
        this.title = title;
        this.content = content;
        this.type = type;
    }
       
    public String getTitle() {
        return this.title;
    }
    
    public void setTitle(String title) {
        this.title = title;
    }
       
    public String getContent() {
        return this.content;
    }
    
    public void setContent(String content) {
        this.content = content;
    }

    public String getType() {
        return this.type;
    }
    
    public void setType(String type) {
        this.type = type;
    }

    /**
     * getRequiredErrorMsg
     */
    public static String getRequiredErrorMsg(String str)
    {
        return str + " is required.";
    }

    /**
     * getInvalidCharErrorMsg
     */
    public static String getInvalidCharErrorMsg(String str)
    {
        return str + " contains invalid characters.";
    }

    /**
     * buildErrorString
     */
    public static String buildErrorString(String field, int count, String str)
    {
        String result = str;
        if (count == 1) {
            result += field;
        }
        else {
            result += (", " + field);            
        }        
        return result;
    }
        
} 
