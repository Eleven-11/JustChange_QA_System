package com.heeexy.example.service.interfase.system;

import com.alibaba.fastjson.JSONObject;

/**
 * 年: 2019
 * 月: 10
 * 日: 10
 * 小时: 13
 * 分钟: 44
 *
 * @author 严脱兔
 */
public interface CourseBaseService {

    /**
     * 课程列表
     */
    JSONObject listCourseBase(JSONObject jsonObject);

    /**
     * 添加课程
     */
    JSONObject addCourseBase(JSONObject jsonObject);

    /**
     * 修改状态为 未确认的课程
     */
    JSONObject updateCourseBase(JSONObject jsonObject);



}
