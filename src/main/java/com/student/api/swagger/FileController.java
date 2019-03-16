package com.student.api.swagger;

import com.student.controller.BaseController;
import com.student.util.FileUploadUtils;
import com.student.web.result.AjaxResult;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;


@Controller
@Api(value = "文件上传", description = "文件上传")
@RequestMapping("/system/profile")
public class FileController  extends BaseController {
    private static final Logger log = LoggerFactory.getLogger(FileController.class);
    /**
     * 保存头像
     */
    @ApiOperation(value = "上传图片", notes = "需要file返回的是地址")
    @RequestMapping(value = "/uploadImg",method = RequestMethod.POST)
    public AjaxResult updateAvatar(@RequestParam("file") MultipartFile file) {
        try {
            if (!file.isEmpty()) {
                String avatar = FileUploadUtils.upload(file);
                return success(avatar);
            }
            return error();
        } catch (Exception e) {
            log.error("updateAvatar failed!", e);
            return error(e.getMessage());
        }
    }
}
