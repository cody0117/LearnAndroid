// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos;

import android.content.Intent;
import android.os.Bundle;
import android.widget.Toast;
import com.aadhk.product.library.a.c;
import com.aadhk.restpos.bean.Order;
import com.aadhk.restpos.g.ad;
import com.aadhk.restpos.util.q;
import java.util.Map;

// Referenced classes of package com.aadhk.restpos:
//            TakeOrderActivity, SplitBillActivity

final class ef
    implements c
{

    final TakeOrderActivity a;
    private Map b;
    private long c;

    public ef(TakeOrderActivity takeorderactivity, long l)
    {
        a = takeorderactivity;
        super();
        c = l;
    }

    public final void a()
    {
        b = TakeOrderActivity.a(a).b(c);
    }

    public final void b()
    {
        String s = (String)b.get("serviceStatus");
        if ("1".equals(s))
        {
            if (TakeOrderActivity.b(a).getSplitType() == 1)
            {
                Intent intent = new Intent();
                Bundle bundle = new Bundle();
                bundle.putShort("bundleSplitType", (short)1);
                bundle.putParcelable("bundleOrder", TakeOrderActivity.b(a));
                intent.putExtras(bundle);
                intent.setClass(a, com/aadhk/restpos/SplitBillActivity);
                a.startActivity(intent);
                a.finish();
                return;
            }
            if (TakeOrderActivity.b(a).getSplitType() == 2)
            {
                Intent intent1 = new Intent();
                Bundle bundle1 = new Bundle();
                bundle1.putShort("bundleSplitType", (short)2);
                bundle1.putParcelable("bundleOrder", TakeOrderActivity.b(a));
                intent1.putExtras(bundle1);
                intent1.setClass(a, com/aadhk/restpos/SplitBillActivity);
                a.startActivity(intent1);
                a.finish();
                return;
            } else
            {
                android.view.View view = a.findViewById(0x7f090086);
                a.a(view);
                return;
            }
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
