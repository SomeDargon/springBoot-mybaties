package com.student.controller.building;

import com.student.controller.BaseController;
import com.student.service.ProductSecurityService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "/building/rectification")
public class RectificationController extends BaseController {
    private String prefix = "building/rectification";


    @Autowired
    private ProductSecurityService productSecurityService;

    @RequestMapping(value = "", method = RequestMethod.GET)
    public String rectification() {
        return prefix + "/rectification";
    }

}
