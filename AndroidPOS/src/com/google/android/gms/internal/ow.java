// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Bundle;
import android.os.IBinder;

// Referenced classes of package com.google.android.gms.internal:
//            pl, px, os

public final class ow extends pl
{

    private os a;

    public ow(os os1)
    {
        a = os1;
    }

    public final void a(int i, IBinder ibinder, Bundle bundle)
    {
        px.a("onPostInitComplete can be called only once per call to getServiceFromBroker", a);
        a.a(i, ibinder, bundle);
        a = null;
    }
}
