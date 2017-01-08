// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.c;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.Spinner;
import android.widget.TextView;
import com.aadhk.restpos.bean.Company;
import com.aadhk.restpos.bean.ServiceFee;
import java.util.List;

// Referenced classes of package com.aadhk.restpos.c:
//            cs, av, au

public final class at extends cs
    implements android.view.View.OnClickListener, android.widget.AdapterView.OnItemSelectedListener, android.widget.CompoundButton.OnCheckedChangeListener
{

    private Button e;
    private Button f;
    private TextView g;
    private CheckBox h;
    private Spinner i;
    private au j;
    private Company k;
    private LayoutInflater l;
    private List m;
    private int n;
    private int o;
    private int p;

    public at(Context context, Company company, int i1, List list)
    {
        super(context, 0x7f03004b);
        k = company;
        c = context;
        n = i1;
        m = list;
        l = LayoutInflater.from(context);
        e = (Button)findViewById(0x7f0900db);
        e.setOnClickListener(this);
        f = (Button)findViewById(0x7f09005b);
        f.setOnClickListener(this);
        g = (TextView)findViewById(0x7f090118);
        g.setOnClickListener(this);
        h = (CheckBox)findViewById(0x7f090119);
        i = (Spinner)findViewById(0x7f09011a);
        i.setAdapter(new av(this, (byte)0));
        i.setOnItemSelectedListener(this);
        h.setOnCheckedChangeListener(this);
        if (i1 == 0)
        {
            if (company.isIncludeServiceFeeDineIn())
            {
                g.setText(0x7f0801be);
            } else
            {
                g.setText(0x7f0801bf);
            }
            h.setChecked(company.isIncludeServiceFeeDineIn());
            p = a(company.getServiceFeeIdDineIn());
            i.setSelection(p);
        } else
        if (i1 == 1)
        {
            if (company.isIncludeServiceFeeTakeOut())
            {
                g.setText(0x7f0801be);
            } else
            {
                g.setText(0x7f0801bf);
            }
            h.setChecked(company.isIncludeServiceFeeTakeOut());
            p = a(company.getServiceFeeIdTakeOut());
            i.setSelection(p);
        } else
        if (i1 == 2)
        {
            if (company.isIncludeServiceFeeDelivery())
            {
                g.setText(0x7f0801be);
            } else
            {
                g.setText(0x7f0801bf);
            }
            h.setChecked(company.isIncludeServiceFeeDelivery());
            p = a(company.getServiceFeeIdDelivery());
            i.setSelection(p);
        }
        if (h.isChecked())
        {
            i.setEnabled(true);
            return;
        } else
        {
            i.setEnabled(false);
            return;
        }
    }

    private int a(int i1)
    {
        for (int j1 = 0; j1 < m.size(); j1++)
        {
            if (((ServiceFee)m.get(j1)).getId() == i1)
            {
                return j1;
            }
        }

        return 0;
    }

    static List a(at at1)
    {
        return at1.m;
    }

    static LayoutInflater b(at at1)
    {
        return at1.l;
    }

    static Company c(at at1)
    {
        return at1.k;
    }

    public final void a(au au1)
    {
        j = au1;
    }

    public final void onCheckedChanged(CompoundButton compoundbutton, boolean flag)
    {
        if (flag)
        {
            i.setEnabled(true);
            i.setSelection(p);
            g.setText(0x7f0801be);
            return;
        } else
        {
            o = -1;
            i.setSelection(0);
            i.setEnabled(false);
            g.setText(0x7f0801bf);
            return;
        }
    }

    public final void onClick(View view)
    {
        if (view != e) goto _L2; else goto _L1
_L1:
        if (j == null) goto _L4; else goto _L3
_L3:
        if (n != 0) goto _L6; else goto _L5
_L5:
        k.setIncludeServiceFeeDineIn(h.isChecked());
        k.setServiceFeeIdDineIn(o);
_L10:
        j.a(k);
_L4:
        dismiss();
_L8:
        return;
_L6:
        if (n == 1)
        {
            k.setIncludeServiceFeeTakeOut(h.isChecked());
            k.setServiceFeeIdTakeOut(o);
        } else
        if (n == 2)
        {
            k.setIncludeServiceFeeDelivery(h.isChecked());
            k.setServiceFeeIdDelivery(o);
        }
        continue; /* Loop/switch isn't completed */
_L2:
        if (view != f) goto _L8; else goto _L7
_L7:
        dismiss();
        return;
        if (true) goto _L10; else goto _L9
_L9:
    }

    public final void onItemSelected(AdapterView adapterview, View view, int i1, long l1)
    {
        o = ((ServiceFee)m.get(i1)).getId();
    }

    public final void onNothingSelected(AdapterView adapterview)
    {
    }
}
