// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.a.a;

import android.content.SharedPreferences;

// Referenced classes of package com.google.android.a.a:
//            o, t

public final class q
{

    private final SharedPreferences a;
    private final o b;
    private android.content.SharedPreferences.Editor c;

    public q(SharedPreferences sharedpreferences, o o1)
    {
        a = sharedpreferences;
        b = o1;
        c = null;
    }

    public final void a()
    {
        if (c != null)
        {
            c.commit();
            c = null;
        }
    }

    public final void a(String s, String s1)
    {
        if (c == null)
        {
            c = a.edit();
        }
        String s2 = b.a(s1, s);
        c.putString(s, s2);
    }

    public final String b(String s, String s1)
    {
        String s2 = a.getString(s, null);
        if (s2 != null)
        {
            String s3;
            try
            {
                s3 = b.b(s2, s);
            }
            catch (t t1)
            {
                (new StringBuilder("Validation error while reading preference: ")).append(s);
                return s1;
            }
            s1 = s3;
        }
        return s1;
    }
}
