package com.heeexy.example.util.model;

import java.util.Date;
import javax.persistence.*;

@Table(name = "t_activity_item")
public class ActivityItem {
    /**
     * 活动明细表主键
     */
    @Id
    private Integer id;

    @Column(name = "activity_id")
    private Integer activityId;

    /**
     * 活动日程内容
     */
    @Column(name = "sub_activity")
    private String subActivity;

    /**
     * 当天题库章节id
     */
    @Column(name = "question_bank_section_id")
    private Integer questionBankSectionId;

    @Column(name = "activity_time")
    private Date activityTime;

    /**
     * 获取活动明细表主键
     *
     * @return id - 活动明细表主键
     */
    public Integer getId() {
        return id;
    }

    /**
     * 设置活动明细表主键
     *
     * @param id 活动明细表主键
     */
    public void setId(Integer id) {
        this.id = id;
    }

    /**
     * @return activity_id
     */
    public Integer getActivityId() {
        return activityId;
    }

    /**
     * @param activityId
     */
    public void setActivityId(Integer activityId) {
        this.activityId = activityId;
    }

    /**
     * 获取活动日程内容
     *
     * @return sub_activity - 活动日程内容
     */
    public String getSubActivity() {
        return subActivity;
    }

    /**
     * 设置活动日程内容
     *
     * @param subActivity 活动日程内容
     */
    public void setSubActivity(String subActivity) {
        this.subActivity = subActivity;
    }

    /**
     * 获取当天题库章节id
     *
     * @return question_bank_section_id - 当天题库章节id
     */
    public Integer getQuestionBankSectionId() {
        return questionBankSectionId;
    }

    /**
     * 设置当天题库章节id
     *
     * @param questionBankSectionId 当天题库章节id
     */
    public void setQuestionBankSectionId(Integer questionBankSectionId) {
        this.questionBankSectionId = questionBankSectionId;
    }

    /**
     * @return activity_time
     */
    public Date getActivityTime() {
        return activityTime;
    }

    /**
     * @param activityTime
     */
    public void setActivityTime(Date activityTime) {
        this.activityTime = activityTime;
    }
}