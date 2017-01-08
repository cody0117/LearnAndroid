// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ThreadFactory;

// Referenced classes of package com.google.android.gms.internal:
//            lp, ln, lo, lu

public final class lm
{

    private static final ThreadFactory a;
    private static final ExecutorService b;

    public static Future a(Runnable runnable)
    {
        return a(((Callable) (new ln(runnable))));
    }

    public static Future a(Callable callable)
    {
        Future future;
        try
        {
            future = b.submit(new lo(callable));
        }
        catch (RejectedExecutionException rejectedexecutionexception)
        {
            return new lu();
        }
        return future;
    }

    static 
    {
        a = new lp();
        b = Executors.newFixedThreadPool(10, a);
    }
}
