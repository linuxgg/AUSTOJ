package cn.edu.aust.service;

import cn.edu.aust.dao.PhoneDetailDao;
import cn.edu.aust.entity.PhoneDetail;
import cn.edu.aust.entity.Problem;
import cn.edu.aust.entity.User;
import cn.edu.aust.util.PageUtil;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
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

//    public List<User> showallphonedetailsP(PageUtil pageUtil) {
//        logger.debug("start in PhoneDetailService showallphonedetails");
////        return phonedetailDao.showallphonedetails(pageUtil);
//        return phonedetailDao.findUserRank(pageUtil);
//    }


}
