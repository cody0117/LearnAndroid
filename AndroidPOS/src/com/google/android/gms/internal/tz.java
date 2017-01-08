// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Bundle;

// Referenced classes of package com.google.android.gms.internal:
//            lf, ua

public final class tz
{

    private ua a;
    private boolean b;
    private boolean c;

    public tz()
    {
        Bundle bundle = lf.h();
        boolean flag = false;
        if (bundle != null)
        {
            boolean flag1 = bundle.getBoolean("gads:block_autoclicks", false);
            flag = false;
            if (flag1)
            {
                flag = true;
            }
        }
        c = flag;
    }

    public tz(byte byte0)
    {
        c = false;
    }

    public final void a()
    {
        b = true;
    }

    public final void a(ua ua1)
    {
        a = ua1;
    }

    public final void a(String s)
    {
        if (a != null)
        {
            a.a(s);
        }
    }

    public final boolean b()
    {
        return !c || b;
    }
}
