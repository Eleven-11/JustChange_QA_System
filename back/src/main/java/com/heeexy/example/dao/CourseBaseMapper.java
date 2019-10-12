package com.heeexy.example.dao;

import com.alibaba.fastjson.JSONObject;
import com.heeexy.example.util.model.CourseBase;
import tk.mybatis.mapper.common.Mapper;

import java.util.List;

public interface CourseBaseMapper extends Mapper<CourseBase> {
    /**
     * 新增课程
     */
    int addCourseBase(JSONObject jsonObject);

    /**
     * 统计课程总数
     */
    int countCourseBase(JSONObject jsonObject);

    /**
     * 查询某指定对象的全部数据
     * 在删除和修改时调用
     */
    JSONObject getRoleAllInfo(JSONObject jsonObject);

    /**
     * 课程列表
     */
    List<JSONObject> listCourseBase(JSONObject jsonObject);

    /**
     * 修改状态为 未确认的课程
     */
    int updateCourseBase(JSONObject jsonObject);
}
