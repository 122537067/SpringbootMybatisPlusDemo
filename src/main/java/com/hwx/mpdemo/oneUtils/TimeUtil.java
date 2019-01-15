package com.hwx.mpdemo.oneUtils;

import org.springframework.stereotype.Component;

import java.text.ParsePosition;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

/**
 * @author Eangaie
 * @date 2018/7/21 0021 上午 10:39
 */
@Component
public class TimeUtil {
    /**
     * 格式化日期输出
     * @param data
     * @return
     */
    public static String get_SFD_Time(Date data){
        SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        return sdf.format(data);
    }


    /**
     * 判断两个日期大小、若d1<d2 返回true 否则返回false
     * @param d1
     * @param d2
     * @return
     */
    public boolean boolTime(Date d1,Date d2){
        String[] temp;
        temp=this.getYMD(d1).split("-");
        int date1=new Integer(temp[0]+temp[1]+temp[2]);
        temp=this.getYMD(d2).split("-");
        int date2=new Integer(temp[0]+temp[1]+temp[2]);
        if(date1<date2){
            return true;
        }
        return false;
    }

    public String getYMD(Date date){
        SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String str=sdf.format(date);
        return str.split(" ")[0];
    }

    /**
     * 获得n个月后的日期
     * @param now
     * @param num
     * @return
     */
    public Date getAfterDate(Date now,int num){
        //创建一个日期实例
        Calendar calendar=Calendar.getInstance();
        calendar.setTime(now);
        calendar.add(Calendar.MONTH,num);//在日历的月份上增加6个月
        return  calendar.getTime();
    }

    /**
     * 将前端转过来的格式化后的日期转回Date
     * @param strDate
     * @return
     */
    public Date strToDateLong(String strDate) {
        SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        ParsePosition pos = new ParsePosition(0);
        Date strtodate = formatter.parse(strDate, pos);
        return strtodate;
    }
}
