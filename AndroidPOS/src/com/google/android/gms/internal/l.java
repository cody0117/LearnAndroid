// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

// Referenced classes of package com.google.android.gms.internal:
//            h

final class l extends BroadcastReceiver
{

    final h a;

    l(h h1)
    {
        a = h1;
        super();
    }

    public final void onReceive(Context context, Intent intent)
    {
        a.b(false);
    }
}
