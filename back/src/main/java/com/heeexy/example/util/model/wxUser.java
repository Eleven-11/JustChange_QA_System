package com.heeexy.example.util.model;

import java.util.Date;
import javax.persistence.*;

@Table(name = "t_wx_user")
public class wxUser {
    /**
     * 系统用户ID
     */
    @Id
    @Column(name = "user_id")
    private String userId;

    /**
     * 微信openId
     */
    @Column(name = "open_id")
    private String openId;

    /**
     * 微信唯一标示
     */
    @Column(name = "union_id")
    private String unionId;

    /**
     * 微信用户头像
     */
    @Column(name = "wx_avatar_url")
    private String wxAvatarUrl;

    /**
     * 微信名称
     */
    @Column(name = "wx_nick_name")
    private String wxNickName;

    /**
     * 微信性别,男性为1
     */
    @Column(name = "wx_gender")
    private Integer wxGender;

    /**
     * 市
     */
    @Column(name = "wx_city")
    private String wxCity;

    /**
     * 省
     */
    @Column(name = "wx_province")
    private String wxProvince;

    /**
     * 国家
     */
    @Column(name = "wx_country")
    private String wxCountry;

    /**
     * 创建时间
     */
    @Column(name = "create_time")
    private Date createTime;

    /**
     * 更新时间
     */
    @Column(name = "update_time")
    private Date updateTime;

    /**
     * 是否删除，0正常，1删除
     */
    @Column(name = "is_del")
    private Byte isDel;

    /**
     * 获取系统用户ID
     *
     * @return user_id - 系统用户ID
     */
    public String getUserId() {
        return userId;
    }

    /**
     * 设置系统用户ID
     *
     * @param userId 系统用户ID
     */
    public void setUserId(String userId) {
        this.userId = userId;
    }

    /**
     * 获取微信openId
     *
     * @return open_id - 微信openId
     */
    public String getOpenId() {
        return openId;
    }

    /**
     * 设置微信openId
     *
     * @param openId 微信openId
     */
    public void setOpenId(String openId) {
        this.openId = openId;
    }

    /**
     * 获取微信唯一标示
     *
     * @return union_id - 微信唯一标示
     */
    public String getUnionId() {
        return unionId;
    }

    /**
     * 设置微信唯一标示
     *
     * @param unionId 微信唯一标示
     */
    public void setUnionId(String unionId) {
        this.unionId = unionId;
    }

    /**
     * 获取微信用户头像
     *
     * @return wx_avatar_url - 微信用户头像
     */
    public String getWxAvatarUrl() {
        return wxAvatarUrl;
    }

    /**
     * 设置微信用户头像
     *
     * @param wxAvatarUrl 微信用户头像
     */
    public void setWxAvatarUrl(String wxAvatarUrl) {
        this.wxAvatarUrl = wxAvatarUrl;
    }

    /**
     * 获取微信名称
     *
     * @return wx_nick_name - 微信名称
     */
    public String getWxNickName() {
        return wxNickName;
    }

    /**
     * 设置微信名称
     *
     * @param wxNickName 微信名称
     */
    public void setWxNickName(String wxNickName) {
        this.wxNickName = wxNickName;
    }

    /**
     * 获取微信性别,男性为1
     *
     * @return wx_gender - 微信性别,男性为1
     */
    public Integer getWxGender() {
        return wxGender;
    }

    /**
     * 设置微信性别,男性为1
     *
     * @param wxGender 微信性别,男性为1
     */
    public void setWxGender(Integer wxGender) {
        this.wxGender = wxGender;
    }

    /**
     * 获取市
     *
     * @return wx_city - 市
     */
    public String getWxCity() {
        return wxCity;
    }

    /**
     * 设置市
     *
     * @param wxCity 市
     */
    public void setWxCity(String wxCity) {
        this.wxCity = wxCity;
    }

    /**
     * 获取省
     *
     * @return wx_province - 省
     */
    public String getWxProvince() {
        return wxProvince;
    }

    /**
     * 设置省
     *
     * @param wxProvince 省
     */
    public void setWxProvince(String wxProvince) {
        this.wxProvince = wxProvince;
    }

    /**
     * 获取国家
     *
     * @return wx_country - 国家
     */
    public String getWxCountry() {
        return wxCountry;
    }

    /**
     * 设置国家
     *
     * @param wxCountry 国家
     */
    public void setWxCountry(String wxCountry) {
        this.wxCountry = wxCountry;
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

    /**
     * 获取更新时间
     *
     * @return update_time - 更新时间
     */
    public Date getUpdateTime() {
        return updateTime;
    }

    /**
     * 设置更新时间
     *
     * @param updateTime 更新时间
     */
    public void setUpdateTime(Date updateTime) {
        this.updateTime = updateTime;
    }

    /**
     * 获取是否删除，0正常，1删除
     *
     * @return is_del - 是否删除，0正常，1删除
     */
    public Byte getIsDel() {
        return isDel;
    }

    /**
     * 设置是否删除，0正常，1删除
     *
     * @param isDel 是否删除，0正常，1删除
     */
    public void setIsDel(Byte isDel) {
        this.isDel = isDel;
    }
}