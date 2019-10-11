package com.heeexy.example.util.model;

import javax.persistence.*;

@Table(name = "t_examination_question")
public class examinationQuestion {
    /**
     * 章节题目表主键
     */
    @Id
    private Integer id;

    /**
     * 考卷id
     */
    @Column(name = "examination_paper_id")
    private Integer examinationPaperId;

    /**
     * 题目id
     */
    @Column(name = "question_id")
    private Integer questionId;

    /**
     * 题目分值
     */
    private Integer score;

    /**
     * 获取章节题目表主键
     *
     * @return id - 章节题目表主键
     */
    public Integer getId() {
        return id;
    }

    /**
     * 设置章节题目表主键
     *
     * @param id 章节题目表主键
     */
    public void setId(Integer id) {
        this.id = id;
    }

    /**
     * 获取考卷id
     *
     * @return examination_paper_id - 考卷id
     */
    public Integer getExaminationPaperId() {
        return examinationPaperId;
    }

    /**
     * 设置考卷id
     *
     * @param examinationPaperId 考卷id
     */
    public void setExaminationPaperId(Integer examinationPaperId) {
        this.examinationPaperId = examinationPaperId;
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
     * 获取题目分值
     *
     * @return score - 题目分值
     */
    public Integer getScore() {
        return score;
    }

    /**
     * 设置题目分值
     *
     * @param score 题目分值
     */
    public void setScore(Integer score) {
        this.score = score;
    }
}