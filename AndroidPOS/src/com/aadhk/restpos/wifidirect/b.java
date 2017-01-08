// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.wifidirect;

import android.view.View;

// Referenced classes of package com.aadhk.restpos.wifidirect:
//            DeviceDetailFragment, g

final class b
    implements android.view.View.OnClickListener
{

    final DeviceDetailFragment a;

    b(DeviceDetailFragment devicedetailfragment)
    {
        a = devicedetailfragment;
        super();
    }

    public final void onClick(View view)
    {
        ((g)a.getActivity()).a();
    }
}
