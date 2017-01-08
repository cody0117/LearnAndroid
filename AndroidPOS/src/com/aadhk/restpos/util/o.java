// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.util;

import com.aadhk.product.library.c.c;
import com.bugsense.trace.BugSenseHandler;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public final class o extends c
{

    public static String a(String s, String s1, String s2)
    {
        SimpleDateFormat simpledateformat = new SimpleDateFormat("yyyy-MM-dd HH:mm");
        String s3;
        try
        {
            Date date = simpledateformat.parse(s);
            s3 = (new SimpleDateFormat((new StringBuilder()).append(s1).append(" ").append(s2).toString())).format(date);
        }
        catch (ParseException parseexception)
        {
            BugSenseHandler.sendException(parseexception);
            parseexception.printStackTrace();
            return s;
        }
        return s3;
    }

    public static String d(String s, String s1)
    {
        SimpleDateFormat simpledateformat = new SimpleDateFormat("yyyy-MM-dd HH:mm");
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

    public static String e(String s, String s1)
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

    public static long f(String s, String s1)
    {
        long l;
        try
        {
            SimpleDateFormat simpledateformat = new SimpleDateFormat("yyyy-MM-dd HH:mm");
            l = (simpledateformat.parse(s1).getTime() - simpledateformat.parse(s).getTime()) / 60000L;
        }
        catch (ParseException parseexception)
        {
            BugSenseHandler.sendException(parseexception);
            parseexception.printStackTrace();
            return 0L;
        }
        return l;
    }
}
