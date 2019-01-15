package com.hwx.mpdemo.oneUtils;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.PropertySource;
import org.springframework.stereotype.Component;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/**
 * @author Eangaie
 * @date 2018/9/4 0004 上午 8:45
 */
@Component
@PropertySource({"classpath:application.properties"})
public class FileUtil {

    @Value("${URL_PATH}")
    String URL_PATH;
    @Value("${ROOT_PATH}")
    String ROOT_PATH;

    /**
     * 单文件上传
     *
     * @param path
     * @param file
     * @param fix
     * @return
     */
    public synchronized String singleUpload(String path, byte[] file, String fix) {
        File targetFile = new File(ROOT_PATH+path);
        if (!targetFile.exists()) {
            targetFile.mkdirs();
        }
        FileOutputStream out = null;
        String fileName=System.currentTimeMillis()+"";
        try {
            out = new FileOutputStream(ROOT_PATH+path + fileName + fix);
            out.write(file);
            out.flush();
            out.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
        return path + fileName + fix;
    }

    /**
     * 多文件上传接口
     * @param path 图片保存的地址
     * @param bytes 字节数组
     * @param fix 后缀名
     * @return 图片地址数组
     */
    public synchronized List<String> multipartUploads(String path,List<byte[]> bytes, String fix) {
        List<String> resultUrls=new ArrayList<>();
        BufferedOutputStream stream = null;
        String fileName="";
        FileOutputStream out = null;
        String pathTemp=ROOT_PATH+path;
        //创建文件夹
        File targetFile = new File(pathTemp);
        if (!targetFile.exists()) {
            targetFile.mkdirs();
        }
        //写入文件，并获取相应的url地址到动态数组
        for (int i = 0; i < bytes.size(); i++) {
            try {
                byte[] bytearr=bytes.get(i);
                fileName=System.currentTimeMillis()+"";
                out = new FileOutputStream(pathTemp + fileName + fix);
                out.write(bytearr);
                out.flush();
                out.close();
//                path = path.substring(ROOT_PATH.length());
//                path = URL_PATH + path;
                resultUrls.add(path + fileName + fix);
            } catch (Exception e) {
                stream = null;
                continue;
            }
        }
        return resultUrls;
    }


    /**
     * 文件删除
     * @param fileName
     * @return
     */
    public boolean delFile(String fileName) {
        File file = new File(fileName);
        if (file.exists() && file.isFile())
            file.delete();
        return true;
    }

    /**
     * 获取后缀
     * @param fileName
     * @return
     */
    public static String getFix(String fileName) {
        String fix;
        fix = fileName.substring(fileName.lastIndexOf("."));
        return fix;
    }

}
