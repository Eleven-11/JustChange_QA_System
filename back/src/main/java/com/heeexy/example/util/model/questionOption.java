package com.heeexy.example.util.model;

import javax.persistence.*;

@Table(name = "t_question_option")
public class QuestionOption {
    /**
     * 题目分值表主键
     */
    @Id
    private Integer id;

    /**
     * 题目id
     */
    @Column(name = "question_id")
    private Integer questionId;

    /**
     * 选项顺序
     */
    @Column(name = "option_sort")
    private String optionSort;

    /**
     * 选项内容
     */
    @Column(name = "option_content")
    private String optionContent;

    /**
     * 是否多选，1是0否
     */
    @Column(name = "is_multi_option")
    private Byte isMultiOption;

    /**
     * 是否为正确选项,1是0否
     */
    @Column(name = "is_correct")
    private Integer isCorrect;

    /**
     * 获取题目分值表主键
     *
     * @return id - 题目分值表主键
     */
    public Integer getId() {
        return id;
    }

    /**
     * 设置题目分值表主键
     *
     * @param id 题目分值表主键
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
     * 获取选项顺序
     *
     * @return option_sort - 选项顺序
     */
    public String getOptionSort() {
        return optionSort;
    }

    /**
     * 设置选项顺序
     *
     * @param optionSort 选项顺序
     */
    public void setOptionSort(String optionSort) {
        this.optionSort = optionSort;
    }

    /**
     * 获取选项内容
     *
     * @return option_content - 选项内容
     */
    public String getOptionContent() {
        return optionContent;
    }

    /**
     * 设置选项内容
     *
     * @param optionContent 选项内容
     */
    public void setOptionContent(String optionContent) {
        this.optionContent = optionContent;
    }

    /**
     * 获取是否多选，1是0否
     *
     * @return is_multi_option - 是否多选，1是0否
     */
    public Byte getIsMultiOption() {
        return isMultiOption;
    }

    /**
     * 设置是否多选，1是0否
     *
     * @param isMultiOption 是否多选，1是0否
     */
    public void setIsMultiOption(Byte isMultiOption) {
        this.isMultiOption = isMultiOption;
    }

    /**
     * 获取是否为正确选项,1是0否
     *
     * @return is_correct - 是否为正确选项,1是0否
     */
    public Integer getIsCorrect() {
        return isCorrect;
    }

    /**
     * 设置是否为正确选项,1是0否
     *
     * @param isCorrect 是否为正确选项,1是0否
     */
    public void setIsCorrect(Integer isCorrect) {
        this.isCorrect = isCorrect;
    }
}