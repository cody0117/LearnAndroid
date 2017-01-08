// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.app.Activity;
import android.os.AsyncTask;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ListView;
import android.widget.TextView;
import com.aadhk.product.library.a.d;
import com.aadhk.restpos.PriceScheduleActivity;
import com.aadhk.restpos.bean.PriceSchedule;
import com.aadhk.restpos.g.t;
import java.util.List;

// Referenced classes of package com.aadhk.restpos.d:
//            ge, gc

public final class gb extends Fragment
    implements android.widget.AdapterView.OnItemClickListener
{

    private List a;
    private ListView b;
    private TextView c;
    private PriceScheduleActivity d;
    private gc e;
    private LayoutInflater f;
    private t g;
    private int h;

    public gb()
    {
        h = -1;
    }

    static gc a(gb gb1, gc gc1)
    {
        gb1.e = gc1;
        return gc1;
    }

    static t a(gb gb1)
    {
        return gb1.g;
    }

    static List a(gb gb1, List list)
    {
        gb1.a = list;
        return list;
    }

    static gc b(gb gb1)
    {
        return gb1.e;
    }

    static ListView c(gb gb1)
    {
        return gb1.b;
    }

    static List d(gb gb1)
    {
        return gb1.a;
    }

    static TextView e(gb gb1)
    {
        return gb1.c;
    }

    static PriceScheduleActivity f(gb gb1)
    {
        return gb1.d;
    }

    static LayoutInflater g(gb gb1)
    {
        return gb1.f;
    }

    static int h(gb gb1)
    {
        return gb1.h;
    }

    public final void onActivityCreated(Bundle bundle)
    {
        super.onActivityCreated(bundle);
        g = d.a();
        (new d(new ge(this, (byte)0), d, (byte)0)).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null);
    }

    public final void onAttach(Activity activity)
    {
        d = (PriceScheduleActivity)activity;
        super.onAttach(activity);
    }

    public final void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        f = LayoutInflater.from(d);
    }

    public final View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        View view = layoutinflater.inflate(0x7f0300b3, viewgroup, false);
        b = (ListView)view.findViewById(0x7f0900a4);
        b.setOnItemClickListener(this);
        c = (TextView)view.findViewById(0x7f09016e);
        return view;
    }

    public final void onItemClick(AdapterView adapterview, View view, int i, long l)
    {
        PriceSchedule priceschedule = (PriceSchedule)a.get(i);
        if (d.c())
        {
            h = i;
            e.notifyDataSetChanged();
        }
        d.a(priceschedule);
    }
}
