// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.content.Intent;
import android.widget.Toast;
import com.aadhk.product.library.a.c;
import com.aadhk.restpos.TableListActivity;
import com.aadhk.restpos.bean.User;
import com.aadhk.restpos.g.i;
import java.util.Map;

// Referenced classes of package com.aadhk.restpos.d:
//            bm

final class bo
    implements c
{

    final bm a;
    private Map b;

    bo(bm bm1)
    {
        a = bm1;
        super();
    }

    public final void a()
    {
        b = bm.e(a).a(bm.d(a));
    }

    public final void b()
    {
        String s = (String)b.get("serviceStatus");
        if ("1".equals(s))
        {
            bm.a(a, (User)b.get("serviceData"));
            bm.f(a);
            Intent intent = new Intent();
            intent.setClass(bm.b(a), com/aadhk/restpos/TableListActivity);
            intent.setFlags(0x4000000);
            a.startActivityForResult(intent, 0);
            return;
        }
        if ("3".equals(s))
        {
            Toast.makeText(bm.b(a), 0x7f080257, 1).show();
            return;
        }
        if ("2".equals(s))
        {
            Toast.makeText(bm.b(a), 0x7f080256, 1).show();
            return;
        }
        if ("4".equals(s))
        {
            Toast.makeText(bm.b(a), 0x7f08025a, 1).show();
            return;
        }
        if ("9".equals(s))
        {
            Toast.makeText(bm.b(a), 0x7f080248, 1).show();
            return;
        } else
        {
            Toast.makeText(bm.b(a), 0x7f080247, 1).show();
            return;
        }
    }
}
