package com.hwx.mpdemo.oneUtils;

import org.springframework.stereotype.Component;

/**
 * @program:paotuan
 * @author:one
 * @creatTime:2018/12/05
 **/

@Component
public class ArrayUtil {
    /**
     * 将 逗号分割的 数组 转换成 int数组
     * @param array
     * @return
     */
    public int[] StringToIntArray(String array){
        array = array.substring(0,array.length()-1);    //去掉最后一个，
        array = array.substring(1, array.length());     //去掉第一个，
        String[] arrayList = array.split(",");
        int[] arry = new int[arrayList.length];
        for(int i=0;i<arrayList.length;i++){
            arry[i] = Integer.parseInt(arrayList[i]);
        }
        return arry;
    }
}
