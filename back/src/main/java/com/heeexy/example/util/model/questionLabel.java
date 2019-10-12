package com.heeexy.example.util.model;

import javax.persistence.*;

@Table(name = "t_question_label")
public class QuestionLabel {
    /**
     * 题目标签表主键
     */
    @Id
    private Integer id;

    /**
     * 题目id
     */
    @Column(name = "question_id")
    private Integer questionId;

    /**
     * 题目标签
     */
    @Column(name = "label_content")
    private String labelContent;

    /**
     * 获取题目标签表主键
     *
     * @return id - 题目标签表主键
     */
    public Integer getId() {
        return id;
    }

    /**
     * 设置题目标签表主键
     *
     * @param id 题目标签表主键
     */
    public void setId(Integer id) {
        this.id = id;
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
     * 获取题目标签
     *
     * @return label_content - 题目标签
     */
    public String getLabelContent() {
        return labelContent;
    }

    /**
     * 设置题目标签
     *
     * @param labelContent 题目标签
     */
    public void setLabelContent(String labelContent) {
        this.labelContent = labelContent;
    }
}