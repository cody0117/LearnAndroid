// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos;

import android.content.Intent;
import com.aadhk.restpos.c.aw;

// Referenced classes of package com.aadhk.restpos:
//            PayInOutActivity, ListTableActivity

final class ad
    implements aw
{

    final ListTableActivity a;

    ad(ListTableActivity listtableactivity)
    {
        a = listtableactivity;
        super();
    }

    public final void a()
    {
        Intent intent = new Intent(a, com/aadhk/restpos/PayInOutActivity);
        a.startActivity(intent);
    }
}
