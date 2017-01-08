// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import com.aadhk.product.library.b.g;
import com.aadhk.restpos.bean.KitchenNote;
import java.util.List;

// Referenced classes of package com.aadhk.restpos.d:
//            az, bf

final class be
    implements g
{

    final KitchenNote a;
    final az b;

    be(az az1, KitchenNote kitchennote)
    {
        b = az1;
        a = kitchennote;
        super();
    }

    public final void a()
    {
        az.c(b).remove(a);
        az.d(b).notifyDataSetChanged();
    }
}
