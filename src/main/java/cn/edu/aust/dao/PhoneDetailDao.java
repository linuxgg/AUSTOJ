package cn.edu.aust.dao;

import cn.edu.aust.entity.PhoneDetail;
import cn.edu.aust.entity.Problem;
import cn.edu.aust.entity.User;
import cn.edu.aust.util.PageUtil;
import org.apache.log4j.Logger;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;
import com.alibaba.fastjson.JSON;

import javax.annotation.Resource;
import java.util.List;
import java.util.Objects;

/**
 * 用户和数据库交互的DAO
 */
@Repository("phoneDetailDao")
public class PhoneDetailDao {
    @Resource(name = "sqlSessionTemplate")
    private SqlSessionTemplate sqlSessionTemplate;
    private Logger logger = Logger.getLogger(PhoneDetailDao.class);

    /**
     * 得到用户排名展示信息
     *
     * @param pageUtil
     * @return
     */
    public List<PhoneDetail> showallphonedetails(PageUtil pageUtil) {
        return sqlSessionTemplate.selectList("phonedetailMapper.showallphonedetails", pageUtil);
    }

    public Object addPhones(PhoneDetail phoneDetail) {
        if (phoneDetail == null) {
            return false;
        } else {
            int k = sqlSessionTemplate.insert("phonedetailMapper.add_phones", phoneDetail);
            return k > 0;
        }
    }


}
