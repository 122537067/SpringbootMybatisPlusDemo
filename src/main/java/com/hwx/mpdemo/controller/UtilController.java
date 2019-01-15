package com.hwx.mpdemo.controller;


import com.hwx.mpdemo.entity.Result;
import com.hwx.mpdemo.oneUtils.FileUtil;
import com.hwx.mpdemo.oneUtils.ResultUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.PropertySource;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @author Eangaie
 * @date 2018/11/7 0007 下午 21:13
 */
@RestController
@RequestMapping("/util")
@PropertySource({"classpath:application.properties"})
public class UtilController {

    @Autowired
    FileUtil fileUtil;
    Map<String, Object> res;
    @Value("${URL_PATH}")
    private String URL_PATH;
    @Value("${ROOT_PATH}")
    private String ROOT_PATH;

    /**
     * 多图片上传
     * @param request
     * @return
     */
    @PostMapping("multipartUploads")
    public Result multipartUploads(MultipartHttpServletRequest request){
        String path = request.getParameter("path");
        String fix = ".jpg";
        List<byte[]> bytes = new ArrayList<>();
        List<MultipartFile> files = ((MultipartHttpServletRequest) request).getFiles("file");
        MultipartFile file = null;
        for (int i = 0; i < files.size(); i++) {
            try {
                byte[] byteArr = files.get(i).getBytes();
                bytes.add(byteArr);
            } catch (IOException e) {
                e.printStackTrace();
            }

        }
        List<String> imgurls = fileUtil.multipartUploads(path, bytes, fix);
        res = new HashMap<>();
        res.put("urls", imgurls);
        return ResultUtil.success(res, "上传成功");
    }

    /**
     * 删除多个文件，用英文逗号分割
     * @param urls
     * @return
     */
    @GetMapping("deleteFiles")
    public Result deleteFiles(String urls){
        String[] urlArr=urls.split(",");
        for(String url:urlArr){
            url=ROOT_PATH+url;
            fileUtil.delFile(url);
        }
        return ResultUtil.success();
    }
}
