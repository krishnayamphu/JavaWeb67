package com.ky.utility;

import java.io.File;
import java.util.ArrayList;
public class MediaFile {
    public static ArrayList<String> getFiles(String rootPath){
        ArrayList<String> files=new ArrayList<>();
        File file=new File(rootPath);
        File[] allfiles=file.listFiles();
        for(File f:allfiles){
            files.add(f.getName());
        }
        return files;
    }
}
