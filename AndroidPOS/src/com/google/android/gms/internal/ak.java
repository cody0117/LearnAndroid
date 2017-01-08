// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import java.util.Comparator;

// Referenced classes of package com.google.android.gms.internal:
//            ao, aj

final class ak
    implements Comparator
{

    final aj a;

    ak(aj aj)
    {
        a = aj;
        super();
    }

    public final int compare(Object obj, Object obj1)
    {
        ao ao1 = (ao)obj;
        ao ao2 = (ao)obj1;
        return (int)(ao1.a - ao2.a);
    }
}
