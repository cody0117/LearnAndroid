// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.content.res.Resources;
import android.widget.Toast;
import com.aadhk.product.library.b.f;
import com.aadhk.restpos.MgrItemActivity;
import com.aadhk.restpos.b.i;

// Referenced classes of package com.aadhk.restpos.d:
//            ag, ao

final class aj
    implements f
{

    final ag a;

    aj(ag ag1)
    {
        a = ag1;
        super();
    }

    public final void a(Object obj)
    {
        boolean aflag[] = (boolean[])obj;
        int j;
        byte byte0;
        if (aflag[0])
        {
            j = 1;
        } else
        {
            j = 0;
        }
        if (aflag[1])
        {
            byte0 = 2;
        } else
        {
            byte0 = 0;
        }
        ag.a().a(ag.b(a), j, byte0);
        ag.c(a).notifyDataSetChanged();
        ag.d(a).c();
        Toast.makeText(ag.d(a), ag.d(a).getResources().getString(0x7f09023e), 0).show();
    }
}
