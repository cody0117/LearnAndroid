// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.app.Activity;
import android.content.Intent;
import android.content.res.Resources;
import android.os.AsyncTask;
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
import android.widget.GridView;
import android.widget.TextView;
import android.widget.ToggleButton;
import com.aadhk.product.library.a.d;
import com.aadhk.product.library.c.h;
import com.aadhk.restpos.MgrItemPickerActivity;
import com.aadhk.restpos.PriceScheduleActivity;
import com.aadhk.restpos.bean.Company;
import com.aadhk.restpos.bean.Item;
import com.aadhk.restpos.bean.PriceSchedule;
import com.aadhk.restpos.c.bo;
import com.aadhk.restpos.c.dr;
import com.aadhk.restpos.g.t;
import com.aadhk.restpos.util.g;
import com.aadhk.restpos.util.o;
import com.aadhk.restpos.util.p;
import com.aadhk.restpos.util.r;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

// Referenced classes of package com.aadhk.restpos.d:
//            fv, fr, fs, ft, 
//            fu, ga, fy, fz

public final class fq extends Fragment
    implements android.view.View.OnClickListener
{

    private Map A;
    private EditText a;
    private EditText b;
    private EditText c;
    private EditText d;
    private EditText e;
    private EditText f;
    private EditText g;
    private TextView h;
    private PriceScheduleActivity i;
    private CheckBox j;
    private ToggleButton k;
    private Button l;
    private Button m;
    private Button n;
    private PriceSchedule o;
    private Company p;
    private String q;
    private int r;
    private String s;
    private String t;
    private String u;
    private View v;
    private r w;
    private String x[];
    private Boolean y[];
    private t z;

    public fq()
    {
    }

    static PriceScheduleActivity a(fq fq1)
    {
        return fq1.i;
    }

    static Boolean[] b(fq fq1)
    {
        return fq1.y;
    }

    static String[] c(fq fq1)
    {
        return fq1.x;
    }

    static Map d(fq fq1)
    {
        return fq1.A;
    }

    static String e(fq fq1)
    {
        return fq1.s;
    }

    static EditText f(fq fq1)
    {
        return fq1.b;
    }

    static PriceSchedule g(fq fq1)
    {
        return fq1.o;
    }

    static EditText h(fq fq1)
    {
        return fq1.c;
    }

    static EditText i(fq fq1)
    {
        return fq1.d;
    }

    static EditText j(fq fq1)
    {
        return fq1.e;
    }

    static t k(fq fq1)
    {
        return fq1.z;
    }

    static r l(fq fq1)
    {
        return fq1.w;
    }

    public final void onActivityCreated(Bundle bundle)
    {
        super.onActivityCreated(bundle);
        z = i.a();
        w = new r(i);
        A = new HashMap();
        x = (new String[] {
            "prefCbSuns", "prefCbTues", "prefCbThus", "prefCbSats", "prefCbMons", "prefCbWeds", "prefCbFris"
        });
        View view;
        String as[];
        EditText edittext;
        InputFilter ainputfilter[];
        PriceSchedule priceschedule;
        if (o == null)
        {
            o = new PriceSchedule();
            o.setDiscountAmt(false);
            o.setEnable(false);
            o.setStartDate(t);
            o.setEndDate(u);
            o.setStartTime(p.getTimeIn());
            o.setEndTime(p.getTimeOut());
            String as1[] = x;
            int j1 = as1.length;
            for (int k1 = 0; k1 < j1; k1++)
            {
                String s1 = as1[k1];
                A.put(s1, Boolean.valueOf(false));
            }

            Boolean aboolean1[] = new Boolean[7];
            aboolean1[0] = Boolean.valueOf(false);
            aboolean1[1] = Boolean.valueOf(false);
            aboolean1[2] = Boolean.valueOf(false);
            aboolean1[3] = Boolean.valueOf(false);
            aboolean1[4] = Boolean.valueOf(false);
            aboolean1[5] = Boolean.valueOf(false);
            aboolean1[6] = Boolean.valueOf(false);
            y = aboolean1;
        } else
        {
            Boolean aboolean[] = new Boolean[7];
            aboolean[0] = Boolean.valueOf(o.isSun());
            aboolean[1] = Boolean.valueOf(o.isTue());
            aboolean[2] = Boolean.valueOf(o.isThu());
            aboolean[3] = Boolean.valueOf(o.isSat());
            aboolean[4] = Boolean.valueOf(o.isMon());
            aboolean[5] = Boolean.valueOf(o.isWed());
            aboolean[6] = Boolean.valueOf(o.isFri());
            y = aboolean;
            int i1 = 0;
            while (i1 < y.length) 
            {
                A.put(x[i1], y[i1]);
                i1++;
            }
        }
        view = v;
        h = (TextView)view.findViewById(0x7f0900df);
        a = (EditText)view.findViewById(0x7f0902bf);
        b = (EditText)view.findViewById(0x7f0902c1);
        c = (EditText)view.findViewById(0x7f0902c2);
        d = (EditText)view.findViewById(0x7f0902c3);
        e = (EditText)view.findViewById(0x7f0902c4);
        f = (EditText)view.findViewById(0x7f0902c5);
        g = (EditText)view.findViewById(0x7f0902c7);
        k = (ToggleButton)view.findViewById(0x7f0900de);
        j = (CheckBox)view.findViewById(0x7f0902c0);
        as = i.getResources().getStringArray(0x7f0e001a);
        ((GridView)view.findViewById(0x7f090259)).setAdapter(new fv(this, as));
        l = (Button)view.findViewById(0x7f09005a);
        m = (Button)view.findViewById(0x7f0900dc);
        n = (Button)view.findViewById(0x7f0902c6);
        b.setOnClickListener(this);
        c.setOnClickListener(this);
        d.setOnClickListener(this);
        e.setOnClickListener(this);
        l.setOnClickListener(this);
        m.setOnClickListener(this);
        n.setOnClickListener(this);
        k.setOnClickListener(this);
        if (o != null)
        {
            m.setVisibility(0);
        }
        edittext = f;
        ainputfilter = new InputFilter[2];
        ainputfilter[0] = new android.text.InputFilter.LengthFilter(13);
        ainputfilter[1] = new g(r);
        edittext.setFilters(ainputfilter);
        priceschedule = o;
        if (priceschedule != null)
        {
            a.setText(priceschedule.getName());
            f.setText(com.aadhk.product.library.c.h.b(priceschedule.getAmtRate()));
            b.setText(com.aadhk.restpos.util.o.e(priceschedule.getStartDate(), s));
            c.setText(com.aadhk.restpos.util.o.e(priceschedule.getEndDate(), s));
            d.setText(priceschedule.getStartTime());
            e.setText(priceschedule.getEndTime());
            if (priceschedule.isDiscountAmt())
            {
                h.setText(q);
                f.setHint(0x7f080363);
            } else
            {
                h.setText(0x7f0801e1);
                f.setHint(0x7f080364);
            }
            g.setText(priceschedule.getItemNames());
            k.setChecked(priceschedule.isDiscountAmt());
            j.setChecked(priceschedule.isEnable());
            return;
        } else
        {
            a.setText("");
            f.setText("");
            b.setText("");
            c.setText("");
            d.setText("");
            e.setText("");
            h.setText("");
            f.setHint(0x7f080363);
            k.setChecked(false);
            j.setChecked(false);
            return;
        }
    }

    public final void onActivityResult(int i1, int j1, Intent intent)
    {
        if (j1 == -1 && i1 == 3)
        {
            java.util.ArrayList arraylist = intent.getExtras().getParcelableArrayList("bundleItemPicker");
            long al[] = new long[arraylist.size()];
            String s1 = "";
            int k1 = 0;
            while (k1 < arraylist.size()) 
            {
                Item item = (Item)arraylist.get(k1);
                al[k1] = item.getId();
                String s2;
                if (k1 == 0)
                {
                    s2 = item.getName();
                } else
                {
                    s2 = (new StringBuilder()).append(s1).append(", ").append(item.getName()).toString();
                }
                k1++;
                s1 = s2;
            }
            g.setText(s1);
            o.setItemIds(com.aadhk.product.library.c.h.a(al));
            o.setItemNames(s1);
        }
    }

    public final void onAttach(Activity activity)
    {
        i = (PriceScheduleActivity)activity;
        super.onAttach(activity);
    }

    public final void onClick(View view)
    {
        view.getId();
        JVM INSTR lookupswitch 8: default 80
    //                   2131296346: 237
    //                   2131296476: 824
    //                   2131296478: 899
    //                   2131296961: 81
    //                   2131296962: 120
    //                   2131296963: 159
    //                   2131296964: 198
    //                   2131296966: 854;
           goto _L1 _L2 _L3 _L4 _L5 _L6 _L7 _L8 _L9
_L1:
        return;
_L5:
        com.aadhk.restpos.c.g g2 = new com.aadhk.restpos.c.g(i, o.getStartDate());
        g2.a(new fr(this));
        g2.show();
        return;
_L6:
        com.aadhk.restpos.c.g g1 = new com.aadhk.restpos.c.g(i, o.getEndDate());
        g1.a(new fs(this));
        g1.show();
        return;
_L7:
        dr dr2 = new dr(i, o.getStartTime());
        dr2.a(new ft(this));
        dr2.show();
        return;
_L8:
        dr dr1 = new dr(i, o.getEndTime());
        dr1.a(new fu(this));
        dr1.show();
        return;
_L2:
        String s1;
        double d1;
        String s2;
        String s3;
        String s4;
        String s5;
        s1 = a.getText().toString();
        d1 = com.aadhk.restpos.util.p.d(f.getText().toString());
        s2 = o.getStartDate();
        s3 = o.getEndDate();
        s4 = d.getText().toString();
        s5 = e.getText().toString();
        if (!s1.equals("")) goto _L11; else goto _L10
_L10:
        boolean flag;
        a.setError(getString(0x7f080085));
        a.requestFocus();
        flag = false;
_L14:
        if (flag)
        {
            if (o.getId() > 0L)
            {
                (new d(new ga(this, (byte)0), i, (byte)0)).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null);
                return;
            } else
            {
                (new d(new fy(this, (byte)0), i, (byte)0)).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null);
                return;
            }
        }
        if (true) goto _L1; else goto _L11
_L11:
        a.setError(null);
        if (!com.aadhk.restpos.util.o.b(s4, s5)) goto _L13; else goto _L12
_L12:
        bo bo1 = new bo(i);
        bo1.a(0x7f080366);
        bo1.show();
        flag = false;
          goto _L14
_L13:
        if (!k.isChecked()) goto _L16; else goto _L15
_L15:
        if (d1 > 0.0D) goto _L18; else goto _L17
_L17:
        f.setError(getString(0x7f0802ec));
        f.requestFocus();
        flag = false;
          goto _L14
_L16:
        if (k.isChecked() || d1 > 0.0D && d1 <= 100D) goto _L18; else goto _L19
_L19:
        f.setError(getString(0x7f0802eb));
        f.requestFocus();
        flag = false;
          goto _L14
_L18:
        o.setName(s1);
        o.setDiscountAmt(k.isChecked());
        o.setEnable(j.isChecked());
        o.setAmtRate(d1);
        o.setStartDate(s2);
        o.setEndDate(s3);
        o.setStartTime(s4);
        o.setEndTime(s5);
        o.setSun(((Boolean)A.get("prefCbSuns")).booleanValue());
        o.setMon(((Boolean)A.get("prefCbMons")).booleanValue());
        o.setTue(((Boolean)A.get("prefCbTues")).booleanValue());
        o.setWed(((Boolean)A.get("prefCbWeds")).booleanValue());
        o.setThu(((Boolean)A.get("prefCbThus")).booleanValue());
        o.setFri(((Boolean)A.get("prefCbFris")).booleanValue());
        o.setSat(((Boolean)A.get("prefCbSats")).booleanValue());
        flag = true;
          goto _L14
_L3:
        (new d(new fz(this, (byte)0), i, (byte)0)).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null);
        return;
_L9:
        Intent intent = new Intent();
        intent.putExtra("bundleItemPicker", com.aadhk.product.library.c.h.a(o.getItemIds()));
        intent.setClass(i, com/aadhk/restpos/MgrItemPickerActivity);
        startActivityForResult(intent, 3);
        return;
_L4:
        if (k.isChecked())
        {
            h.setText(q);
            f.setHint(0x7f080363);
            return;
        } else
        {
            h.setText(0x7f0801e1);
            f.setHint(0x7f080364);
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
            o = (PriceSchedule)bundle1.getParcelable("bundlePriceSchedule");
        }
        p = i.v();
        q = i.s();
        r = i.t();
        s = i.q();
        t = com.aadhk.restpos.util.o.e();
        u = com.aadhk.restpos.util.o.e();
    }

    public final void onCreateOptionsMenu(Menu menu, MenuInflater menuinflater)
    {
        if (getArguments() == null)
        {
            menu.removeItem(0x7f090301);
        }
        super.onCreateOptionsMenu(menu, menuinflater);
    }

    public final View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        v = layoutinflater.inflate(0x7f0300ce, null);
        return v;
    }
}
