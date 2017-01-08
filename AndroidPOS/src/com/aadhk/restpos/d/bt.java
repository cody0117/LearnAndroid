// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.graphics.drawable.Drawable;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.Toast;
import com.aadhk.product.library.a.c;
import com.aadhk.restpos.g.u;
import com.aadhk.restpos.util.q;
import java.io.File;
import java.util.Map;

// Referenced classes of package com.aadhk.restpos.d:
//            bq

final class bt
    implements c
{

    final bq a;
    private Map b;

    private bt(bq bq1)
    {
        a = bq1;
        super();
    }

    bt(bq bq1, byte byte0)
    {
        this(bq1);
    }

    public final void a()
    {
        b = bq.b(a).a(bq.a(a));
    }

    public final void b()
    {
        String s = (String)b.get("serviceStatus");
        if ("1".equals(s))
        {
            String s1 = (String)b.get("serviceData");
            if (!(new File(s1)).exists())
            {
                com.aadhk.restpos.d.bq.c(a).setVisibility(8);
                bq.d(a).setImageResource(0x7f02009e);
                return;
            } else
            {
                bq.d(a).setImageDrawable(Drawable.createFromPath(s1));
                com.aadhk.restpos.d.bq.c(a).setVisibility(0);
                return;
            }
        }
        if ("10".equals(s) || "11".equals(s))
        {
            q.a(bq.e(a));
            Toast.makeText(bq.e(a), 0x7f080246, 1).show();
            return;
        }
        if ("9".equals(s))
        {
            Toast.makeText(bq.e(a), 0x7f080248, 1).show();
            return;
        } else
        {
            Toast.makeText(bq.e(a), 0x7f080247, 1).show();
            return;
        }
    }
}
