// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos;

import android.widget.Toast;
import com.aadhk.product.library.a.c;
import com.aadhk.restpos.g.h;
import com.aadhk.restpos.util.q;
import java.io.IOException;
import java.net.Socket;
import java.util.List;
import java.util.Map;

// Referenced classes of package com.aadhk.restpos:
//            KitchenActivity, DataTransferService

final class v
    implements c
{

    final KitchenActivity a;
    private Map b;
    private Socket c;

    public v(KitchenActivity kitchenactivity, Socket socket)
    {
        a = kitchenactivity;
        super();
        c = socket;
    }

    public final void a()
    {
        b = com.aadhk.restpos.KitchenActivity.c(a).a();
    }

    public final void b()
    {
        String s;
        s = (String)b.get("serviceStatus");
        if (!"1".equals(s))
        {
            break MISSING_BLOCK_LABEL_59;
        }
        KitchenActivity.a((List)b.get("serviceData"));
        DataTransferService.a(c, KitchenActivity.j());
_L1:
        return;
        IOException ioexception;
        ioexception;
        ioexception.printStackTrace();
        return;
        if ("10".equals(s) || "11".equals(s))
        {
            q.a(a, s);
            return;
        }
        if ("9".equals(s))
        {
            Toast.makeText(a, 0x7f0803a3, 1).show();
            return;
        }
          goto _L1
    }
}
