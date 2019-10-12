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
public interface QuestionBankService {

    /**
     * 题库列表
     */
    JSONObject listQuestionBank(JSONObject jsonObject);

    /**
     * 添加题库
     */
    JSONObject addQuestionBank(JSONObject jsonObject);

    /**
     * 修改状态为 未确认的题库
     */
    JSONObject updateQuestionBank(JSONObject jsonObject);



}
