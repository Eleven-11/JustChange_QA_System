package com.heeexy.example.util.model;

import java.util.Date;
import javax.persistence.*;

@Table(name = "t_user_answer")
public class UserAnswer {
    @Id
    private Integer id;

    @Column(name = "user_id")
    private String userId;

    /**
     * 题库章节id
     */
    @Column(name = "question_bank_section_id")
    private Integer questionBankSectionId;

    /**
     * 题目id
     */
    @Column(name = "question_id")
    private Integer questionId;

    /**
     * 选项id
     */
    @Column(name = "option_id")
    private Integer optionId;

    /**
     * 创建时间
     */
    @Column(name = "create_time")
    private Date createTime;

    /**
     * @return id
     */
    public Integer getId() {
        return id;
    }

    /**
     * @param id
     */
    public void setId(Integer id) {
        this.id = id;
    }

    /**
     * @return user_id
     */
    public String getUserId() {
        return userId;
    }

    /**
     * @param userId
     */
    public void setUserId(String userId) {
        this.userId = userId;
    }

    /**
     * 获取题库章节id
     *
     * @return question_bank_section_id - 题库章节id
     */
    public Integer getQuestionBankSectionId() {
        return questionBankSectionId;
    }

    /**
     * 设置题库章节id
     *
     * @param questionBankSectionId 题库章节id
     */
    public void setQuestionBankSectionId(Integer questionBankSectionId) {
        this.questionBankSectionId = questionBankSectionId;
    }

    /**
     * 获取题目id
     *
     * @return question_id - 题目id
     */
    public Integer getQuestionId() {
        return questionId;
    }

    /**
     * 设置题目id
     *
     * @param questionId 题目id
     */
    public void setQuestionId(Integer questionId) {
        this.questionId = questionId;
    }

    /**
     * 获取选项id
     *
     * @return option_id - 选项id
     */
    public Integer getOptionId() {
        return optionId;
    }

    /**
     * 设置选项id
     *
     * @param optionId 选项id
     */
    public void setOptionId(Integer optionId) {
        this.optionId = optionId;
    }

    /**
     * 获取创建时间
     *
     * @return create_time - 创建时间
     */
    public Date getCreateTime() {
        return createTime;
    }

    /**
     * 设置创建时间
     *
     * @param createTime 创建时间
     */
    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }
}