// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import com.aadhk.product.library.b.f;
import com.aadhk.restpos.c.u;

// Referenced classes of package com.aadhk.restpos.d:
//            db, dh

final class dc
    implements f
{

    final u a;
    final db b;

    dc(db db1, u u1)
    {
        b = db1;
        a = u1;
        super();
    }

    public final void a(Object obj)
    {
        db.a(b).notifyDataSetChanged();
        a.dismiss();
    }
}
