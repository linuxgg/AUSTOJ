package cn.edu.aust.controller;

import cn.edu.aust.entity.PhoneDetail;
import cn.edu.aust.entity.Problem;
import cn.edu.aust.entity.User;
import cn.edu.aust.service.PhoneDetailService;
import cn.edu.aust.util.PageUtil;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * 具体和用户的控制器
 */
@Controller
@RequestMapping(value = "/phone")
public class PhoneDetailController {

    private Logger logger = Logger.getLogger(PhoneDetailController.class);

    @Resource(name = "phoneDetailService")
    private PhoneDetailService phoneDetailService;

    /**
     * 查询出用户排名
     *
     * @param pageUtil
     * @return
     */
    @RequestMapping(value = "/phonedetails", method = RequestMethod.POST)
    public
    @ResponseBody
    Map<String, Object> showallphonedetailsP(@RequestBody PageUtil pageUtil) throws Exception {
        logger.debug("start in PhoneDetailController showallphonedetails");
        Map<String, Object> maps = new HashMap<>();
        PageHelper.startPage(pageUtil.getOffset() / pageUtil.getLimit() + 1, pageUtil.getLimit());
        List<PhoneDetail> lists = phoneDetailService.showallphonedetails(pageUtil);
        PageInfo<PhoneDetail> info = new PageInfo<>(lists);
        maps.put("total", info.getTotal());
        maps.put("rows", lists);
        return maps;
    }

    @RequestMapping(value = "/addPhones", method = RequestMethod.POST, consumes = "application/json")
    public
    @ResponseBody
    String addPhones(@RequestBody PhoneDetail phoneDetail) throws Exception {
        logger.debug("start in PhoneDetailController showallphonedetails");
        return "adfasdfasdfad";
//        return phoneDetailService.addPhones(phoneDetail);
    }


}
