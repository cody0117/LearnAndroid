// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.widget.Toast;
import com.aadhk.product.library.a.c;
import com.aadhk.restpos.bean.SplitBill;
import com.aadhk.restpos.g.ab;
import com.aadhk.restpos.util.q;
import java.util.List;
import java.util.Map;

// Referenced classes of package com.aadhk.restpos.d:
//            jh

final class jw
    implements c
{

    final jh a;
    private Map b;
    private SplitBill c;
    private int d;

    public jw(jh jh1, SplitBill splitbill, int i)
    {
        a = jh1;
        super();
        c = splitbill;
        d = i;
    }

    public final void a()
    {
        b = jh.b(a).a(c);
    }

    public final void b()
    {
        String s = (String)b.get("serviceStatus");
        if ("1".equals(s))
        {
            com.aadhk.restpos.d.jh.c(a).remove(d);
            com.aadhk.restpos.d.jh.c(a).add(c);
            a.a();
            return;
        }
        if ("10".equals(s) || "11".equals(s))
        {
            q.a(jh.a(a));
            Toast.makeText(jh.a(a), 0x7f080246, 1).show();
            return;
        }
        if ("9".equals(s))
        {
            Toast.makeText(jh.a(a), 0x7f080248, 1).show();
            return;
        } else
        {
            Toast.makeText(jh.a(a), 0x7f080247, 1).show();
            return;
        }
    }
}
