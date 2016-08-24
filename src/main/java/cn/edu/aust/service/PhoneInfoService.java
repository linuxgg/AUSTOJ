package cn.edu.aust.service;

import cn.edu.aust.dao.PhoneDao;
import cn.edu.aust.entity.HttpResult;
import cn.edu.aust.entity.Phone;
import cn.edu.aust.util.PageUtil;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * 用户部分策略类
 */
@Service("phoneInfoService")
public class PhoneInfoService {

    private Logger logger = Logger.getLogger(PhoneInfoService.class);
    @Resource(name = "phoneDao")
    private PhoneDao phoneDao;

    /**
     * 得到用户排名展示信息
     *
     * @param pageUtil
     * @return
     */
    public List<Phone> showallphonedetails(PageUtil pageUtil) {
        return phoneDao.showallphonedetails(pageUtil);
    }

    /**
     * 得到用户排名展示信息
     *
     * @param pageUtil
     * @return
     */
    public List<Phone> showallphonesummary(PageUtil pageUtil) {
        logger.debug("--------service-----------  " + pageUtil.toString());
        return phoneDao.showallphonesummary(pageUtil);
    }

    /**
     * @param phone
     * @return
     */
    public HttpResult addPhones(Phone phone) throws Exception {
        return phoneDao.addPhones(phone);
    }

}
