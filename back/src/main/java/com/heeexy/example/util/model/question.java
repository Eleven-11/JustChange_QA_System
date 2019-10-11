package com.heeexy.example.util.model;

import javax.persistence.*;

@Table(name = "t_question")
public class question {
    /**
     * 题目表主键
     */
    @Id
    private Integer id;

    /**
     * 问题内容
     */
    @Column(name = "question_content")
    private String questionContent;

    /**
     * 题目类型
     */
    private String type;

    /**
     * 是否为多选题，1是0否
     */
    @Column(name = "is_multi_option")
    private Integer isMultiOption;

    /**
     * 是否删除，1是，0否
     */
    @Column(name = "is_del")
    private Byte isDel;

    /**
     * 获取题目表主键
     *
     * @return id - 题目表主键
     */
    public Integer getId() {
        return id;
    }

    /**
     * 设置题目表主键
     *
     * @param id 题目表主键
     */
    public void setId(Integer id) {
        this.id = id;
    }

    /**
     * 获取问题内容
     *
     * @return question_content - 问题内容
     */
    public String getQuestionContent() {
        return questionContent;
    }

    /**
     * 设置问题内容
     *
     * @param questionContent 问题内容
     */
    public void setQuestionContent(String questionContent) {
        this.questionContent = questionContent;
    }

    /**
     * 获取题目类型
     *
     * @return type - 题目类型
     */
    public String getType() {
        return type;
    }

    /**
     * 设置题目类型
     *
     * @param type 题目类型
     */
    public void setType(String type) {
        this.type = type;
    }

    /**
     * 获取是否为多选题，1是0否
     *
     * @return is_multi_option - 是否为多选题，1是0否
     */
    public Integer getIsMultiOption() {
        return isMultiOption;
    }

    /**
     * 设置是否为多选题，1是0否
     *
     * @param isMultiOption 是否为多选题，1是0否
     */
    public void setIsMultiOption(Integer isMultiOption) {
        this.isMultiOption = isMultiOption;
    }

    /**
     * 获取是否删除，1是，0否
     *
     * @return is_del - 是否删除，1是，0否
     */
    public Byte getIsDel() {
        return isDel;
    }

    /**
     * 设置是否删除，1是，0否
     *
     * @param isDel 是否删除，1是，0否
     */
    public void setIsDel(Byte isDel) {
        this.isDel = isDel;
    }
}