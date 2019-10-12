package com.heeexy.example.util.model;

import javax.persistence.*;

@Table(name = "t_question_bank")
public class questionBank {
    /**
     * 题库表主键
     */
    @Id
    private Integer id;

    /**
     * 题库名称
     */
    @Column(name = "question_bank_name")
    private String questionBankName;

    /**
     * 题库状态
     */
    private String state;

    /**
     * 是否删除，1是0否
     */
    @Column(name = "is_del")
    private Boolean isDel;

    /**
     * 获取题库表主键
     *
     * @return id - 题库表主键
     */
    public Integer getId() {
        return id;
    }

    /**
     * 设置题库表主键
     *
     * @param id 题库表主键
     */
    public void setId(Integer id) {
        this.id = id;
    }

    /**
     * 获取题库名称
     *
     * @return question_bank_name - 题库名称
     */
    public String getQuestionBankName() {
        return questionBankName;
    }

    /**
     * 设置题库名称
     *
     * @param questionBankName 题库名称
     */
    public void setQuestionBankName(String questionBankName) {
        this.questionBankName = questionBankName;
    }

    /**
     * 获取题库状态
     *
     * @return state - 题库状态
     */
    public String getState() {
        return state;
    }

    /**
     * 设置题库状态
     *
     * @param state 题库状态
     */
    public void setState(String state) {
        this.state = state;
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