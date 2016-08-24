package cn.edu.aust.dao;

import cn.edu.aust.entity.HttpResult;
import cn.edu.aust.entity.Phone;
import cn.edu.aust.util.PageUtil;
import org.apache.log4j.Logger;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import javax.annotation.Resource;
import java.util.List;

/**
 * 用户和数据库交互的DAO
 */
@Repository("phoneDao")
public class PhoneDao {
    @Resource(name = "sqlSessionTemplate")
    private SqlSessionTemplate sqlSessionTemplate;
    private Logger logger = Logger.getLogger(PhoneDao.class);

    /**
     * 得到用户排名展示信息
     *
     * @param pageUtil
     * @return
     */
    public List<Phone> showallphonedetails(PageUtil pageUtil) {
        return sqlSessionTemplate.selectList("phoneinfoMapper.showallphonedetails", pageUtil);
    }

    /**
     * 得到用户排名展示信息
     *
     * @param pageUtil
     * @return
     */
    public List<Phone> showallphonesummary(PageUtil pageUtil) {
        return sqlSessionTemplate.selectList("phoneinfoMapper.showallphonesummary", pageUtil);
    }

    public HttpResult addPhones(Phone phone) {
        if (phone == null) {
            return new HttpResult(-1, "phone is null");
        } else {
            int k = -1;
            String tempReason = "";
            try {
                k = sqlSessionTemplate.insert("phoneinfoMapper.add_phones", phone);

                if (k != 0) {
                    tempReason = "insert successfully.";
                } else {
                    tempReason = "insert fail";
                }
            } catch (Exception e) {
                tempReason = e.getMessage();
            }

            return new HttpResult(k, tempReason);
        }
    }


}
