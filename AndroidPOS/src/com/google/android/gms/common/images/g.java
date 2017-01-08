// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.common.images;

import com.google.android.gms.internal.pt;
import java.lang.ref.WeakReference;
import java.util.Arrays;

// Referenced classes of package com.google.android.gms.common.images:
//            e, a, f

public final class g extends e
{

    private WeakReference e;

    protected final void a()
    {
        if ((a)e.get() != null)
        {
            android.net.Uri _tmp = a.a;
        }
    }

    public final boolean equals(Object obj)
    {
        if (!(obj instanceof g))
        {
            return false;
        }
        if (this == obj)
        {
            return true;
        }
        g g1 = (g)obj;
        a a1 = (a)e.get();
        a a2 = (a)g1.e.get();
        return a2 != null && a1 != null && pt.a(a2, a1) && pt.a(g1.a, a);
    }

    public final int hashCode()
    {
        Object aobj[] = new Object[1];
        aobj[0] = a;
        return Arrays.hashCode(aobj);
    }
}
