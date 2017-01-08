// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.content.Context;
import android.os.DeadObjectException;
import com.google.android.gms.common.api.b;
import com.google.android.gms.common.api.c;

// Referenced classes of package com.google.android.gms.internal:
//            jn, jq, fh, gs, 
//            fj, jm, ju

public final class jp extends jn
    implements b, c
{

    private final jm a;
    private final jq b;
    private final Object c = new Object();

    public jp(Context context, fh fh1, jm jm1)
    {
        super(fh1, jm1);
        a = jm1;
        b = new jq(context, this, this, fh1.k.d);
        b.d();
    }

    public final void b()
    {
        e();
    }

    public final void c()
    {
        synchronized (c)
        {
            if (b.e() || b.f())
            {
                b.g();
            }
        }
    }

    public final ju d()
    {
        obj;
        JVM INSTR monitorenter ;
        IllegalStateException illegalstateexception;
        ju ju;
        synchronized (c)
        {
            ju = b.c();
        }
        return ju;
        illegalstateexception;
_L2:
        obj;
        JVM INSTR monitorexit ;
        return null;
        DeadObjectException deadobjectexception;
        deadobjectexception;
        if (true) goto _L2; else goto _L1
_L1:
    }

    public final void t_()
    {
        a.a(new fj(0));
    }
}
