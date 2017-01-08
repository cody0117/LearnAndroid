// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.wifidirect;

import android.view.View;

// Referenced classes of package com.aadhk.restpos.wifidirect:
//            DeviceDetailFragment

final class c
    implements android.view.View.OnClickListener
{

    final DeviceDetailFragment a;

    c(DeviceDetailFragment devicedetailfragment)
    {
        a = devicedetailfragment;
        super();
    }

    public final void onClick(View view)
    {
        a.a();
    }
}
