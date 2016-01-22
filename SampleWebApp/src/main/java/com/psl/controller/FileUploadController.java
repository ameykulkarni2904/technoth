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
    
    
    
	@RequestMapping(value = { "/uploadDoc" }, method = RequestMethod.GET)
	public String uploadDoc() {

		return "UploadDoc";
	}

	@RequestMapping(value = "/uploadDoc", method = RequestMethod.POST)
    public @ResponseBody
    String uploadDocHandler(@RequestParam("name1") String name1, @RequestParam("name2") String name2,
            @RequestParam("file1") MultipartFile file1, @RequestParam("file2") MultipartFile file2) {
		
		if (!file1.isEmpty() && !file2.isEmpty()) {
			try {
				byte[] bytes1 = file1.getBytes();
				byte[] bytes2 = file2.getBytes();
				String rootPath = "C:\\";
				File dir = new File(rootPath + File.separator + "DocFiles");
				if(!dir.exists())
					dir.mkdirs();
				//File1
				File serverFile1 = new File(dir.getAbsolutePath()
						+ File.separator + name1);
				BufferedOutputStream stream1 = new BufferedOutputStream(
						new FileOutputStream(serverFile1));
				stream1.write(bytes1);
				stream1.close();
				
				//File2
				File serverFile2 = new File(dir.getAbsolutePath()
						+ File.separator + name2);
				BufferedOutputStream stream2 = new BufferedOutputStream(
						new FileOutputStream(serverFile2));
				stream2.write(bytes2);
				stream2.close();

				
				
				return "team";
				//return "You successfully uploaded file=" + name1 +" "+name2;
			} catch (Exception e) {
				e.printStackTrace();
				return "You failed to upload " + name1+" "+name2+" " + " => " + e.getMessage();
			}
		} else {
			return "You failed to upload " + name1+" "+name2+" "
					+ " because the file was empty.";
		}
				
	}
	

}