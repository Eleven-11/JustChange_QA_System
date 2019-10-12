package com.heeexy.example.service.impl.system;

import com.alibaba.fastjson.JSONObject;
import com.heeexy.example.dao.ExaminationPaperMapper;
import com.heeexy.example.dao.QuestionBankMapper;
import com.heeexy.example.service.interfase.system.QuestionBankService;
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
public class QuestionBankServiceImpl implements QuestionBankService {
    @Autowired
    private QuestionBankMapper questionBankDao;
    @Autowired
    private ExaminationPaperMapper examinationPaperDao;

    @Override
    public JSONObject listQuestionBank(JSONObject jsonObject) {
        CommonUtil.fillPageParam(jsonObject);
        List<JSONObject> listCourseBase = questionBankDao.listQuestionBank(jsonObject);
        int count = questionBankDao.countQuestionBank(jsonObject);
        return CommonUtil.successPage(jsonObject, listCourseBase, listCourseBase.size());
    }

    @Override
    public JSONObject addQuestionBank(JSONObject jsonObject) {
        int questionBankId = questionBankDao.addQuestionBank(jsonObject);
        int examinationPaperId = examinationPaperDao.addExaminationPaper(jsonObject.getString("questionBankId"), (List<Integer>) jsonObject.get("examinationPapers"));
        return CommonUtil.successJson(jsonObject.get("questionBankId"));
    }

    @Override
    public JSONObject updateQuestionBank(JSONObject jsonObject) {
        int i = questionBankDao.updateQuestionBank(jsonObject);
        return CommonUtil.successJson();
    }
}
