package com.hwx.mpdemo.entity;

import lombok.Data;
import org.springframework.stereotype.Component;

/**
 * @author onee
 * @date 2018/8/25 0025 下午 16:30
 */
@Data
@Component
public class Result{

    private int code;//状态码

    private String msg;//信息

    private Object data;//数据
}
