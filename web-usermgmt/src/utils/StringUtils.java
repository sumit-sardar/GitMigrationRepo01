package utils; 

public class StringUtils 
{ 
    
    /**
     * Replace occurrences of a substring.
     *
     * StringHelper.replace("1-2-3", "-", "|");<br>
     * result: "1|2|3"<br>
     * StringHelper.replace("-1--2-", "-", "|");<br>
     * result: "|1||2|"<br>
     * StringHelper.replace("123", "", "|");<br>
     * result: "123"<br>
     * StringHelper.replace("1-2---3----4", "--", "|");<br>
     * result: "1-2|-3||4"<br>
     * StringHelper.replace("1-2---3----4", "--", "---");<br>
     * result: "1-2----3------4"<br>
     *
     * @param s String to be modified.
     * @param find String to find.
     * @param replace String to replace.
     * @return a string with all the occurrences of the string to find replaced.
     * @throws NullPointerException if s is null.
     *
     */
    public static String replace(String s, String find, String replace){
        int findLength;
        // the next statement has the side effect of throwing a null pointer
        // exception if s is null.
        int stringLength = s.length();
        if (find == null || (findLength = find.length()) == 0){
            // If there is nothing to find, we won't try and find it.
            return s;
        }
        if (replace == null){
            // a null string and an empty string are the same
            // for replacement purposes.
            replace = "";
        }
        int replaceLength = replace.length();

        // We need to figure out how long our resulting string will be.
        // This is required because without it, the possible resizing
        // and copying of memory structures could lead to an unacceptable runtime.
        // In the worst case it would have to be resized n times with each
        // resize having a O(n) copy leading to an O(n^2) algorithm.
        int length;
        if (findLength == replaceLength){
            // special case in which we don't need to count the replacements
            // because the count falls out of the length formula.
            length = stringLength;
        } else {
            int count;
            int start;
            int end;

            // Scan s and count the number of times we find our target.
            count = 0;
            start = 0;
            while((end = s.indexOf(find, start)) != -1){
                count++;
                start = end + findLength;
            }
            if (count == 0){
                // special case in which on first pass, we find there is nothing
                // to be replaced.  No need to do a second pass or create a string buffer.
                return s;
            }
            length = stringLength - (count * (findLength - replaceLength));
        }

        int start = 0;
        int end = s.indexOf(find, start);
        if (end == -1){
            // nothing was found in the string to replace.
            // we can get this if the find and replace strings
            // are the same length because we didn't check before.
            // in this case, we will return the original string
            return s;
        }
        // it looks like we actually have something to replace
        // *sigh* allocate memory for it.
        StringBuffer sb = new StringBuffer(length);

        // Scan s and do the replacements
        while (end != -1){
            sb.append(s.substring(start, end));
            sb.append(replace);
            start = end + findLength;
            end = s.indexOf(find, start);
        }
        end = stringLength;
        sb.append(s.substring(start, end));

        return (sb.toString());
    }

    /**
     * Split Phone Number and Fax Number
     */
    public static String[] splitPhoneNumberAndFaxNumber(String temp, boolean isPhone) {
        int length = temp.length();
        String[] splitString = {"","","",""}; 
        boolean isExtention = false; 
        int i = 0;
        while (temp.length() != 1){
             int len = temp.length();
             int contain = 0;
             if(temp.indexOf("x") > 0) {
                 contain = temp.indexOf("x");
                 isExtention = true;        
             }else if(temp.indexOf("-") > 0) {
                 contain = temp.indexOf("-");
             }else if(temp.indexOf(" ") > 0) {
                 contain = temp.indexOf(" ");
             }else if(temp.indexOf("(") >= 0){
                 contain = temp.indexOf("(");
             }
             
            if(isPhone) {
             if(!isExtention) {            
                splitString[i] = "";
                isExtention = true;
                i++;
             }
            }
             
             if ( contain > 0 ) {
                 splitString[i] = temp.substring(contain+1, len);
                 temp = temp.substring(0,len-splitString[i].length()-(1));
             } 
             if (contain == 0) {
                 splitString[i] = temp.substring(contain+1, len-1);
                 temp = temp.substring(0,len-splitString[i].length()-(1));
             }
            
            i++;
		 }
         return splitString;
    }

	/**
	 * upperCaseFirstLetter
	 */
	public static String upperCaseFirstLetter(String str) {
        if (str != null && !str.equals("")) {
            str = str.trim();
            if (str.length() <= 1) {
                str = str.toUpperCase();
            }
            else {
                String firstLetter = str.substring(0,1).toUpperCase();
                String otherLetters = str.substring(1);
                str = new StringBuffer().append(firstLetter).append(otherLetters).toString();
            }
        }
        return str;
	}
    
} 
