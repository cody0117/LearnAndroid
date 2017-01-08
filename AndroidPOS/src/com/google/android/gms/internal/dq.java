// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.content.Context;
import android.os.Handler;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.google.android.gms.internal:
//            du, dt, dz, dx, 
//            fh, me, ds, ee

public final class dq
{

    private final fh a;
    private final ee b;
    private final Context c;
    private final Object d = new Object();
    private final du e;
    private boolean f;
    private dx g;

    public dq(Context context, fh fh1, ee ee, du du1)
    {
        f = false;
        c = context;
        a = fh1;
        b = ee;
        e = du1;
    }

    public final dz a(long l)
    {
        Iterator iterator = e.a.iterator();
_L4:
        dt dt1;
        Iterator iterator1;
        if (!iterator.hasNext())
        {
            break MISSING_BLOCK_LABEL_222;
        }
        dt1 = (dt)iterator.next();
        (new StringBuilder("Trying mediation network: ")).append(dt1.b);
        iterator1 = dt1.c.iterator();
_L2:
        String s;
label0:
        {
            if (!iterator1.hasNext())
            {
                break; /* Loop/switch isn't completed */
            }
            s = (String)iterator1.next();
            dz dz2;
            synchronized (d)
            {
                if (!f)
                {
                    break label0;
                }
                dz2 = new dz(-1);
            }
            return dz2;
        }
        g = new dx(c, s, b, e, dt1, a.c, a.d, a.k);
        obj;
        JVM INSTR monitorexit ;
        dz dz1;
        dz1 = g.a(l);
        if (dz1.a == 0)
        {
            break MISSING_BLOCK_LABEL_232;
        }
        if (dz1.c != null)
        {
            me.a.post(new ds(this, dz1));
        }
        if (true) goto _L2; else goto _L1
_L1:
        if (true) goto _L4; else goto _L3
_L3:
        exception;
        throw exception;
        dz1 = new dz(1);
        return dz1;
    }

    public final void a()
    {
        synchronized (d)
        {
            f = true;
            if (g != null)
            {
                g.a();
            }
        }
    }
}
