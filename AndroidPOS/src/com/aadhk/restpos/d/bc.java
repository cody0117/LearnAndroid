// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import com.aadhk.product.library.b.f;
import com.aadhk.restpos.bean.KitchenNote;
import java.util.List;

// Referenced classes of package com.aadhk.restpos.d:
//            az, bf

final class bc
    implements f
{

    final az a;

    bc(az az1)
    {
        a = az1;
        super();
    }

    public final void a(Object obj)
    {
        KitchenNote kitchennote = (KitchenNote)obj;
        az.c(a).add(kitchennote);
        az.d(a).notifyDataSetChanged();
    }
}
