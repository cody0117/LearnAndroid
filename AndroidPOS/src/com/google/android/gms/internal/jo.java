// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.content.Context;
import android.os.Bundle;

// Referenced classes of package com.google.android.gms.internal:
//            jn, lf, bs, dp, 
//            kz, kg, fh, jm, 
//            ju

public final class jo extends jn
{

    private final Context a;

    public jo(Context context, fh fh, jm jm)
    {
        super(fh, jm);
        a = context;
    }

    public final void c()
    {
    }

    public final ju d()
    {
        Bundle bundle = lf.h();
        bs bs1 = new bs(bundle.getString("gads:sdk_core_location"), bundle.getString("gads:sdk_core_experiment_id"), bundle.getString("gads:block_autoclicks_experiment_id"), bundle.getString("gads:spam_app_context:experiment_id"));
        return kg.a(a, bs1, new dp(), new kz());
    }
}
