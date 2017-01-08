// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.view.View;
import android.widget.AdapterView;
import android.widget.GridView;
import com.aadhk.restpos.POSApp;
import com.aadhk.restpos.TakeOrderActivity;
import com.aadhk.restpos.a.e;
import com.aadhk.restpos.bean.Category;
import java.util.List;
import java.util.Map;

// Referenced classes of package com.aadhk.restpos.d:
//            q, u

final class r
    implements android.widget.AdapterView.OnItemClickListener
{

    final q a;

    r(q q1)
    {
        a = q1;
        super();
    }

    public final void onItemClick(AdapterView adapterview, View view, int i, long l)
    {
        q.a(a, i);
        com.aadhk.restpos.d.q.e(a).notifyDataSetChanged();
        ((POSApp)q.a().getApplicationContext()).a(i);
        q.f(a).setAdapter(new e(q.a(), (List)q.c().get(Long.valueOf(((Category)q.b().get(i)).getId())), q.d(), (Category)q.b().get(i), com.aadhk.restpos.d.q.e()));
    }
}
