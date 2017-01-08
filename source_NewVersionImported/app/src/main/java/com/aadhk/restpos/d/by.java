// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.app.Activity;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ListView;
import android.widget.TextView;
import com.aadhk.restpos.PayInOutActivity;
import com.aadhk.restpos.b.a;
import com.aadhk.restpos.bean.CashRegister;
import com.aadhk.restpos.c.az;
import com.aadhk.restpos.f.i;
import java.util.List;

// Referenced classes of package com.aadhk.restpos.d:
//            bz, ca

public final class by extends Fragment
    implements android.widget.AdapterView.OnItemClickListener
{

    private PayInOutActivity a;
    private List b;
    private TextView c;
    private ListView d;
    private View e;
    private int f;
    private String g;
    private String h;
    private String i;
    private String j;
    private String k;
    private String l;
    private String m;

    public by()
    {
    }

    static PayInOutActivity a(by by1)
    {
        return by1.a;
    }

    public final void onActivityCreated(Bundle bundle)
    {
        super.onActivityCreated(bundle);
    }

    public final void onAttach(Activity activity)
    {
        super.onAttach(activity);
        a = (PayInOutActivity)activity;
    }

    public final void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        f = a.d();
        j = a.j();
        l = a.h();
        m = a.i();
        Bundle bundle1 = getArguments();
        if (bundle1 != null)
        {
            h = bundle1.getString("fromDate");
            i = bundle1.getString("toDate");
        }
    }

    public final View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        e = layoutinflater.inflate(0x7f0300a9, null);
        return e;
    }

    public final void onItemClick(AdapterView adapterview, View view, int i1, long l1)
    {
        CashRegister cashregister = (CashRegister)b.get(i1);
        String s = cashregister.getDate();
        String s1 = cashregister.getTime();
        String s2 = (new StringBuilder()).append(s).append(" ").append(s1).toString();
        if (TextUtils.isEmpty(k) || s2.compareTo(k) > 0)
        {
            az az1 = new az(a, cashregister, cashregister.getTranxType());
            az1.b();
            az1.a(new bz(this));
            az1.a(new ca(this, cashregister));
            az1.show();
        }
    }

    public final void onResume()
    {
        super.onResume();
        c = (TextView)e.findViewById(0x7f0b0118);
        d = (ListView)e.findViewById(0x7f0b0086);
        d.setOnItemClickListener(this);
        if (f != 4) goto _L2; else goto _L1
_L1:
        g = com.aadhk.restpos.f.i.d(h, j);
_L4:
        c.setText(g);
        if (com.aadhk.restpos.f.i.b(l, m))
        {
            i = com.aadhk.restpos.f.i.a(i);
        }
        k = a.b();
        b = a.c().a((new StringBuilder()).append(h).append(" ").append(l).toString(), (new StringBuilder()).append(i).append(" ").append(m).toString());
        d.setAdapter(new com.aadhk.restpos.a.a(a, b, k));
        TextView textview = (TextView)e.findViewById(0x7f0b012a);
        if (b.size() <= 0)
        {
            textview.setVisibility(0);
        }
        return;
_L2:
        if (f == 3 || f == 5)
        {
            g = (new StringBuilder()).append(com.aadhk.restpos.f.i.d(h, j)).append(" / ").append(com.aadhk.restpos.f.i.d(i, j)).toString();
        } else
        if (f == 2)
        {
            g = com.aadhk.restpos.f.i.d(h);
        } else
        if (f == 1)
        {
            g = com.aadhk.restpos.f.i.e(h);
        }
        if (true) goto _L4; else goto _L3
_L3:
    }
}
