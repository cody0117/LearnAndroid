// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos;

import android.content.Intent;
import com.aadhk.restpos.c.aw;

// Referenced classes of package com.aadhk.restpos:
//            ReportListActivity, ListTableActivity

final class af
    implements aw
{

    final ListTableActivity a;

    af(ListTableActivity listtableactivity)
    {
        a = listtableactivity;
        super();
    }

    public final void a()
    {
        Intent intent = new Intent();
        intent.setClass(a, com/aadhk/restpos/ReportListActivity);
        a.startActivity(intent);
    }
}
