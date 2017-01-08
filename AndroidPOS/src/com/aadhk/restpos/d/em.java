// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.os.AsyncTask;
import android.text.TextUtils;
import android.widget.Toast;
import com.aadhk.product.library.a.c;
import com.aadhk.product.library.a.d;
import com.aadhk.restpos.TakeOrderActivity;
import com.aadhk.restpos.a.n;
import com.aadhk.restpos.bean.OrderItem;
import com.aadhk.restpos.e.f;
import com.aadhk.restpos.g.ad;
import com.aadhk.restpos.util.o;
import com.aadhk.restpos.util.q;
import com.aadhk.restpos.util.r;
import com.bugsense.trace.BugSenseHandler;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

// Referenced classes of package com.aadhk.restpos.d:
//            du, eh

final class em
    implements c
{

    final du a;
    private int b;
    private Map c;
    private OrderItem d;
    private String e;
    private String f;

    public em(du du1, OrderItem orderitem, String s, String s1)
    {
        a = du1;
        super();
        d = orderitem;
        f = s1;
        e = s;
    }

    public final void a()
    {
        try
        {
            d.setCancelReason(e);
            d.setEndTime(o.c());
            d.setStatus(1);
            if (!TextUtils.isEmpty(f))
            {
                d.setOrderQty(Integer.parseInt(f));
            }
            c = du.b(a).b(d);
            if (com.aadhk.restpos.d.du.c(a).k() && !du.j(a).isEmpty())
            {
                ArrayList arraylist = new ArrayList();
                arraylist.add(d);
                du.e(a).a(arraylist, false);
            }
            b = 0;
            return;
        }
        catch (Exception exception)
        {
            b = com.aadhk.restpos.e.f.a(exception);
            BugSenseHandler.sendException(exception);
            exception.printStackTrace();
            return;
        }
    }

    public final void b()
    {
        String s = (String)c.get("serviceStatus");
        if ("1".equals(s))
        {
            if (b != 0)
            {
                Toast.makeText(du.e(a), b, 1).show();
            }
            if (!TextUtils.isEmpty(f))
            {
                (new d(new eh(a, (byte)0), du.e(a), (byte)0)).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null);
                return;
            } else
            {
                du.k(a).notifyDataSetChanged();
                du.h(a);
                return;
            }
        }
        if ("10".equals(s) || "11".equals(s))
        {
            q.a(du.e(a));
            Toast.makeText(du.e(a), 0x7f080246, 1).show();
            return;
        }
        if ("9".equals(s))
        {
            Toast.makeText(du.e(a), 0x7f080248, 1).show();
            return;
        } else
        {
            Toast.makeText(du.e(a), 0x7f080247, 1).show();
            return;
        }
    }
}
