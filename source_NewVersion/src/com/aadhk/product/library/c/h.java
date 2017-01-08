// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.product.library.c;

import com.bugsense.trace.BugSenseHandler;
import java.text.DecimalFormat;
import java.text.NumberFormat;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class h
{

    public static String a(double d1)
    {
        DecimalFormat decimalformat = new DecimalFormat("#,###,##0.00");
        decimalformat.setMaximumFractionDigits(2);
        return decimalformat.format(d1);
    }

    public static String a(double d1, String s)
    {
        DecimalFormat decimalformat = new DecimalFormat((new StringBuilder("'")).append(s.replace("'", "''")).append("'#,###,##0.00").toString());
        decimalformat.setMaximumFractionDigits(2);
        return decimalformat.format(d1);
    }

    public static List a(long al[])
    {
        ArrayList arraylist = new ArrayList();
        for (int i = 0; i < al.length; i++)
        {
            arraylist.add(Long.valueOf(al[i]));
        }

        return arraylist;
    }

    public static boolean a(String s)
    {
        boolean flag = true;
        if (!Pattern.compile("^([a-z0-9A-Z]+[-|\\.]?)+[a-z0-9A-Z]@([a-z0-9A-Z]+(-[a-z0-9A-Z]+)?\\.)+[a-zA-Z]{2,}$").matcher(s).find())
        {
            flag = false;
        }
        return flag;
    }

    public static long[] a(List list)
    {
        long al[] = new long[list.size()];
        for (int i = 0; i < list.size(); i++)
        {
            al[i] = ((Long)list.get(i)).longValue();
        }

        return al;
    }

    public static String b(double d1)
    {
        String s = "";
        if (d1 != 0.0D)
        {
            s = c(d1);
        }
        return s;
    }

    public static String b(String s)
    {
        int i = s.indexOf("(");
        int j = s.indexOf(")");
        return s.substring(i + 1, j);
    }

    public static String c(double d1)
    {
        DecimalFormat decimalformat = (DecimalFormat)NumberFormat.getNumberInstance(Locale.US);
        decimalformat.applyPattern("##0.#");
        decimalformat.setMaximumFractionDigits(2);
        return decimalformat.format(d1);
    }

    public static String c(String s)
    {
        if (s == null)
        {
            s = "";
        }
        return s;
    }

    public static double d(String s)
    {
        if (s == null) goto _L2; else goto _L1
_L1:
        if (s.equals("")) goto _L2; else goto _L3
_L3:
        double d2 = ((DecimalFormat)NumberFormat.getNumberInstance(Locale.US)).parse(s).doubleValue();
        double d1 = d2;
_L5:
        return d1;
        ParseException parseexception;
        parseexception;
        BugSenseHandler.sendException(parseexception);
        parseexception.printStackTrace();
        return 0.0D;
_L2:
        d1 = 0.0D;
        if (true) goto _L5; else goto _L4
_L4:
    }

    public static int e(String s)
    {
        int i = 0;
        if (s != null)
        {
            boolean flag = "".equals(s);
            i = 0;
            if (!flag)
            {
                i = Integer.parseInt(s);
            }
        }
        return i;
    }
}
