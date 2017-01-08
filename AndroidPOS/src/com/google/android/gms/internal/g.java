// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.content.Context;
import android.view.View;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.WeakHashMap;

// Referenced classes of package com.google.android.gms.internal:
//            p, h, la, mg, 
//            ay, gs

public final class g
    implements p
{

    private final Object a = new Object();
    private final WeakHashMap b = new WeakHashMap();
    private final ArrayList c = new ArrayList();

    public g()
    {
    }

    private boolean b(la la1)
    {
        Object obj = a;
        obj;
        JVM INSTR monitorenter ;
        h h1 = (h)b.get(la1);
        if (h1 == null) goto _L2; else goto _L1
_L1:
        if (!h1.f()) goto _L2; else goto _L3
_L3:
        boolean flag = true;
_L5:
        obj;
        JVM INSTR monitorexit ;
        return flag;
_L2:
        flag = false;
        if (true) goto _L5; else goto _L4
_L4:
        Exception exception;
        exception;
        throw exception;
    }

    public final h a(Context context, ay ay, la la1, View view, gs gs)
    {
label0:
        {
            h h2;
            synchronized (a)
            {
                if (!b(la1))
                {
                    break label0;
                }
                h2 = (h)b.get(la1);
            }
            return h2;
        }
        h h1;
        h1 = new h(context, ay, la1, view, gs);
        h1.a(this);
        b.put(la1, h1);
        c.add(h1);
        obj;
        JVM INSTR monitorexit ;
        return h1;
        exception;
        throw exception;
    }

    public final h a(ay ay, la la1)
    {
        return a(la1.b.getContext(), ay, la1, ((View) (la1.b)), la1.b.i());
    }

    public final void a()
    {
        Object obj = a;
        obj;
        JVM INSTR monitorenter ;
        for (Iterator iterator = c.iterator(); iterator.hasNext(); ((h)iterator.next()).g()) { }
        break MISSING_BLOCK_LABEL_44;
        Exception exception;
        exception;
        throw exception;
        obj;
        JVM INSTR monitorexit ;
    }

    public final void a(h h1)
    {
        synchronized (a)
        {
            if (!h1.f())
            {
                c.remove(h1);
            }
        }
    }

    public final void a(la la1)
    {
        Object obj = a;
        obj;
        JVM INSTR monitorenter ;
        h h1 = (h)b.get(la1);
        if (h1 == null)
        {
            break MISSING_BLOCK_LABEL_30;
        }
        h1.d();
        obj;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public final void b()
    {
        Object obj = a;
        obj;
        JVM INSTR monitorenter ;
        for (Iterator iterator = c.iterator(); iterator.hasNext(); ((h)iterator.next()).h()) { }
        break MISSING_BLOCK_LABEL_44;
        Exception exception;
        exception;
        throw exception;
        obj;
        JVM INSTR monitorexit ;
    }

    public final void c()
    {
        Object obj = a;
        obj;
        JVM INSTR monitorenter ;
        for (Iterator iterator = c.iterator(); iterator.hasNext(); ((h)iterator.next()).i()) { }
        break MISSING_BLOCK_LABEL_44;
        Exception exception;
        exception;
        throw exception;
        obj;
        JVM INSTR monitorexit ;
    }
}
