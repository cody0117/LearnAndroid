// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.f;

import com.aadhk.product.library.c.c;
import com.bugsense.trace.BugSenseHandler;
import java.text.ParseException;
import java.text.SimpleDateFormat;

public final class i extends c
{

    public static String c(String s, String s1)
    {
        SimpleDateFormat simpledateformat = new SimpleDateFormat("yyyy-MM-dd HH:mm");
        String s2;
        try
        {
            java.util.Date date = simpledateformat.parse(s);
            s2 = (new SimpleDateFormat((new StringBuilder()).append(s1).append(" hh:mm a").toString())).format(date);
        }
        catch (ParseException parseexception)
        {
            BugSenseHandler.sendException(parseexception);
            parseexception.printStackTrace();
            return s;
        }
        return s2;
    }

    public static String d(String s, String s1)
    {
        SimpleDateFormat simpledateformat = new SimpleDateFormat("yyyy-MM-dd");
        String s2;
        try
        {
            java.util.Date date = simpledateformat.parse(s);
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
}
