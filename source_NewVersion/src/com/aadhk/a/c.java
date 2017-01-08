// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.a;


// Referenced classes of package com.aadhk.a:
//            k

public final class c extends Exception
{

    k a;

    public c(int i, String s)
    {
        this(new k(i, s));
    }

    public c(int i, String s, Exception exception)
    {
        this(new k(i, s), exception);
    }

    private c(k k1)
    {
        this(k1, ((Exception) (null)));
    }

    private c(k k1, Exception exception)
    {
        super(k1.b, exception);
        a = k1;
    }

    public final k a()
    {
        return a;
    }
}
