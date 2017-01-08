// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.widget.Toast;
import com.aadhk.product.library.a.c;
import com.aadhk.restpos.MgrModifierActivity;
import com.aadhk.restpos.bean.ModifierGroup;
import com.aadhk.restpos.g.l;
import com.aadhk.restpos.util.q;
import java.util.List;
import java.util.Map;

// Referenced classes of package com.aadhk.restpos.d:
//            db

final class dk
    implements c
{

    final db a;
    private Map b;

    private dk(db db1)
    {
        a = db1;
        super();
    }

    dk(db db1, byte byte0)
    {
        this(db1);
    }

    public final void a()
    {
        b = com.aadhk.restpos.d.db.c(a).b(db.e(a).getId());
    }

    public final void b()
    {
        String s = (String)b.get("serviceStatus");
        if ("1".equals(s))
        {
            List list = (List)b.get("serviceData");
            db.b(a).a(list);
            db.f(a);
            return;
        }
        if ("10".equals(s) || "11".equals(s))
        {
            q.a(db.b(a));
            Toast.makeText(db.b(a), 0x7f080246, 1).show();
            return;
        }
        if ("9".equals(s))
        {
            Toast.makeText(db.b(a), 0x7f080248, 1).show();
            return;
        } else
        {
            Toast.makeText(db.b(a), 0x7f080247, 1).show();
            return;
        }
    }
}
