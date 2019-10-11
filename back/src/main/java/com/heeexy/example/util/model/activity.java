package com.heeexy.example.util.model;

import java.util.Date;
import javax.persistence.*;

@Table(name = "t_activity")
public class activity {
    /**
     * 课程活动表主键
     */
    @Id
    private Integer id;

    /**
     * 课程id
     */
    @Column(name = "course_id")
    private Integer courseId;

    /**
     * 活动名称
     */
    @Column(name = "activity_name")
    private String activityName;

    /**
     * 活动图片地址
     */
    @Column(name = "activity_picture")
    private String activityPicture;

    /**
     * 报名开始时间
     */
    @Column(name = "register_start_time")
    private Date registerStartTime;

    /**
     * 报名结束时间
     */
    @Column(name = "register_end_time")
    private Date registerEndTime;

    /**
     * 开课时间
     */
    @Column(name = "start_time")
    private Date startTime;

    /**
     * 人数
     */
    private Integer amount;

    /**
     * 题库主键
     */
    @Column(name = "question_bank_id")
    private Integer questionBankId;

    /**
     * 是否为推荐课程，0否，1是
     */
    @Column(name = "is_rec")
    private Boolean isRec;

    /**
     * 获取课程活动表主键
     *
     * @return id - 课程活动表主键
     */
    public Integer getId() {
        return id;
    }

    /**
     * 设置课程活动表主键
     *
     * @param id 课程活动表主键
     */
    public void setId(Integer id) {
        this.id = id;
    }

    /**
     * 获取课程id
     *
     * @return course_id - 课程id
     */
    public Integer getCourseId() {
        return courseId;
    }

    /**
     * 设置课程id
     *
     * @param courseId 课程id
     */
    public void setCourseId(Integer courseId) {
        this.courseId = courseId;
    }

    /**
     * 获取活动名称
     *
     * @return activity_name - 活动名称
     */
    public String getActivityName() {
        return activityName;
    }

    /**
     * 设置活动名称
     *
     * @param activityName 活动名称
     */
    public void setActivityName(String activityName) {
        this.activityName = activityName;
    }

    /**
     * 获取活动图片地址
     *
     * @return activity_picture - 活动图片地址
     */
    public String getActivityPicture() {
        return activityPicture;
    }

    /**
     * 设置活动图片地址
     *
     * @param activityPicture 活动图片地址
     */
    public void setActivityPicture(String activityPicture) {
        this.activityPicture = activityPicture;
    }

    /**
     * 获取报名开始时间
     *
     * @return register_start_time - 报名开始时间
     */
    public Date getRegisterStartTime() {
        return registerStartTime;
    }

    /**
     * 设置报名开始时间
     *
     * @param registerStartTime 报名开始时间
     */
    public void setRegisterStartTime(Date registerStartTime) {
        this.registerStartTime = registerStartTime;
    }

    /**
     * 获取报名结束时间
     *
     * @return register_end_time - 报名结束时间
     */
    public Date getRegisterEndTime() {
        return registerEndTime;
    }

    /**
     * 设置报名结束时间
     *
     * @param registerEndTime 报名结束时间
     */
    public void setRegisterEndTime(Date registerEndTime) {
        this.registerEndTime = registerEndTime;
    }

    /**
     * 获取开课时间
     *
     * @return start_time - 开课时间
     */
    public Date getStartTime() {
        return startTime;
    }

    /**
     * 设置开课时间
     *
     * @param startTime 开课时间
     */
    public void setStartTime(Date startTime) {
        this.startTime = startTime;
    }

    /**
     * 获取人数
     *
     * @return amount - 人数
     */
    public Integer getAmount() {
        return amount;
    }

    /**
     * 设置人数
     *
     * @param amount 人数
     */
    public void setAmount(Integer amount) {
        this.amount = amount;
    }

    /**
     * 获取题库主键
     *
     * @return question_bank_id - 题库主键
     */
    public Integer getQuestionBankId() {
        return questionBankId;
    }

    /**
     * 设置题库主键
     *
     * @param questionBankId 题库主键
     */
    public void setQuestionBankId(Integer questionBankId) {
        this.questionBankId = questionBankId;
    }

    /**
     * 获取是否为推荐课程，0否，1是
     *
     * @return is_rec - 是否为推荐课程，0否，1是
     */
    public Boolean getIsRec() {
        return isRec;
    }

    /**
     * 设置是否为推荐课程，0否，1是
     *
     * @param isRec 是否为推荐课程，0否，1是
     */
    public void setIsRec(Boolean isRec) {
        this.isRec = isRec;
    }
}