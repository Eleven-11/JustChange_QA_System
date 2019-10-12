package com.heeexy.example.util.model;

import java.util.Date;
import javax.persistence.*;

@Table(name = "t_user_attend")
public class userAttend {
    /**
     * 签到表主键
     */
    @Id
    private Integer id;

    /**
     * 用户id
     */
    @Column(name = "user_id")
    private String userId;

    /**
     * 签到时间
     */
    @Column(name = "create_time")
    private Date createTime;

    /**
     * 是否签到，1是0否
     */
    @Column(name = "is_attend")
    private Integer isAttend;

    /**
     * 获取签到表主键
     *
     * @return id - 签到表主键
     */
    public Integer getId() {
        return id;
    }

    /**
     * 设置签到表主键
     *
     * @param id 签到表主键
     */
    public void setId(Integer id) {
        this.id = id;
    }

    /**
     * 获取用户id
     *
     * @return user_id - 用户id
     */
    public String getUserId() {
        return userId;
    }

    /**
     * 设置用户id
     *
     * @param userId 用户id
     */
    public void setUserId(String userId) {
        this.userId = userId;
    }

    /**
     * 获取签到时间
     *
     * @return create_time - 签到时间
     */
    public Date getCreateTime() {
        return createTime;
    }

    /**
     * 设置签到时间
     *
     * @param createTime 签到时间
     */
    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    /**
     * 获取是否签到，1是0否
     *
     * @return is_attend - 是否签到，1是0否
     */
    public Integer getIsAttend() {
        return isAttend;
    }

    /**
     * 设置是否签到，1是0否
     *
     * @param isAttend 是否签到，1是0否
     */
    public void setIsAttend(Integer isAttend) {
        this.isAttend = isAttend;
    }
}