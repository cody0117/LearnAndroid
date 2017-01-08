// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.view.View;
import android.widget.AdapterView;
import android.widget.GridView;
import com.aadhk.restpos.POSApp;
import com.aadhk.restpos.TakeOrderActivity;
import com.aadhk.restpos.a.h;
import com.aadhk.restpos.bean.Category;
import java.util.List;
import java.util.Map;

// Referenced classes of package com.aadhk.restpos.d:
//            al, ao

final class am
    implements android.widget.AdapterView.OnItemClickListener
{

    final al a;

    am(al al1)
    {
        a = al1;
        super();
    }

    public final void onItemClick(AdapterView adapterview, View view, int i, long l)
    {
        al.a(a, i);
        al.e(a).notifyDataSetChanged();
        ((POSApp)al.b().getApplicationContext()).a(i);
        List list = (List)al.d().get(Long.valueOf(((Category)al.c().get(al.f(a))).getId()));
        al _tmp = a;
        List list1 = al.a(list);
        al.g(a).setAdapter(new h(al.b(), list1, (Category)al.c().get(i), al.e()));
    }
}
