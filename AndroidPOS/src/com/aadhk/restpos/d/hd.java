// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.widget.Toast;
import com.aadhk.product.library.a.c;
import com.aadhk.restpos.ReceiptListActivity;
import com.aadhk.restpos.bean.Order;
import com.aadhk.restpos.g.v;
import com.aadhk.restpos.util.q;
import java.util.Map;

// Referenced classes of package com.aadhk.restpos.d:
//            gz

final class hd
    implements c
{

    final gz a;
    private Map b;

    private hd(gz gz1)
    {
        a = gz1;
        super();
    }

    hd(gz gz1, byte byte0)
    {
        this(gz1);
    }

    public final void a()
    {
        b = gz.h(a).a(gz.d(a).getId());
    }

    public final void b()
    {
        String s = (String)b.get("serviceStatus");
        if ("1".equals(s))
        {
            gz.b(a).a();
            return;
        }
        if ("10".equals(s) || "11".equals(s))
        {
            q.a(gz.b(a));
            Toast.makeText(gz.b(a), 0x7f080246, 1).show();
            return;
        }
        if ("9".equals(s))
        {
            Toast.makeText(gz.b(a), 0x7f080248, 1).show();
            return;
        } else
        {
            Toast.makeText(gz.b(a), 0x7f080247, 1).show();
            return;
        }
    }
}
