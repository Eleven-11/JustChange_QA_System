package com.heeexy.example.util.model;

import java.util.Date;
import javax.persistence.*;

@Table(name = "t_user_score")
public class UserScore {
    @Id
    private Integer id;

    @Column(name = "user_id")
    private String userId;

    /**
     * 题库章节id
     */
    @Column(name = "examination_paper_id")
    private Integer examinationPaperId;

    /**
     * 答题总分
     */
    private Integer score;

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
     * @return examination_paper_id - 题库章节id
     */
    public Integer getExaminationPaperId() {
        return examinationPaperId;
    }

    /**
     * 设置题库章节id
     *
     * @param examinationPaperId 题库章节id
     */
    public void setExaminationPaperId(Integer examinationPaperId) {
        this.examinationPaperId = examinationPaperId;
    }

    /**
     * 获取答题总分
     *
     * @return score - 答题总分
     */
    public Integer getScore() {
        return score;
    }

    /**
     * 设置答题总分
     *
     * @param score 答题总分
     */
    public void setScore(Integer score) {
        this.score = score;
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