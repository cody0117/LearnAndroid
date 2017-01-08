// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos;

import android.widget.Toast;
import com.aadhk.product.library.a.c;
import com.aadhk.restpos.bean.POSPrinterSetting;
import com.aadhk.restpos.g.u;
import com.aadhk.restpos.util.q;
import java.util.Map;

// Referenced classes of package com.aadhk.restpos:
//            PrinterActivity

final class ct
    implements c
{

    final PrinterActivity a;
    private Map b;
    private int c;

    public ct(PrinterActivity printeractivity, int i)
    {
        a = printeractivity;
        super();
        c = i;
    }

    public final void a()
    {
        b = PrinterActivity.d(a).a(c);
    }

    public final void b()
    {
        String s = (String)b.get("serviceStatus");
        if ("1".equals(s))
        {
            PrinterActivity.a(a, (POSPrinterSetting)b.get("serviceData"));
            a.a();
            return;
        }
        if ("10".equals(s) || "11".equals(s))
        {
            q.a(a);
            Toast.makeText(a, 0x7f080246, 1).show();
            return;
        }
        if ("9".equals(s))
        {
            Toast.makeText(a, 0x7f080248, 1).show();
            return;
        } else
        {
            Toast.makeText(a, 0x7f080247, 1).show();
            return;
        }
    }
}
