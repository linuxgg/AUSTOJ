package cn.edu.aust.service;

import cn.edu.aust.dao.PhoneDetailDao;
import cn.edu.aust.entity.HttpResult;
import cn.edu.aust.entity.PhoneDetail;
import cn.edu.aust.entity.Problem;
import cn.edu.aust.entity.User;
import cn.edu.aust.util.PageUtil;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * 用户部分策略类
 */
@Service("phoneDetailService")
public class PhoneDetailService {

    private Logger logger = Logger.getLogger(PhoneDetailService.class);
    @Resource(name = "phoneDetailDao")
    private PhoneDetailDao phonedetailDao;

    /**
     * 得到用户排名展示信息
     *
     * @param pageUtil
     * @return
     */
    public List<PhoneDetail> showallphonedetails(PageUtil pageUtil) {
        return phonedetailDao.showallphonedetails(pageUtil);
    }

    /**
     * @param phoneDetail
     * @return
     */
    public HttpResult addPhones(PhoneDetail phoneDetail) throws Exception {
        return phonedetailDao.addPhones(phoneDetail);
    }

}
