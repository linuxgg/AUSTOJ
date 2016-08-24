package cn.edu.aust.controller;

import cn.edu.aust.entity.Phone;
import cn.edu.aust.service.PhoneInfoService;
import cn.edu.aust.util.PageUtil;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * 具体和用户的控制器
 */
@Controller
@RequestMapping(value = "/phone")
public class PhoneInfoController {

    private Logger logger = Logger.getLogger(PhoneInfoController.class);

    @Resource(name = "phoneInfoService")
    private PhoneInfoService phoneInfoService;

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
        Map<String, Object> maps = new HashMap<>();
        PageHelper.startPage(pageUtil.getOffset() / pageUtil.getLimit() + 1, pageUtil.getLimit());
        List<Phone> lists = phoneInfoService.showallphonedetails(pageUtil);
        PageInfo<Phone> info = new PageInfo<>(lists);
        maps.put("total", info.getTotal());
        maps.put("rows", lists);
        return maps;
    }

    /**
     * 查询出用户排名
     *
     * @param pageUtil
     * @return
     */
    @RequestMapping(value = "/phonesummary", method = RequestMethod.POST)
    public
    @ResponseBody
    Map<String, Object> showallphonesummary(@RequestBody PageUtil pageUtil) throws Exception {
        logger.debug("--------controller-----------  " + pageUtil.toString());
        Map<String, Object> maps = new HashMap<>();
        PageHelper.startPage(pageUtil.getOffset() / pageUtil.getLimit() + 1, pageUtil.getLimit());
        List<Phone> lists = phoneInfoService.showallphonesummary(pageUtil);
        PageInfo<Phone> info = new PageInfo<>(lists);
        maps.put("total", info.getTotal());
        maps.put("rows", lists);
        return maps;
    }

    @RequestMapping(value = "/addPhones", method = RequestMethod.POST, consumes = "application/json", produces = "application/json")
//    @RequestMapping(value = "/addPhones", method = RequestMethod.POST)
    public
    @ResponseBody
    Object addPhones(@RequestBody Phone phone) throws Exception {
        return phoneInfoService.addPhones(phone);
    }


}
