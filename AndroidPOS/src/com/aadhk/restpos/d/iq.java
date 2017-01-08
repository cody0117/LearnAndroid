// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.view.View;
import android.widget.AdapterView;
import com.aadhk.restpos.RolePermissionActivity;

// Referenced classes of package com.aadhk.restpos.d:
//            ip, ir

final class iq
    implements android.widget.AdapterView.OnItemClickListener
{

    final ip a;

    iq(ip ip1)
    {
        a = ip1;
        super();
    }

    public final void onItemClick(AdapterView adapterview, View view, int i, long l)
    {
        if (ip.a(a).c())
        {
            ip.a(a, i);
            ip.b(a).notifyDataSetInvalidated();
        }
        ip.a(a).a(i + 1);
    }
}
