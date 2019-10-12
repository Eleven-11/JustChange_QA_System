package com.heeexy.example.service.impl.system;

import com.alibaba.fastjson.JSONObject;
import com.heeexy.example.dao.CourseBaseMapper;
import com.heeexy.example.service.interfase.system.CourseBaseService;
import com.heeexy.example.util.CommonUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * 年: 2019
 * 月: 10
 * 日: 10
 * 小时: 13
 * 分钟: 51
 *
 * @author 严脱兔
 */
@Service
@Transactional
public class CourseBaseServiceImpl implements CourseBaseService {
    @Autowired
    private CourseBaseMapper courseBaseMapper;


    @Override
    public JSONObject listCourseBase(JSONObject jsonObject) {
        CommonUtil.fillPageParam(jsonObject);
        List<JSONObject> listCourseBase = courseBaseMapper.listCourseBase(jsonObject);
        int count = courseBaseMapper.countCourseBase(jsonObject);
        return CommonUtil.successPage(jsonObject, listCourseBase, listCourseBase.size());
    }

    @Override
    public JSONObject addCourseBase(JSONObject jsonObject) {
        int i = courseBaseMapper.addCourseBase(jsonObject);
        return CommonUtil.successJson(jsonObject.get("courseBaseId"));
    }

    @Override
    public JSONObject updateCourseBase(JSONObject jsonObject) {
        int i = courseBaseMapper.updateCourseBase(jsonObject);
        return CommonUtil.successJson(jsonObject.get("courseBaseId"));
    }
}
