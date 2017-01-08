// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.util;

import com.aadhk.product.library.c.h;
import java.text.DecimalFormat;
import java.text.NumberFormat;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public final class p extends h
{

    public static String a(int i, double d, String s)
    {
        String s1 = (new StringBuilder("'")).append(s.replace("'", "''")).append("'#,###,##0").toString();
        String s2;
        if (i == 0)
        {
            s2 = (new StringBuilder()).append(s1).toString();
        } else
        if (i == 1)
        {
            s2 = (new StringBuilder()).append(s1).append(".0").toString();
        } else
        {
            s2 = (new StringBuilder()).append(s1).append(".00").toString();
        }
        return (new DecimalFormat(s2)).format(d);
    }

    public static String b(int i, double d, String s)
    {
        String s1 = (new StringBuilder("'")).append(s.replace("'", "''")).append("'#,###,##0").toString();
        String s2;
        DecimalFormat decimalformat;
        if (i == 0)
        {
            s2 = (new StringBuilder()).append(s1).toString();
        } else
        if (i == 1)
        {
            s2 = (new StringBuilder()).append(s1).append(".0").toString();
        } else
        {
            s2 = (new StringBuilder()).append(s1).append(".00").toString();
        }
        decimalformat = (DecimalFormat)NumberFormat.getNumberInstance(Locale.US);
        decimalformat.applyPattern(s2);
        return decimalformat.format(d);
    }

    public static String f(String s)
    {
        if (s != null && !s.equals(""))
        {
            Matcher matcher = Pattern.compile("([0-9]+)").matcher(s);
            StringBuffer stringbuffer = new StringBuffer();
            do
            {
                if (!matcher.find())
                {
                    break;
                }
                String s1 = matcher.group(1);
                if (matcher.hitEnd())
                {
                    Object aobj[] = new Object[1];
                    aobj[0] = Integer.valueOf(s1.length());
                    String s2 = String.format("%%0%dd", aobj);
                    Object aobj1[] = new Object[1];
                    aobj1[0] = Long.valueOf(1L + Long.parseLong(s1));
                    matcher.appendReplacement(stringbuffer, String.format(s2, aobj1));
                }
            } while (true);
            matcher.appendTail(stringbuffer);
            return stringbuffer.toString();
        } else
        {
            return "A-00001";
        }
    }
}
