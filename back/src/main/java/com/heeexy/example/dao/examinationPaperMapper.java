package com.heeexy.example.dao;

import com.alibaba.fastjson.JSONObject;
import com.heeexy.example.util.model.ExaminationPaper;
import org.apache.ibatis.annotations.Param;
import tk.mybatis.mapper.common.Mapper;

import java.util.List;

public interface ExaminationPaperMapper extends Mapper<ExaminationPaper> {
    /**
     * 新增试卷
     */
    int addExaminationPaper(@Param("questionBankId") String questionBankId, @Param("examinationPapers") List<Integer> examinationPapers);

    /**
     * 统计试卷总数
     */
    int countExaminationPaper(JSONObject jsonObject);

    /**
     * 查询某指定对象的全部数据
     * 在删除和修改时调用
     */
    JSONObject getRoleAllInfo(JSONObject jsonObject);

    /**
     * 试卷列表
     */
    List<JSONObject> listExaminationPaper(JSONObject jsonObject);

    /**
     * 修改状态为 未确认的试卷
     */
    int updateExaminationPaper(JSONObject jsonObject);
}
