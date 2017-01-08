// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.tagmanager;


// Referenced classes of package com.google.android.gms.tagmanager:
//            x, a, bl

final class bk
{

    private a a;
    private bl b;
    private boolean c;

    public final void a()
    {
        this;
        JVM INSTR monitorenter ;
        if (!c) goto _L2; else goto _L1
_L1:
        x.a();
_L4:
        this;
        JVM INSTR monitorexit ;
        return;
_L2:
        b;
        if (true) goto _L4; else goto _L3
_L3:
        Exception exception;
        exception;
        throw exception;
    }

    public final void a(String s)
    {
        this;
        JVM INSTR monitorenter ;
        boolean flag = c;
        if (!flag) goto _L2; else goto _L1
_L1:
        this;
        JVM INSTR monitorexit ;
        return;
_L2:
        a.a(s);
        if (true) goto _L1; else goto _L3
_L3:
        Exception exception;
        exception;
        throw exception;
    }

    final String b()
    {
        if (c)
        {
            x.a();
            return "";
        } else
        {
            return a.a();
        }
    }

    final void c()
    {
        if (c)
        {
            x.a();
            return;
        } else
        {
            bl _tmp = b;
            return;
        }
    }

    final String d()
    {
        if (c)
        {
            x.a();
            return "";
        } else
        {
            return b.a();
        }
    }
}
