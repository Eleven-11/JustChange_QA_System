package com.heeexy.example.util.model;

import javax.persistence.*;

@Table(name = "t_system_introduce")
public class SystemIntroduce {
    /**
     * 课程体系介绍
     */
    @Id
    private Integer id;

    /**
     * 体系介绍图片
     */
    @Column(name = "system_introduce_picture")
    private String systemIntroducePicture;

    /**
     * 课程体系简介
     */
    @Column(name = "introduct_content")
    private String introductContent;

    /**
     * 介绍要点
     */
    @Column(name = "first_column")
    private String firstColumn;

    /**
     * 介绍要点详情
     */
    @Column(name = "first_column_content")
    private String firstColumnContent;

    @Column(name = "second_column")
    private String secondColumn;

    @Column(name = "second_column_content")
    private String secondColumnContent;

    @Column(name = "final_column")
    private String finalColumn;

    @Column(name = "final_column_content")
    private String finalColumnContent;

    /**
     * 获取课程体系介绍
     *
     * @return id - 课程体系介绍
     */
    public Integer getId() {
        return id;
    }

    /**
     * 设置课程体系介绍
     *
     * @param id 课程体系介绍
     */
    public void setId(Integer id) {
        this.id = id;
    }

    /**
     * 获取体系介绍图片
     *
     * @return system_introduce_picture - 体系介绍图片
     */
    public String getSystemIntroducePicture() {
        return systemIntroducePicture;
    }

    /**
     * 设置体系介绍图片
     *
     * @param systemIntroducePicture 体系介绍图片
     */
    public void setSystemIntroducePicture(String systemIntroducePicture) {
        this.systemIntroducePicture = systemIntroducePicture;
    }

    /**
     * 获取课程体系简介
     *
     * @return introduct_content - 课程体系简介
     */
    public String getIntroductContent() {
        return introductContent;
    }

    /**
     * 设置课程体系简介
     *
     * @param introductContent 课程体系简介
     */
    public void setIntroductContent(String introductContent) {
        this.introductContent = introductContent;
    }

    /**
     * 获取介绍要点
     *
     * @return first_column - 介绍要点
     */
    public String getFirstColumn() {
        return firstColumn;
    }

    /**
     * 设置介绍要点
     *
     * @param firstColumn 介绍要点
     */
    public void setFirstColumn(String firstColumn) {
        this.firstColumn = firstColumn;
    }

    /**
     * 获取介绍要点详情
     *
     * @return first_column_content - 介绍要点详情
     */
    public String getFirstColumnContent() {
        return firstColumnContent;
    }

    /**
     * 设置介绍要点详情
     *
     * @param firstColumnContent 介绍要点详情
     */
    public void setFirstColumnContent(String firstColumnContent) {
        this.firstColumnContent = firstColumnContent;
    }

    /**
     * @return second_column
     */
    public String getSecondColumn() {
        return secondColumn;
    }

    /**
     * @param secondColumn
     */
    public void setSecondColumn(String secondColumn) {
        this.secondColumn = secondColumn;
    }

    /**
     * @return second_column_content
     */
    public String getSecondColumnContent() {
        return secondColumnContent;
    }

    /**
     * @param secondColumnContent
     */
    public void setSecondColumnContent(String secondColumnContent) {
        this.secondColumnContent = secondColumnContent;
    }

    /**
     * @return final_column
     */
    public String getFinalColumn() {
        return finalColumn;
    }

    /**
     * @param finalColumn
     */
    public void setFinalColumn(String finalColumn) {
        this.finalColumn = finalColumn;
    }

    /**
     * @return final_column_content
     */
    public String getFinalColumnContent() {
        return finalColumnContent;
    }

    /**
     * @param finalColumnContent
     */
    public void setFinalColumnContent(String finalColumnContent) {
        this.finalColumnContent = finalColumnContent;
    }
}