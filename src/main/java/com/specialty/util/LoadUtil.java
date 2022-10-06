package com.specialty.util;

import org.apache.commons.io.FileUtils;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;
import java.util.UUID;

public class LoadUtil {
    private static String LOCALPATH="E:\\IDEA\\specialty\\src\\main\\webapp\\WEB-INF\\static\\img\\";
    public static String getPath(HttpServletRequest request, MultipartFile file){
        String path1 =  request.getSession().getServletContext().getRealPath("/WEB-INF/static/img/");
        String fileName = file.getOriginalFilename();
        String fileType = fileName.substring(fileName.lastIndexOf("."),fileName.length());
        UUID uuid = UUID.randomUUID();
        String newName = uuid.toString();
        newName = newName.replace("-","");
        newName = newName+fileType;
        String path = path1 + newName;
        File newFile = new File(path);
        try {
            FileUtils.copyInputStreamToFile(file.getInputStream(),new File(LOCALPATH+newName));
            file.transferTo(newFile);
        } catch (IOException e) {
            e.printStackTrace();
        }
        return newName;
    }
}
