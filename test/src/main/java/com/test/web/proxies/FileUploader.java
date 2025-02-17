package com.test.web.proxies;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Lazy;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.util.ArrayList;
import java.util.List;

@Service("uploader") @Lazy
public class FileUploader extends Proxy{
    @Autowired Inventory<String> inventory;


    public void upload(){
        inventory.clear();
        try{
            BufferedReader reader = new BufferedReader(new FileReader(new File("C:\\Users\\bit\\IdeaProjects\\lambda\\src\\main\\resources\\static\\files\\player.csv")));
            String player = "";
            while((player = reader.readLine()) != null){
                inventory.add(player);
            }
        }catch(Exception e){
            print("파일 리딩 에러");
            e.printStackTrace();
        }
        print("--------------------------------------\n");
        print(inventory.get().get(0).toString());
        String[] arr = inventory.get().get(0).toString().split(",");
        // "2000003","유동우","K10","YOU,  DONGWOO","","","DF","40","","07-MAR-1978","1","177","70"

    }
}
