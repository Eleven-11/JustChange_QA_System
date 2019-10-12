package com.heeexy.example.dao;

import com.alibaba.fastjson.JSONObject;
import com.heeexy.example.util.model.QuestionBank;
import tk.mybatis.mapper.common.Mapper;

import java.util.List;

public interface QuestionBankMapper extends Mapper<QuestionBank> {
    /**
     * 新增题库
     */
    int addQuestionBank(JSONObject jsonObject);
    /**
     * 新增试卷
     */
    int addExaminationPaper(JSONObject jsonObject);
    /**
     * 统计题库总数
     */
    int countQuestionBank(JSONObject jsonObject);

    /**
     * 查询某指定对象的全部数据
     * 在删除和修改时调用
     */
    JSONObject getRoleAllInfo(JSONObject jsonObject);

    /**
     * 题库列表
     */
    List<JSONObject> listQuestionBank(JSONObject jsonObject);

    /**
     * 修改状态为 未确认的题库
     */
    int updateQuestionBank(JSONObject jsonObject);

}
