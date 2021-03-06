package com.student.controller.building;

import com.student.annotation.Log;
import com.student.constant.BusinessType;
import com.student.controller.BaseController;
import com.student.entity.Stock;
import com.student.entity.page.TableDataInfo;
import com.student.service.StockService;
import com.student.web.result.AjaxResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;


/**
 * 库存管理
 *
 */
@Controller
@RequestMapping("/building/stock")
public class StockController extends BaseController {

    private static final String prefix = "/building/stock";

    @Autowired
    private StockService stockService;

    @RequestMapping(value = "", method = RequestMethod.GET)
    public String stock() {
        return prefix + "/stock";
    }

    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(Stock stock) {
        startPage();
        List<Stock> list = stockService.selectStockList(stock);
        return getDataTable(list);
    }


    @Log(title = "库存管理", action = BusinessType.UPDATE)
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, Model model) {
        Stock stock = stockService.selectStockById(id);
        model.addAttribute("stock", stock);
        return prefix + "/edit";
    }


    @Log(title = "添加库存", action = BusinessType.INSERT)
    @GetMapping("/add")
    public String add() {
        return prefix + "/add";
    }


    @Log(title = "库存保存", action = BusinessType.SAVE)
    @PostMapping("/save")
    @Transactional(rollbackFor = Exception.class)
    @ResponseBody
    public AjaxResult save(Stock Stock) {
        return stockService.insertStock(Stock)==1?success():error();
    }


    @Log(title = "库存删除", action = BusinessType.DELETE)
    @PostMapping("/remove")
    @ResponseBody
    public AjaxResult remove(String ids) {
        try {
            stockService.deleteStockByIds(ids);
            return success();
        } catch (Exception e) {
            return error(e.getMessage());
        }
    }

}
