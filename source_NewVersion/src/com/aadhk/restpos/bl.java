// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos;

import com.aadhk.a.d;
import com.aadhk.a.i;
import com.aadhk.a.k;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.aadhk.restpos:
//            PrinterActivity

final class bl
    implements i
{

    final PrinterActivity a;

    bl(PrinterActivity printeractivity)
    {
        a = printeractivity;
        super();
    }

    public final void a(k k1)
    {
        if (!k1.a())
        {
            return;
        } else
        {
            PrinterActivity.a(a);
            ArrayList arraylist = new ArrayList();
            arraylist.add("com.aadhk.restpos.feature.receipt");
            arraylist.add("com.aadhk.restpos.feature.kitchen");
            arraylist.add("com.aadhk.restpos.feature.kitchen2");
            arraylist.add("com.aadhk.restpos.feature.bar");
            PrinterActivity.b(a).a(arraylist, a.a);
            return;
        }
    }
}
