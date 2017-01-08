// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.a;

import android.os.Handler;
import java.util.List;

// Referenced classes of package com.aadhk.a:
//            c, k, d, g, 
//            j

final class f
    implements Runnable
{

    final d a;
    private final boolean b = true;
    private final List c;
    private final j d;
    private final Handler e;

    f(d d1, List list, j j, Handler handler)
    {
        a = d1;
        c = list;
        d = j;
        e = handler;
        super();
    }

    public final void run()
    {
        k k1 = new k(0, "Inventory refresh successful.");
        l l1 = a.a(b, c);
        l l = l1;
_L2:
        a.b();
        if (!a.d && d != null)
        {
            e.post(new g(this, d, k1, l));
        }
        return;
        c c1;
        c1;
        k1 = c1.a();
        l = null;
        continue; /* Loop/switch isn't completed */
        IllegalStateException illegalstateexception;
        illegalstateexception;
        k1 = new k(6, (new StringBuilder("IllegalStateException:")).append(illegalstateexception.getMessage()).toString());
        l = null;
        if (true) goto _L2; else goto _L1
_L1:
    }
}
