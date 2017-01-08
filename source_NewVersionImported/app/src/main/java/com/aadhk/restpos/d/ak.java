// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.content.res.Resources;
import android.widget.Toast;
import com.aadhk.product.library.b.f;
import com.aadhk.restpos.MgrItemActivity;
import com.aadhk.restpos.b.i;
import java.util.List;

// Referenced classes of package com.aadhk.restpos.d:
//            ag, ao

final class ak
    implements f
{

    final List a;
    final ag b;

    ak(ag ag1, List list)
    {
        b = ag1;
        a = list;
        super();
    }

    public final void a(Object obj)
    {
        int j = ((Integer)obj).intValue();
        if (j > 0)
        {
            int k = j - 1;
            j = ((Integer)a.get(k)).intValue();
        }
        ag.a().a(ag.b(b), j);
        ag.c(b).notifyDataSetChanged();
        ag.d(b).c();
        Toast.makeText(ag.d(b), ag.d(b).getResources().getString(0x7f09023e), 0).show();
    }
}
