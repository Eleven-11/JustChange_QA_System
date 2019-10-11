package com.heeexy.example.util.model;

import javax.persistence.*;

@Table(name = "t_course_base")
public class courseBase {
    /**
     * 课程表主键
     */
    @Id
    private Integer id;

    /**
     * 课程名称
     */
    @Column(name = "course_name")
    private String courseName;

    /**
     * 课程类别
     */
    @Column(name = "course_type")
    private Integer courseType;

    /**
     * 课程图片
     */
    @Column(name = "course_picture")
    private String coursePicture;

    /**
     * 状态
     */
    private String state;

    /**
     * 是否删除，1是0否
     */
    @Column(name = "is_del")
    private Boolean isDel;

    /**
     * 课程介绍
     */
    private String summary;

    /**
     * 获取课程表主键
     *
     * @return id - 课程表主键
     */
    public Integer getId() {
        return id;
    }

    /**
     * 设置课程表主键
     *
     * @param id 课程表主键
     */
    public void setId(Integer id) {
        this.id = id;
    }

    /**
     * 获取课程名称
     *
     * @return course_name - 课程名称
     */
    public String getCourseName() {
        return courseName;
    }

    /**
     * 设置课程名称
     *
     * @param courseName 课程名称
     */
    public void setCourseName(String courseName) {
        this.courseName = courseName;
    }

    /**
     * 获取课程类别
     *
     * @return course_type - 课程类别
     */
    public Integer getCourseType() {
        return courseType;
    }

    /**
     * 设置课程类别
     *
     * @param courseType 课程类别
     */
    public void setCourseType(Integer courseType) {
        this.courseType = courseType;
    }

    /**
     * 获取课程图片
     *
     * @return course_picture - 课程图片
     */
    public String getCoursePicture() {
        return coursePicture;
    }

    /**
     * 设置课程图片
     *
     * @param coursePicture 课程图片
     */
    public void setCoursePicture(String coursePicture) {
        this.coursePicture = coursePicture;
    }

    /**
     * 获取状态
     *
     * @return state - 状态
     */
    public String getState() {
        return state;
    }

    /**
     * 设置状态
     *
     * @param state 状态
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

    /**
     * 获取课程介绍
     *
     * @return summary - 课程介绍
     */
    public String getSummary() {
        return summary;
    }

    /**
     * 设置课程介绍
     *
     * @param summary 课程介绍
     */
    public void setSummary(String summary) {
        this.summary = summary;
    }
}