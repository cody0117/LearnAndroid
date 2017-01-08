// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.content.Context;
import android.os.Bundle;
import android.view.MotionEvent;
import java.util.Iterator;
import java.util.List;
import java.util.Vector;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.atomic.AtomicReference;

// Referenced classes of package com.google.android.gms.internal:
//            le, me, lm, lf, 
//            ty, gs, oi

final class ud
    implements le, Runnable
{

    CountDownLatch a;
    private final List b = new Vector();
    private final AtomicReference c = new AtomicReference();
    private ty d;

    public ud(ty ty1)
    {
        a = new CountDownLatch(1);
        d = ty1;
        if (me.b())
        {
            lm.a(this);
            return;
        } else
        {
            run();
            return;
        }
    }

    private boolean a()
    {
        try
        {
            a.await();
        }
        catch (InterruptedException interruptedexception)
        {
            return false;
        }
        return true;
    }

    private static Context b(Context context)
    {
        Context context1;
        if (lf.h().getBoolean("gads:spam_app_context:enabled", false))
        {
            if ((context1 = context.getApplicationContext()) != null)
            {
                return context1;
            }
        }
        return context;
    }

    private void b()
    {
        if (!b.isEmpty())
        {
            Iterator iterator = b.iterator();
            while (iterator.hasNext()) 
            {
                Object aobj[] = (Object[])iterator.next();
                if (aobj.length == 1)
                {
                    ((le)c.get()).a((MotionEvent)aobj[0]);
                } else
                if (aobj.length == 3)
                {
                    ((le)c.get()).a(((Integer)aobj[0]).intValue(), ((Integer)aobj[1]).intValue(), ((Integer)aobj[2]).intValue());
                }
            }
        }
    }

    public final String a(Context context)
    {
        if (a())
        {
            le le1 = (le)c.get();
            if (le1 != null)
            {
                b();
                return le1.a(b(context));
            }
        }
        return "";
    }

    public final String a(Context context, String s)
    {
        if (a())
        {
            le le1 = (le)c.get();
            if (le1 != null)
            {
                b();
                return le1.a(b(context), s);
            }
        }
        return "";
    }

    public final void a(int i, int j, int k)
    {
        le le1 = (le)c.get();
        if (le1 != null)
        {
            b();
            le1.a(i, j, k);
            return;
        } else
        {
            List list = b;
            Object aobj[] = new Object[3];
            aobj[0] = Integer.valueOf(i);
            aobj[1] = Integer.valueOf(j);
            aobj[2] = Integer.valueOf(k);
            list.add(((Object) (aobj)));
            return;
        }
    }

    public final void a(MotionEvent motionevent)
    {
        le le1 = (le)c.get();
        if (le1 != null)
        {
            b();
            le1.a(motionevent);
            return;
        } else
        {
            b.add(((Object) (new Object[] {
                motionevent
            })));
            return;
        }
    }

    public final void run()
    {
        oi oi1 = oi.a(d.e.b, b(d.c));
        c.set(oi1);
        a.countDown();
        d = null;
        return;
        Exception exception;
        exception;
        a.countDown();
        d = null;
        throw exception;
    }
}
