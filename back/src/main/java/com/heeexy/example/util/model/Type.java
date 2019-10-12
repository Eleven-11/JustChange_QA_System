package com.heeexy.example.util.model;

import javax.persistence.*;

@Table(name = "t_type")
public class Type {
    @Id
    private Integer id;

    /**
     * 课程类型
     */
    @Column(name = "course_type_name")
    private String courseTypeName;

    /**
     * 是否删除，1是0否
     */
    @Column(name = "is_del")
    private Boolean isDel;

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
     * 获取课程类型
     *
     * @return course_type_name - 课程类型
     */
    public String getCourseTypeName() {
        return courseTypeName;
    }

    /**
     * 设置课程类型
     *
     * @param courseTypeName 课程类型
     */
    public void setCourseTypeName(String courseTypeName) {
        this.courseTypeName = courseTypeName;
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