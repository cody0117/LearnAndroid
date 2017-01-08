// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos;

import com.bugsense.trace.BugSenseHandler;
import com.google.android.a.a.m;

// Referenced classes of package com.aadhk.restpos:
//            LoginActivity, aj

final class ai
    implements m
{

    final LoginActivity a;

    private ai(LoginActivity loginactivity)
    {
        a = loginactivity;
        super();
    }

    ai(LoginActivity loginactivity, byte byte0)
    {
        this(loginactivity);
    }

    public final void a()
    {
        if (!a.isFinishing());
    }

    public final void a(int i)
    {
        if (a.isFinishing())
        {
            return;
        } else
        {
            BugSenseHandler.addCrashExtraData("License", (new StringBuilder("application error:")).append(i).toString());
            return;
        }
    }

    public final void b()
    {
        if (a.isFinishing())
        {
            return;
        } else
        {
            aj aj1 = new aj(a, a);
            String s = a.getString(0x7f090006);
            Object aobj[] = new Object[1];
            aobj[0] = a.getString(0x7f090011);
            aj1.a(String.format(s, aobj));
            aj1.show();
            return;
        }
    }
}
