package com.heeexy.example.util.model;

import javax.persistence.*;

@Table(name = "t_course_type")
public class courseType {
    @Id
    private Integer id;

    /**
     * 课程类别id
     */
    @Column(name = "type_id")
    private Integer typeId;

    /**
     * 课程id
     */
    @Column(name = "course_id")
    private Integer courseId;

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
     * 获取课程类别id
     *
     * @return type_id - 课程类别id
     */
    public Integer getTypeId() {
        return typeId;
    }

    /**
     * 设置课程类别id
     *
     * @param typeId 课程类别id
     */
    public void setTypeId(Integer typeId) {
        this.typeId = typeId;
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
}