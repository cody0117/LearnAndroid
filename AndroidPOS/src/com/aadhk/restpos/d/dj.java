// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.widget.Toast;
import com.aadhk.product.library.a.c;
import com.aadhk.restpos.bean.Modifier;
import com.aadhk.restpos.g.l;
import com.aadhk.restpos.util.q;
import java.util.List;
import java.util.Map;

// Referenced classes of package com.aadhk.restpos.d:
//            db, dh

final class dj
    implements c
{

    final db a;
    private Map b;
    private Modifier c;

    public dj(db db1, Modifier modifier)
    {
        a = db1;
        super();
        c = modifier;
    }

    public final void a()
    {
        b = com.aadhk.restpos.d.db.c(a).a(c.getId());
    }

    public final void b()
    {
        String s = (String)b.get("serviceStatus");
        if ("1".equals(s))
        {
            db.d(a).remove(c);
            db.a(a).notifyDataSetChanged();
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