// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.app.Activity;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ListView;
import android.widget.TextView;
import com.aadhk.restpos.PriceScheduleActivity;
import com.aadhk.restpos.b.q;
import com.aadhk.restpos.bean.PriceSchedule;
import java.util.List;

// Referenced classes of package com.aadhk.restpos.d:
//            dc

public final class db extends Fragment
    implements android.widget.AdapterView.OnItemClickListener
{

    private List a;
    private ListView b;
    private TextView c;
    private PriceScheduleActivity d;
    private q e;
    private dc f;
    private LayoutInflater g;
    private int h;

    public db()
    {
        h = -1;
    }

    static List a(db db1)
    {
        return db1.a;
    }

    static LayoutInflater b(db db1)
    {
        return db1.g;
    }

    static int c(db db1)
    {
        return db1.h;
    }

    public final void onActivityCreated(Bundle bundle)
    {
        super.onActivityCreated(bundle);
        e = new q(d.a());
        a = e.a();
        f = new dc(this, (byte)0);
        b.setAdapter(f);
        if (a.size() > 0)
        {
            c.setVisibility(8);
            return;
        } else
        {
            c.setVisibility(0);
            return;
        }
    }

    public final void onAttach(Activity activity)
    {
        d = (PriceScheduleActivity)activity;
        super.onAttach(activity);
    }

    public final void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        g = LayoutInflater.from(d);
    }

    public final View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        View view = layoutinflater.inflate(0x7f030096, viewgroup, false);
        b = (ListView)view.findViewById(0x7f0b0086);
        b.setOnItemClickListener(this);
        c = (TextView)view.findViewById(0x7f0b012a);
        return view;
    }

    public final void onItemClick(AdapterView adapterview, View view, int i, long l)
    {
        PriceSchedule priceschedule = (PriceSchedule)a.get(i);
        if (d.c())
        {
            h = i;
            f.notifyDataSetChanged();
        }
        d.a(priceschedule);
    }
}
