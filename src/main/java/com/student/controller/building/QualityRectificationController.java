package com.student.controller.building;

import com.student.controller.BaseController;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "/building/qualityRectification")
public class QualityRectificationController extends BaseController {
    private String prefix = "building/qualityRectification";

    @RequestMapping(value = "", method = RequestMethod.GET)
    public String rectification() {
        return prefix + "/qualityRectification";
    }
}
