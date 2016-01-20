package com.psl.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.psl.model.Participant;
import com.psl.service.SampleExcelReader;
import com.psl.dao.HibernateUtil;


@Controller
@RequestMapping(value="/file")
public class FileUploadController {

    /*private static final Logger logger = LoggerFactory
            .getLogger(FileUploadController.class);*/

    @RequestMapping(value={"/fi"}, method=RequestMethod.GET)
    public String uploadPage(){
       
        return "upload";       
    }
   
    @RequestMapping(value = "/uploadFile", method = RequestMethod.POST)
    public @ResponseBody
    String uploadFileHandler(@RequestParam("name") String name,
            @RequestParam("file") MultipartFile file) {

        if (!file.isEmpty()) {
            try {
                byte[] bytes = file.getBytes();

                // Creating the directory to store file
                String rootPath = "C:\\";//System.getProperty("catalina.home");
                File dir = new File(rootPath + File.separator + "tmpFiles");
              //  if (!dir.exists())
                    dir.mkdirs();
//name = "info.xls"
                // Create the file on server
                File serverFile = new File(dir.getAbsolutePath()
                        + File.separator + name);
                BufferedOutputStream stream = new BufferedOutputStream(
                        new FileOutputStream(serverFile));
                stream.write(bytes);
                stream.close();
               
                
                SampleExcelReader saxreader=new SampleExcelReader();
                System.out.println("absolute path "+serverFile.getAbsolutePath());
                List<Participant> list=saxreader.readExcel(serverFile.getAbsolutePath());
                
                SessionFactory sessionfactory=HibernateUtil.getFactory();
                for (Participant participant : list) {
                	Session session=sessionfactory.openSession();
                    
                    Transaction transaction= session.beginTransaction();
            		
            		session.save(participant);
            		
            		session.flush();
            		
            		transaction.commit();
            		
            		session.close();
				}
                
                
               /* logger.info("Server File Location="
                        + serverFile.getAbsolutePath());*/

                return "You successfully uploaded file=" + name;
            } catch (Exception e) {
            	e.printStackTrace();
                return "You failed to upload " + name + " => " + e.getMessage();
            }
        } else {
            return "You failed to upload " + name
                    + " because the file was empty.";
        }
    }

}