// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.app.Activity;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.text.InputFilter;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.ToggleButton;
import com.aadhk.product.library.c.h;
import com.aadhk.restpos.MgrItemPickerActivity;
import com.aadhk.restpos.PriceScheduleActivity;
import com.aadhk.restpos.b.q;
import com.aadhk.restpos.bean.Company;
import com.aadhk.restpos.bean.PriceSchedule;
import com.aadhk.restpos.c.ax;
import com.aadhk.restpos.c.cg;
import com.aadhk.restpos.c.j;
import com.aadhk.restpos.f.e;
import com.aadhk.restpos.f.i;

// Referenced classes of package com.aadhk.restpos.d:
//            cx, cy, cz, da

public final class cw extends Fragment
    implements android.view.View.OnClickListener
{

    private String A;
    private String B;
    private EditText a;
    private EditText b;
    private EditText c;
    private EditText d;
    private EditText e;
    private EditText f;
    private TextView g;
    private PriceScheduleActivity h;
    private CheckBox i;
    private CheckBox j;
    private CheckBox k;
    private CheckBox l;
    private CheckBox m;
    private CheckBox n;
    private CheckBox o;
    private CheckBox p;
    private ToggleButton q;
    private Button r;
    private Button s;
    private Button t;
    private PriceSchedule u;
    private Company v;
    private q w;
    private String x;
    private int y;
    private String z;

    public cw()
    {
    }

    static String a(cw cw1)
    {
        return cw1.z;
    }

    static EditText b(cw cw1)
    {
        return cw1.b;
    }

    static PriceSchedule c(cw cw1)
    {
        return cw1.u;
    }

    static EditText d(cw cw1)
    {
        return cw1.c;
    }

    static EditText e(cw cw1)
    {
        return cw1.d;
    }

    static EditText f(cw cw1)
    {
        return cw1.e;
    }

    public final void onActivityCreated(Bundle bundle)
    {
        super.onActivityCreated(bundle);
        w = new q(h.a());
        PriceSchedule priceschedule;
        if (u == null)
        {
            u = new PriceSchedule();
            u.setDisAmt(false);
            u.setEnable(false);
            u.setStartDate(A);
            u.setEndDate(B);
            u.setStartTime(v.getTimeIn());
            u.setEndTime(v.getTimeOut());
        } else
        {
            s.setVisibility(0);
        }
        priceschedule = u;
        if (priceschedule != null)
        {
            a.setText(priceschedule.getName());
            f.setText(com.aadhk.product.library.c.h.b(priceschedule.getAmtRate()));
            b.setText(com.aadhk.restpos.f.i.d(priceschedule.getStartDate(), z));
            c.setText(com.aadhk.restpos.f.i.d(priceschedule.getEndDate(), z));
            d.setText(priceschedule.getStartTime());
            e.setText(priceschedule.getEndTime());
            if (priceschedule.isDisAmt())
            {
                g.setText(x);
                f.setHint(0x7f090303);
            } else
            {
                g.setText(0x7f0901a6);
                f.setHint(0x7f090304);
            }
            q.setChecked(priceschedule.isDisAmt());
            i.setChecked(priceschedule.isEnable());
            j.setChecked(priceschedule.isSun());
            k.setChecked(priceschedule.isMon());
            l.setChecked(priceschedule.isTue());
            m.setChecked(priceschedule.isWed());
            n.setChecked(priceschedule.isThu());
            o.setChecked(priceschedule.isFri());
            p.setChecked(priceschedule.isSat());
            return;
        } else
        {
            a.setText("");
            f.setText("");
            b.setText("");
            c.setText("");
            d.setText("");
            e.setText("");
            g.setText("");
            f.setHint(0x7f090303);
            q.setChecked(false);
            i.setChecked(false);
            j.setChecked(false);
            k.setChecked(false);
            l.setChecked(false);
            m.setChecked(false);
            n.setChecked(false);
            o.setChecked(false);
            p.setChecked(false);
            return;
        }
    }

    public final void onActivityResult(int i1, int j1, Intent intent)
    {
        if (j1 == -1 && i1 == 3)
        {
            long al[] = intent.getExtras().getLongArray("bundleItemPicker");
            u.setItemIds(com.aadhk.product.library.c.h.a(al));
        }
    }

    public final void onAttach(Activity activity)
    {
        h = (PriceScheduleActivity)activity;
        super.onAttach(activity);
    }

    public final void onClick(View view)
    {
        boolean flag = false;
        view.getId();
        JVM INSTR lookupswitch 8: default 80
    //                   2131427414: 237
    //                   2131427529: 737
    //                   2131427531: 803
    //                   2131427913: 81
    //                   2131427914: 120
    //                   2131427915: 159
    //                   2131427916: 198
    //                   2131427925: 759;
           goto _L1 _L2 _L3 _L4 _L5 _L6 _L7 _L8 _L9
_L1:
        return;
_L5:
        j j2 = new j(h, u.getStartDate());
        j2.a(new cx(this));
        j2.show();
        return;
_L6:
        j j1 = new j(h, u.getEndDate());
        j1.a(new cy(this));
        j1.show();
        return;
_L7:
        cg cg2 = new cg(h, u.getStartTime());
        cg2.a(new cz(this));
        cg2.show();
        return;
_L8:
        cg cg1 = new cg(h, u.getEndTime());
        cg1.a(new da(this));
        cg1.show();
        return;
_L2:
        String s1;
        double d1;
        String s2;
        String s3;
        String s4;
        String s5;
        s1 = a.getText().toString();
        d1 = com.aadhk.restpos.f.j.d(f.getText().toString());
        s2 = u.getStartDate();
        s3 = u.getEndDate();
        s4 = d.getText().toString();
        s5 = e.getText().toString();
        if (!s1.equals("")) goto _L11; else goto _L10
_L10:
        a.setError(getResources().getString(0x7f090055));
        a.requestFocus();
_L14:
        if (flag)
        {
            ax ax1;
            if (u.getId() > 0L)
            {
                w.b(u);
            } else
            {
                w.a(u);
            }
            h.b();
            return;
        }
        if (true) goto _L1; else goto _L11
_L11:
        a.setError(null);
        if (!com.aadhk.restpos.f.i.b(s4, s5)) goto _L13; else goto _L12
_L12:
        ax1 = new ax(h);
        ax1.a(0x7f090306);
        ax1.show();
        flag = false;
          goto _L14
_L13:
        if (!q.isChecked()) goto _L16; else goto _L15
_L15:
        if (d1 > 0.0D) goto _L18; else goto _L17
_L17:
        f.setError(getString(0x7f09028d));
        f.requestFocus();
        flag = false;
          goto _L14
_L16:
        if (q.isChecked() || d1 > 0.0D && d1 <= 100D) goto _L18; else goto _L19
_L19:
        f.setError(getString(0x7f09028c));
        f.requestFocus();
        flag = false;
          goto _L14
_L18:
        u.setName(s1);
        u.setDisAmt(q.isChecked());
        u.setEnable(i.isChecked());
        u.setAmtRate(Double.parseDouble((new StringBuilder()).append(d1).toString()));
        u.setStartDate(s2);
        u.setEndDate(s3);
        u.setStartTime(s4);
        u.setEndTime(s5);
        u.setSun(j.isChecked());
        u.setMon(k.isChecked());
        u.setTue(l.isChecked());
        u.setWed(m.isChecked());
        u.setThu(n.isChecked());
        u.setFri(o.isChecked());
        u.setSat(p.isChecked());
        flag = true;
          goto _L14
_L3:
        w.a(u.getId());
        h.b();
        return;
_L9:
        Intent intent = new Intent();
        intent.putExtra("bundleItemPicker", com.aadhk.product.library.c.h.a(u.getItemIds()));
        intent.setClass(h, com/aadhk/restpos/MgrItemPickerActivity);
        startActivityForResult(intent, 3);
        return;
_L4:
        if (q.isChecked())
        {
            g.setText(x);
            f.setHint(0x7f090303);
            return;
        } else
        {
            g.setText(0x7f0901a6);
            f.setHint(0x7f090304);
            return;
        }
    }

    public final void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setHasOptionsMenu(true);
        Bundle bundle1 = getArguments();
        if (bundle1 != null)
        {
            u = (PriceSchedule)bundle1.getParcelable("bundlePriceSchedule");
        }
        v = h.n();
        x = h.k();
        y = h.l();
        z = h.j();
        A = com.aadhk.restpos.f.i.e();
        B = com.aadhk.restpos.f.i.e();
    }

    public final void onCreateOptionsMenu(Menu menu, MenuInflater menuinflater)
    {
        if (getArguments() == null)
        {
            menu.removeItem(0x7f0b027f);
        }
        super.onCreateOptionsMenu(menu, menuinflater);
    }

    public final View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        View view = layoutinflater.inflate(0x7f0300af, null);
        g = (TextView)view.findViewById(0x7f0b00bc);
        a = (EditText)view.findViewById(0x7f0b0247);
        b = (EditText)view.findViewById(0x7f0b0249);
        c = (EditText)view.findViewById(0x7f0b024a);
        d = (EditText)view.findViewById(0x7f0b024b);
        e = (EditText)view.findViewById(0x7f0b024c);
        f = (EditText)view.findViewById(0x7f0b024d);
        i = (CheckBox)view.findViewById(0x7f0b0248);
        j = (CheckBox)view.findViewById(0x7f0b024e);
        k = (CheckBox)view.findViewById(0x7f0b0252);
        l = (CheckBox)view.findViewById(0x7f0b024f);
        m = (CheckBox)view.findViewById(0x7f0b0253);
        n = (CheckBox)view.findViewById(0x7f0b0250);
        o = (CheckBox)view.findViewById(0x7f0b0254);
        p = (CheckBox)view.findViewById(0x7f0b0251);
        q = (ToggleButton)view.findViewById(0x7f0b00cb);
        r = (Button)view.findViewById(0x7f0b0056);
        s = (Button)view.findViewById(0x7f0b00c9);
        t = (Button)view.findViewById(0x7f0b0255);
        b.setOnClickListener(this);
        c.setOnClickListener(this);
        d.setOnClickListener(this);
        e.setOnClickListener(this);
        r.setOnClickListener(this);
        s.setOnClickListener(this);
        t.setOnClickListener(this);
        q.setOnClickListener(this);
        EditText edittext = f;
        InputFilter ainputfilter[] = new InputFilter[2];
        ainputfilter[0] = new android.text.InputFilter.LengthFilter(13);
        ainputfilter[1] = new e(y);
        edittext.setFilters(ainputfilter);
        return view;
    }
}
