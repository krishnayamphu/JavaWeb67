package com.ky;

import com.ky.dao.TodoDao;
import com.ky.models.Todo;
import com.ky.utility.MediaFile;

import java.io.File;
import java.util.ArrayList;

public class TestApp {
    public static void main(String[] args) {
      ArrayList<String> files=MediaFile.getFiles("src/main/webapp/uploads");
        for(String f:files){
            System.out.println(f);
        }
    }
}
