package com.hwx.mpdemo.entity;

import lombok.Data;

/**
 * @author Eangaie
 * @date 2018/11/9 0009 下午 12:04
 */
@Data
public class AccessToken {

    private String access_token;
    private long expires_in;
}
