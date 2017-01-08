// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos;

import android.content.Intent;
import com.aadhk.restpos.c.bm;

// Referenced classes of package com.aadhk.restpos:
//            PayInOutActivity, TableListActivity

final class dm
    implements bm
{

    final TableListActivity a;

    dm(TableListActivity tablelistactivity)
    {
        a = tablelistactivity;
        super();
    }

    public final void a()
    {
        Intent intent = new Intent(a, com/aadhk/restpos/PayInOutActivity);
        a.startActivity(intent);
    }
}
