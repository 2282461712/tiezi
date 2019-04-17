package com.szxs.service.Impl;

import com.szxs.dao.EpDao;
import com.szxs.entity.Enterprisetalent;
import com.szxs.service.EpService;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
@Service
public class EpServiceimpl implements EpService {
    @Resource
    private EpDao epDao;
    public List<Enterprisetalent> queryEp() {
        return epDao.queryEp();
    }


}
