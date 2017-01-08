// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.product.library.c;

import com.bugsense.trace.BugSenseHandler;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.TimeZone;

public class c
{

    public static String a()
    {
        Calendar calendar = Calendar.getInstance();
        String s = a(1 + calendar.get(2));
        return (new StringBuilder()).append(calendar.get(1)).append("_").append(s).append("_").append(calendar.get(5)).toString();
    }

    private static String a(int i)
    {
        if (i < 10 && i > 0)
        {
            return (new StringBuilder("0")).append(i).toString();
        } else
        {
            return (new StringBuilder()).append(i).toString();
        }
    }

    public static String a(String s)
    {
        SimpleDateFormat simpledateformat = new SimpleDateFormat("yyyy-MM-dd");
        Calendar calendar = Calendar.getInstance();
        try
        {
            calendar.setTime(simpledateformat.parse(s));
            calendar.add(5, 1);
        }
        catch (ParseException parseexception)
        {
            BugSenseHandler.sendException(parseexception);
            parseexception.printStackTrace();
        }
        return simpledateformat.format(calendar.getTime());
    }

    public static String a(String s, String s1)
    {
        SimpleDateFormat simpledateformat = new SimpleDateFormat("yyyy-MM-dd");
        String s2;
        try
        {
            Date date = simpledateformat.parse(s);
            s2 = (new SimpleDateFormat(s1)).format(date);
        }
        catch (ParseException parseexception)
        {
            BugSenseHandler.sendException(parseexception);
            parseexception.printStackTrace();
            return s;
        }
        return s2;
    }

    public static String[] a(int i, int j)
    {
        String as[] = new String[2];
        new SimpleDateFormat("yyyy-MM-dd");
        Calendar calendar = Calendar.getInstance();
        if (1 == i)
        {
            calendar.add(1, j);
            as[0] = (new StringBuilder()).append(calendar.get(1)).append("-01-01").toString();
            as[1] = (new StringBuilder()).append(calendar.get(1)).append("-12-31").toString();
        } else
        {
            if (2 == i)
            {
                calendar.add(2, j);
                String s1 = a(1 + calendar.get(2));
                as[0] = (new StringBuilder()).append(calendar.get(1)).append("-").append(s1).append("-01").toString();
                as[1] = (new StringBuilder()).append(calendar.get(1)).append("-").append(s1).append("-").append(calendar.getActualMaximum(5)).toString();
                return as;
            }
            if (4 == i)
            {
                Calendar calendar1 = Calendar.getInstance();
                calendar1.add(5, j);
                String s = (new SimpleDateFormat("yyyy-MM-dd")).format(calendar1.getTime());
                as[1] = s;
                as[0] = s;
                return as;
            }
        }
        return as;
    }

    public static String[] a(String s, String s1, int i)
    {
        String as[];
        SimpleDateFormat simpledateformat;
        Calendar calendar;
        as = new String[2];
        simpledateformat = new SimpleDateFormat("yyyy-MM-dd");
        calendar = Calendar.getInstance(TimeZone.getDefault());
        if (s == null) goto _L2; else goto _L1
_L1:
        long l;
        calendar.setTime(simpledateformat.parse(s));
        l = (simpledateformat.parse(s1).getTime() - simpledateformat.parse(s).getTime()) / 0x5265c00L;
        int j;
        int k;
        j = (int)l;
        k = i * (j + 1);
        calendar.add(5, k);
_L5:
        String s2 = a(calendar.get(5));
        String s3 = a(1 + calendar.get(2));
        as[0] = (new StringBuilder()).append(calendar.get(1)).append("-").append(s3).append("-").append(s2).toString();
        calendar.add(5, j);
        String s4 = a(calendar.get(5));
        String s5 = a(1 + calendar.get(2));
        as[1] = (new StringBuilder()).append(calendar.get(1)).append("-").append(s5).append("-").append(s4).toString();
        return as;
        Exception exception;
        exception;
        Exception exception1;
        exception1 = exception;
        j = 0;
_L3:
        BugSenseHandler.sendException(exception1);
        exception1.printStackTrace();
        continue; /* Loop/switch isn't completed */
        exception1;
        if (true) goto _L3; else goto _L2
_L2:
        j = 0;
        if (true) goto _L5; else goto _L4
_L4:
    }

    public static String b()
    {
        return (new SimpleDateFormat("yyyy-MM-dd HH:mm:ss")).format(new Date());
    }

    public static String b(String s)
    {
        SimpleDateFormat simpledateformat = new SimpleDateFormat("yyyy-MM-dd");
        Calendar calendar = Calendar.getInstance();
        try
        {
            calendar.setTime(simpledateformat.parse(s));
            calendar.add(5, -1);
        }
        catch (ParseException parseexception)
        {
            BugSenseHandler.sendException(parseexception);
            parseexception.printStackTrace();
        }
        return simpledateformat.format(calendar.getTime());
    }

    public static boolean b(String s, String s1)
    {
        int i;
        boolean flag;
        try
        {
            SimpleDateFormat simpledateformat = new SimpleDateFormat("HH:mm");
            i = simpledateformat.parse(s).compareTo(simpledateformat.parse(s1));
        }
        catch (Exception exception)
        {
            BugSenseHandler.sendException(exception);
            exception.printStackTrace();
            return false;
        }
        flag = false;
        if (i >= 0)
        {
            flag = true;
        }
        return flag;
    }

    public static String[] b(int i, int j)
    {
        String as[] = new String[2];
        new SimpleDateFormat("yyyy-MM-dd");
        Calendar calendar = Calendar.getInstance(TimeZone.getDefault());
        calendar.add(5, i * 7);
        for (; j != calendar.get(7); calendar.add(5, -1)) { }
        String s = a(calendar.get(5));
        String s1 = a(1 + calendar.get(2));
        as[0] = (new StringBuilder()).append(calendar.get(1)).append("-").append(s1).append("-").append(s).toString();
        calendar.add(5, 6);
        String s2 = a(calendar.get(5));
        String s3 = a(1 + calendar.get(2));
        as[1] = (new StringBuilder()).append(calendar.get(1)).append("-").append(s3).append("-").append(s2).toString();
        return as;
    }

    public static String c()
    {
        return (new SimpleDateFormat("yyyy-MM-dd HH:mm")).format(new Date());
    }

    public static String c(String s)
    {
        SimpleDateFormat simpledateformat = new SimpleDateFormat("yyyy-MM-dd HH:mm");
        String s1;
        try
        {
            Date date = simpledateformat.parse(s);
            s1 = (new SimpleDateFormat("HH:mm")).format(date);
        }
        catch (ParseException parseexception)
        {
            BugSenseHandler.sendException(parseexception);
            parseexception.printStackTrace();
            return s;
        }
        return s1;
    }

    public static boolean c(String s, String s1)
    {
        int i;
        try
        {
            SimpleDateFormat simpledateformat = new SimpleDateFormat("yyyy-MM-dd HH:mm");
            i = (new Date()).compareTo(simpledateformat.parse((new StringBuilder()).append(s).append(" ").append(s1).toString()));
        }
        catch (Exception exception)
        {
            BugSenseHandler.sendException(exception);
            exception.printStackTrace();
            return false;
        }
        return i <= 0;
    }

    public static int d()
    {
        return Calendar.getInstance().get(7);
    }

    public static String d(String s)
    {
        SimpleDateFormat simpledateformat = new SimpleDateFormat("yyyy-MM-dd");
        String s1;
        try
        {
            Date date = simpledateformat.parse(s);
            s1 = (new SimpleDateFormat("MMMM yyyy")).format(date);
        }
        catch (ParseException parseexception)
        {
            BugSenseHandler.sendException(parseexception);
            parseexception.printStackTrace();
            return s;
        }
        return s1;
    }

    public static String e()
    {
        return (new SimpleDateFormat("yyyy-MM-dd")).format(new Date());
    }

    public static String e(String s)
    {
        SimpleDateFormat simpledateformat = new SimpleDateFormat("yyyy-MM-dd");
        String s1;
        try
        {
            Date date = simpledateformat.parse(s);
            s1 = (new SimpleDateFormat("yyyy")).format(date);
        }
        catch (ParseException parseexception)
        {
            BugSenseHandler.sendException(parseexception);
            parseexception.printStackTrace();
            return s;
        }
        return s1;
    }

    public static String f()
    {
        return (new SimpleDateFormat("HH:mm")).format(new Date());
    }

    public static Calendar f(String s)
    {
        SimpleDateFormat simpledateformat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(simpledateformat.parse((new StringBuilder()).append(s).append(" 00:00:00").toString()));
        return calendar;
    }

    public static Calendar g(String s)
    {
        SimpleDateFormat simpledateformat = new SimpleDateFormat("yyyy-MM-dd HH:mm");
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(simpledateformat.parse((new StringBuilder("2011-09-07 ")).append(s).toString()));
        return calendar;
    }
}
