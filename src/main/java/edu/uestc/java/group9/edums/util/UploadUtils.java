package edu.uestc.java.group9.edums.util;

import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;
import java.util.UUID;

public class UploadUtils {

    /**
     * 将 MultipartFile 保存到本地并返回路径
     *
     * @param uploadPath 上传路径
     * @param file       上传的文件
     * @param request    HttpServletRequest 用于获取虚拟路径
     */
    public static String uploadFile(String uploadPath, MultipartFile file, HttpServletRequest request) throws Exception {
        if (file == null) {
            throw new Exception("文件不能为空");
        }

        String[] split = file.getOriginalFilename().split("\\.");
        String suffix = split.length > 1 ? split[1] : "jpg"; // 后缀名
        String realName = UUID.randomUUID().toString() + "." + suffix;
        String realPath = request.getServletContext().getRealPath(uploadPath);

        try {
            file.transferTo(new File(realPath + File.separator + realName));
            System.out.println("上传图片至: " + realPath + File.separator + realName);
        } catch (IOException e) {
            e.printStackTrace();
        }

        return realName;
    }

}
