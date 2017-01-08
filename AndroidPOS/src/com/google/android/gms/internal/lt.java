// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import java.util.concurrent.CancellationException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

public final class lt
    implements Future
{

    private final Object a = new Object();
    private Object b;
    private boolean c;
    private boolean d;

    public lt()
    {
        b = null;
        c = false;
        d = false;
    }

    public final void a(Object obj)
    {
        synchronized (a)
        {
            if (c)
            {
                throw new IllegalStateException("Provided CallbackFuture with multiple values.");
            }
            break MISSING_BLOCK_LABEL_29;
        }
        c = true;
        b = obj;
        a;
        obj1;
        JVM INSTR monitorexit ;
    }

    public final boolean cancel(boolean flag)
    {
        if (!flag)
        {
            return false;
        }
        synchronized (a)
        {
            if (!c)
            {
                break MISSING_BLOCK_LABEL_29;
            }
        }
        return false;
        exception;
        throw exception;
        d = true;
        c = true;
        a;
        obj;
        JVM INSTR monitorexit ;
        return true;
    }

    public final Object get()
    {
        Object obj = a;
        obj;
        JVM INSTR monitorenter ;
        boolean flag = c;
        if (flag)
        {
            break MISSING_BLOCK_LABEL_21;
        }
        Exception exception;
        Object obj1;
        try
        {
            a;
        }
        catch (InterruptedException interruptedexception) { }
        if (d)
        {
            throw new CancellationException("CallbackFuture was cancelled.");
        }
        break MISSING_BLOCK_LABEL_43;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
        obj1 = b;
        obj;
        JVM INSTR monitorexit ;
        return obj1;
    }

    public final Object get(long l, TimeUnit timeunit)
    {
        Object obj = a;
        obj;
        JVM INSTR monitorenter ;
        boolean flag = c;
        if (flag)
        {
            break MISSING_BLOCK_LABEL_35;
        }
        Exception exception;
        Object obj1;
        try
        {
            if (timeunit.toMillis(l) != 0L)
            {
                a;
            }
        }
        catch (InterruptedException interruptedexception) { }
        if (!c)
        {
            throw new TimeoutException("CallbackFuture timed out.");
        }
        break MISSING_BLOCK_LABEL_60;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
        if (d)
        {
            throw new CancellationException("CallbackFuture was cancelled.");
        }
        obj1 = b;
        obj;
        JVM INSTR monitorexit ;
        return obj1;
    }

    public final boolean isCancelled()
    {
        boolean flag;
        synchronized (a)
        {
            flag = d;
        }
        return flag;
    }

    public final boolean isDone()
    {
        boolean flag;
        synchronized (a)
        {
            flag = c;
        }
        return flag;
    }
}
