// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package yuku.ambilwarna;

import android.graphics.Color;

public final class d
{

    public static String a(int i)
    {
        String s = Integer.toHexString(Color.alpha(i));
        String s1 = Integer.toHexString(Color.red(i));
        String s2 = Integer.toHexString(Color.green(i));
        String s3 = Integer.toHexString(Color.blue(i));
        if (s.length() == 1)
        {
            s = (new StringBuilder("0")).append(s).toString();
        }
        if (s1.length() == 1)
        {
            s1 = (new StringBuilder("0")).append(s1).toString();
        }
        if (s2.length() == 1)
        {
            s2 = (new StringBuilder("0")).append(s2).toString();
        }
        if (s3.length() == 1)
        {
            s3 = (new StringBuilder("0")).append(s3).toString();
        }
        return (new StringBuilder("#")).append(s).append(s1).append(s2).append(s3).toString();
    }
}
