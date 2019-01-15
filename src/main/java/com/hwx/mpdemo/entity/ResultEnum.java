package com.hwx.mpdemo.entity;

/**
 * @author onee
 * @date 2018/8/25 0025 下午 16:36
 */
public enum ResultEnum {
    //这里是可以自己定义的，方便与前端交互即可
    UNKNOWN_ERROR(-1, "未知错误"),
    SUCCESS(0, "成功"),
    USER_NOT_EXIST(1, "用户不存在"),
    USER_IS_EXISTS(2, "用户已存在"),
    DATA_IS_NULL(3, "数据为空"),
    RECORED_ID_NULL(4,"要删除的记录不存在"),
    TEACHER_ID_NULL(5,"该用户不是教师"),
    GET_OPENID_ERROR(6,"获取openid失败"),

    //群组信息
    QUN_NOT_EXIST(1,"群组不存在"),
    USERQUN_EXITST(2,"已经加入群"),
    QUN_IS_MAX(3,"群员人数已满"),
    QUN_ZUIDARENSHU_BIGGER_THAN_PRESEN(4,"群目前人数小于设置的最大人数"),
    IS_NOT_MANAGER(5,"当前用户不是管理员，无转让群权限"),

    //赛事信息
    SAISHI_NOT_EXIST(1,"赛事不存在"),
    USERSAISHI_EXIST(2,"已经参加赛事"),
    SAISHI_IS_MAX(3,"赛事参加人数已满"),
    SAISHI_END(4,"赛事已经结束"),

    //订单信息
    DINGDAN_NOT_EXIST(1,"订单不存在"),

    //购物车信息
    NUM_NOT_ENOUGh(1,"库存不足"),

    //好友
    FRIEND_IS_EXIST(1,"请勿重复添加"),

    //分享
    TIMES_MAX(1,"分享次数3次以上"),

    //签到
    TODAY_SIGN_ALREADY(1,"今天已签到");

    private Integer code;
    private String msg;

    ResultEnum(Integer code, String msg) {
        this.code = code;
        this.msg = msg;
    }

    public Integer getCode() {
        return code;
    }

    public String getMsg() {
        return msg;
    }
}
