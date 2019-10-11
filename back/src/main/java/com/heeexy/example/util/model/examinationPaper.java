package com.heeexy.example.util.model;

import javax.persistence.*;

@Table(name = "t_examination_paper")
public class examinationPaper {
    /**
     * 题库章节表主键
     */
    @Id
    private Integer id;

    /**
     * 题库id
     */
    @Column(name = "question_bank_id")
    private Integer questionBankId;

    /**
     * 试卷名称
     */
    @Column(name = "examination_name")
    private String examinationName;

    /**
     * 是否删除，1是0否 
     */
    @Column(name = "is_del")
    private Boolean isDel;

    /**
     * 获取题库章节表主键
     *
     * @return id - 题库章节表主键
     */
    public Integer getId() {
        return id;
    }

    /**
     * 设置题库章节表主键
     *
     * @param id 题库章节表主键
     */
    public void setId(Integer id) {
        this.id = id;
    }

    /**
     * 获取题库id
     *
     * @return question_bank_id - 题库id
     */
    public Integer getQuestionBankId() {
        return questionBankId;
    }

    /**
     * 设置题库id
     *
     * @param questionBankId 题库id
     */
    public void setQuestionBankId(Integer questionBankId) {
        this.questionBankId = questionBankId;
    }

    /**
     * 获取试卷名称
     *
     * @return examination_name - 试卷名称
     */
    public String getExaminationName() {
        return examinationName;
    }

    /**
     * 设置试卷名称
     *
     * @param examinationName 试卷名称
     */
    public void setExaminationName(String examinationName) {
        this.examinationName = examinationName;
    }

    /**
     * 获取是否删除，1是0否 
     *
     * @return is_del - 是否删除，1是0否 
     */
    public Boolean getIsDel() {
        return isDel;
    }

    /**
     * 设置是否删除，1是0否 
     *
     * @param isDel 是否删除，1是0否 
     */
    public void setIsDel(Boolean isDel) {
        this.isDel = isDel;
    }
}