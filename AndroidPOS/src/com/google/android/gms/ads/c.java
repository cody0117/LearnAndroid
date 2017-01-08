// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.ads;

import android.location.Location;
import android.os.Bundle;
import com.google.android.gms.internal.bn;
import java.util.Date;

// Referenced classes of package com.google.android.gms.ads:
//            b

public final class c
{

    private final bn a = new bn();

    public c()
    {
    }

    static bn a(c c1)
    {
        return c1.a;
    }

    public final b a()
    {
        return new b(this, (byte)0);
    }

    public final c a(int i)
    {
        a.a(i);
        return this;
    }

    public final c a(Location location)
    {
        a.a(location);
        return this;
    }

    public final c a(Class class1, Bundle bundle)
    {
        a.a(class1, bundle);
        return this;
    }

    public final c a(String s)
    {
        a.a(s);
        return this;
    }

    public final c a(Date date)
    {
        a.a(date);
        return this;
    }

    public final c a(boolean flag)
    {
        a.a(flag);
        return this;
    }

    public final c b(String s)
    {
        a.b(s);
        return this;
    }
}
