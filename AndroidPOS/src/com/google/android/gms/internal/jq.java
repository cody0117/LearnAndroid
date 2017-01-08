// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import com.google.android.gms.common.api.b;
import com.google.android.gms.common.api.c;

// Referenced classes of package com.google.android.gms.internal:
//            os, jv, pn, ju, 
//            ow

public final class jq extends os
{

    final int a;

    public jq(Context context, b b1, c c1, int i)
    {
        super(context, context.getMainLooper(), b1, c1, new String[0]);
        a = i;
    }

    protected final IInterface a(IBinder ibinder)
    {
        return jv.a(ibinder);
    }

    protected final String a()
    {
        return "com.google.android.gms.ads.service.START";
    }

    protected final void a(pn pn1, ow ow)
    {
        Bundle bundle = new Bundle();
        pn1.g(ow, a, h().getPackageName(), bundle);
    }

    protected final String b()
    {
        return "com.google.android.gms.ads.internal.request.IAdRequestService";
    }

    public final ju c()
    {
        return (ju)super.i();
    }
}
