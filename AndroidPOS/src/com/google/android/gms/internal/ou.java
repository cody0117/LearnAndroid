// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import java.util.ArrayList;

// Referenced classes of package com.google.android.gms.internal:
//            os

public abstract class ou
{

    final os a;
    private Object b;
    private boolean c;

    public ou(os os1, Object obj)
    {
        a = os1;
        super();
        b = obj;
        c = false;
    }

    public final void a()
    {
        this;
        JVM INSTR monitorenter ;
        Object obj;
        obj = b;
        if (c)
        {
            (new StringBuilder("Callback proxy ")).append(this).append(" being reused. This is not safe.");
        }
        this;
        JVM INSTR monitorexit ;
        Exception exception;
        if (obj != null)
        {
            try
            {
                a(obj);
            }
            catch (RuntimeException runtimeexception)
            {
                throw runtimeexception;
            }
        }
        this;
        JVM INSTR monitorenter ;
        c = true;
        this;
        JVM INSTR monitorexit ;
        b();
        return;
        exception;
        throw exception;
        Exception exception1;
        exception1;
        throw exception1;
    }

    protected abstract void a(Object obj);

    public final void b()
    {
        c();
        synchronized (os.c(a))
        {
            os.c(a).remove(this);
        }
    }

    public final void c()
    {
        this;
        JVM INSTR monitorenter ;
        b = null;
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
    }
}
