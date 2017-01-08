// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos;

import android.os.AsyncTask;
import android.view.View;
import android.widget.Spinner;
import android.widget.Toast;
import com.aadhk.product.library.a.c;
import com.aadhk.product.library.a.d;
import com.aadhk.restpos.a.at;
import com.aadhk.restpos.bean.TableGroup;
import com.aadhk.restpos.g.m;
import com.aadhk.restpos.util.q;
import java.util.List;
import java.util.Map;

// Referenced classes of package com.aadhk.restpos:
//            TableListActivity, dp

final class dq
    implements c
{

    final TableListActivity a;
    private Map b;

    private dq(TableListActivity tablelistactivity)
    {
        a = tablelistactivity;
        super();
    }

    dq(TableListActivity tablelistactivity, byte byte0)
    {
        this(tablelistactivity);
    }

    public final void a()
    {
        b = TableListActivity.a(a).b();
    }

    public final void b()
    {
        String s;
        s = (String)b.get("serviceStatus");
        if (!"1".equals(s))
        {
            break MISSING_BLOCK_LABEL_200;
        }
        TableListActivity.a(a, (List)b.get("serviceData"));
        if (TableListActivity.b(a).size() <= 1) goto _L2; else goto _L1
_L1:
        a.findViewById(0x7f09007c).setVisibility(0);
        com.aadhk.restpos.TableListActivity.c(a).setAdapter(new at(a, TableListActivity.b(a)));
_L4:
        return;
_L2:
        a.findViewById(0x7f09007c).setVisibility(8);
        if (TableListActivity.b(a).size() != 1) goto _L4; else goto _L3
_L3:
        TableListActivity.a(a, ((TableGroup)TableListActivity.b(a).get(0)).getTableGroupId());
        (new d(new dp(a, com.aadhk.restpos.TableListActivity.d(a)), a, (byte)0)).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null);
        return;
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
