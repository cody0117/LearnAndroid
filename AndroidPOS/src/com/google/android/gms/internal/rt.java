// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import com.google.android.gms.fitness.data.DataSource;

// Referenced classes of package com.google.android.gms.internal:
//            qw

public final class rt
{

    private static final ThreadLocal a = new ThreadLocal();

    public static DataSource a(DataSource datasource)
    {
        if (datasource.h())
        {
            String s = (String)a.get();
            if (!a() && !s.equals(datasource.d()))
            {
                return datasource.j();
            }
        }
        return datasource;
    }

    public static String a(String s)
    {
        String s1 = (String)a.get();
        if (s == null || s1 == null)
        {
            return s;
        } else
        {
            byte abyte0[] = new byte[s.length() + s1.length()];
            System.arraycopy(s.getBytes(), 0, abyte0, 0, s.length());
            System.arraycopy(s1.getBytes(), 0, abyte0, s.length(), s1.length());
            return Integer.toHexString(qw.a(abyte0, abyte0.length));
        }
    }

    public static boolean a()
    {
        String s = (String)a.get();
        return s == null || s.startsWith("com.google");
    }

}
