package lecture1;

import java.util.Date;
import java.text.SimpleDateFormat;

public class Date1 {

    public static void main(String[] args) {
        Date today = new Date();
        
        SimpleDateFormat f1 = new SimpleDateFormat("yyyy-MM-dd a hh:mm:ss"); // 소문자 hh는 13시가 아니라 01시로 나옴
        String s1 = f1.format(today);
        System.out.println(s1);
        
        SimpleDateFormat f2 = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss"); // 대문자 HH는 13,14시로 나옴
        String s2 = f2.format(today);
        System.out.println(s2);

        SimpleDateFormat f3 = new SimpleDateFormat("yy-M-d H:m:s"); //그냥 H는 02시가 아니라 2시로 나옴
        String s3 = f3.format(today);
        System.out.println(s3);       
    }

}
