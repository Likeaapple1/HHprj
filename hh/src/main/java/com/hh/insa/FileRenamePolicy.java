package com.hh.insa;

public class FileRenamePolicy {

	public static String rename(String originalFileName) {
  	  String result = "";
  	 
        String uniqueFileName = java.util.UUID.randomUUID().toString();
        
        int dot = originalFileName.lastIndexOf(".");
        String ext = originalFileName.substring(dot);
        result = uniqueFileName + ext;
        
        return result;
   }
}
