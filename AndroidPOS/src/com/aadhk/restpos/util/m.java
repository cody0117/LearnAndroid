// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.util;

import java.math.BigDecimal;

public final class m
{

    public static double a(double d, double d1, double d2, double d3, 
            double d4, int i, boolean flag)
    {
        if (flag)
        {
            return (new BigDecimal(d)).subtract(new BigDecimal(d4)).add(new BigDecimal(d2)).add(new BigDecimal(d3)).setScale(i, 4).doubleValue();
        } else
        {
            return (new BigDecimal(d)).subtract(new BigDecimal(d4)).add(new BigDecimal(d2)).add(new BigDecimal(d3)).add(new BigDecimal(d1)).setScale(i, 4).doubleValue();
        }
    }

    public static double a(double d, double d1, double d2, double d3, 
            int i)
    {
        return (new BigDecimal(d)).add(new BigDecimal(d1)).add(new BigDecimal(d3)).subtract(new BigDecimal(d2)).setScale(i, 4).doubleValue();
    }

    public static double a(double d, double d1, double d2, int i)
    {
        return (new BigDecimal(d)).multiply(new BigDecimal(d1)).divide(new BigDecimal(d2), i, 4).doubleValue();
    }

    public static double a(double d, double d1, int i)
    {
        return (new BigDecimal(d)).multiply(new BigDecimal(d1)).divide(new BigDecimal(100), i, 4).doubleValue();
    }

    public static double a(double d, double d1, int i, boolean flag)
    {
        if (flag)
        {
            return (new BigDecimal(d)).multiply(new BigDecimal(d1)).divide(new BigDecimal(100D + d1), i, 4).doubleValue();
        } else
        {
            return (new BigDecimal(d)).multiply(new BigDecimal(d1)).divide(new BigDecimal(100), i, 4).doubleValue();
        }
    }

    public static double a(double d, int i, int j)
    {
        return (new BigDecimal(d)).multiply(new BigDecimal(i)).divide(new BigDecimal(100), j, 4).doubleValue();
    }

    public static boolean a(double d, double d1)
    {
        while (d == d1 || Math.abs(d - d1) < 0.001D) 
        {
            return true;
        }
        return false;
    }

    public static double b(double d, double d1)
    {
        if (d1 == 0.0D)
        {
            return 0.0D;
        } else
        {
            return (new BigDecimal(d)).multiply(new BigDecimal(100)).divide(new BigDecimal(d1), 5, 4).doubleValue();
        }
    }

    public static double b(double d, double d1, int i)
    {
        return (new BigDecimal(d)).subtract(new BigDecimal(d1)).setScale(i, 4).doubleValue();
    }

    public static double c(double d, double d1, int i)
    {
        return (new BigDecimal(d)).subtract(new BigDecimal(d1)).setScale(i, 4).doubleValue();
    }
}
