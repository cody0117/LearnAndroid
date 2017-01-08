// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.c;

import android.content.Context;
import android.content.res.Resources;
import android.view.View;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.TextView;
import com.aadhk.product.library.c.h;
import com.aadhk.restpos.bean.Company;

// Referenced classes of package com.aadhk.restpos.c:
//            cs, an, ao, bo

public final class am extends cs
    implements android.view.View.OnClickListener
{

    private Button e;
    private Button f;
    private EditText g;
    private EditText h;
    private EditText i;
    private EditText j;
    private EditText k;
    private EditText l;
    private EditText m;
    private TextView n;
    private CheckBox o;
    private CheckBox p;
    private CheckBox q;
    private CheckBox r;
    private Company s;
    private ao t;
    private boolean u;
    private boolean v;
    private boolean w;

    public am(Context context, Company company, boolean flag, boolean flag1, boolean flag2)
    {
        super(context, 0x7f030046);
        setTitle(0x7f0801c0);
        s = company;
        e = (Button)findViewById(0x7f09005a);
        e.setOnClickListener(this);
        f = (Button)findViewById(0x7f09005b);
        f.setOnClickListener(this);
        g = (EditText)findViewById(0x7f0900fc);
        h = (EditText)findViewById(0x7f0900fd);
        i = (EditText)findViewById(0x7f0900fe);
        j = (EditText)findViewById(0x7f0900ff);
        k = (EditText)findViewById(0x7f090100);
        l = (EditText)findViewById(0x7f090101);
        m = (EditText)findViewById(0x7f090102);
        o = (CheckBox)findViewById(0x7f090103);
        p = (CheckBox)findViewById(0x7f090107);
        q = (CheckBox)findViewById(0x7f090109);
        r = (CheckBox)findViewById(0x7f090105);
        n = (TextView)findViewById(0x7f090104);
        o.setOnClickListener(this);
        g.setOnFocusChangeListener(new an(this));
        if (s.getTax1() != 0.0D)
        {
            h.setText((new StringBuilder()).append(s.getTax1()).toString());
        }
        g.setText(s.getTax1Name());
        if (s.getTax2() != 0.0D)
        {
            j.setText((new StringBuilder()).append(s.getTax2()).toString());
        }
        i.setText(s.getTax2Name());
        if (s.getTax3() != 0.0D)
        {
            l.setText((new StringBuilder()).append(s.getTax3()).toString());
        }
        k.setText(s.getTax3Name());
        o.setChecked(s.isItemPriceIncludeTax());
        if (o.isChecked())
        {
            n.setText(0x7f080344);
        } else
        {
            n.setText(0x7f080345);
        }
        p.setChecked(s.isServiceAfterTax());
        q.setChecked(s.isDeliveryAfterTax());
        r.setChecked(s.isDiscountAfterTax());
        m.setText(s.getTaxNumber());
        u = flag;
        v = flag1;
        w = flag2;
    }

    public final void a(ao ao1)
    {
        t = ao1;
    }

    public final void onClick(View view)
    {
        boolean flag = false;
        if (view == e)
        {
            String s2 = g.getText().toString();
            String s3 = h.getText().toString();
            String s4 = i.getText().toString();
            String s5 = j.getText().toString();
            String s6 = k.getText().toString();
            String s7 = l.getText().toString();
            String s8 = m.getText().toString();
            if (!s3.equals("") && s2.equals(""))
            {
                g.setError(a.getString(0x7f080085));
                g.requestFocus();
            } else
            {
                g.setError(null);
                if (!s2.equals("") && s3.equals(""))
                {
                    h.setError(a.getString(0x7f080085));
                    h.requestFocus();
                    flag = false;
                } else
                {
                    h.setError(null);
                    if (!s5.equals("") && s4.equals(""))
                    {
                        i.setError(a.getString(0x7f080085));
                        i.requestFocus();
                        flag = false;
                    } else
                    {
                        i.setError(null);
                        if (!s4.equals("") && s5.equals(""))
                        {
                            j.setError(a.getString(0x7f080085));
                            j.requestFocus();
                            flag = false;
                        } else
                        {
                            j.setError(null);
                            if (!s7.equals("") && s6.equals(""))
                            {
                                k.setError(a.getString(0x7f080085));
                                k.requestFocus();
                                flag = false;
                            } else
                            {
                                k.setError(null);
                                if (!s6.equals("") && s7.equals(""))
                                {
                                    l.setError(a.getString(0x7f080085));
                                    l.requestFocus();
                                    flag = false;
                                } else
                                {
                                    l.setError(null);
                                    if (s2.equals("") && (!s4.equals("") || !s5.equals("")))
                                    {
                                        g.setError(a.getString(0x7f080085));
                                        g.requestFocus();
                                        flag = false;
                                    } else
                                    {
                                        g.setError(null);
                                        if (!s2.equals("") && s3.equals("") && (!s4.equals("") || !s5.equals("")))
                                        {
                                            h.setError(a.getString(0x7f080085));
                                            h.requestFocus();
                                            flag = false;
                                        } else
                                        {
                                            h.setError(null);
                                            if (s2.equals("") && (!s6.equals("") || !s7.equals("")))
                                            {
                                                g.setError(a.getString(0x7f080085));
                                                g.requestFocus();
                                                flag = false;
                                            } else
                                            {
                                                g.setError(null);
                                                if (!s2.equals("") && s3.equals("") && (!s6.equals("") || !s7.equals("")))
                                                {
                                                    h.setError(a.getString(0x7f080085));
                                                    h.requestFocus();
                                                    flag = false;
                                                } else
                                                {
                                                    h.setError(null);
                                                    if (s4.equals("") && (!s6.equals("") || !s7.equals("")))
                                                    {
                                                        i.setError(a.getString(0x7f080085));
                                                        i.requestFocus();
                                                        flag = false;
                                                    } else
                                                    {
                                                        i.setError(null);
                                                        if (!s4.equals("") && s5.equals("") && (!s6.equals("") || !s7.equals("")))
                                                        {
                                                            j.setError(a.getString(0x7f080085));
                                                            j.requestFocus();
                                                            flag = false;
                                                        } else
                                                        {
                                                            j.setError(null);
                                                            if (o.isChecked() && s2.equals(""))
                                                            {
                                                                g.setError(a.getString(0x7f080085));
                                                                g.requestFocus();
                                                                flag = false;
                                                            } else
                                                            {
                                                                g.setError(null);
                                                                if (s2.equals("") && u)
                                                                {
                                                                    bo bo4 = new bo(c);
                                                                    bo4.a(0x7f0801c4);
                                                                    bo4.show();
                                                                    flag = false;
                                                                } else
                                                                if (s4.equals("") && v)
                                                                {
                                                                    bo bo3 = new bo(c);
                                                                    bo3.a(0x7f0801c4);
                                                                    bo3.show();
                                                                    flag = false;
                                                                } else
                                                                if (s6.equals("") && w)
                                                                {
                                                                    bo bo2 = new bo(c);
                                                                    bo2.a(0x7f0801c4);
                                                                    bo2.show();
                                                                    flag = false;
                                                                } else
                                                                {
                                                                    s.setTax1(com.aadhk.product.library.c.h.d(s3));
                                                                    s.setTax1Name(s2);
                                                                    s.setTax2(com.aadhk.product.library.c.h.d(s5));
                                                                    s.setTax2Name(s4);
                                                                    s.setTax3(com.aadhk.product.library.c.h.d(s7));
                                                                    s.setTax3Name(s6);
                                                                    s.setItemPriceIncludeTax(o.isChecked());
                                                                    s.setServiceAfterTax(p.isChecked());
                                                                    s.setDeliveryAfterTax(q.isChecked());
                                                                    s.setDiscountAfterTax(r.isChecked());
                                                                    s.setTaxNumber(s8);
                                                                    flag = true;
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
            if (flag)
            {
                if (t != null)
                {
                    t.a();
                }
                dismiss();
            }
        } else
        {
            if (view == f)
            {
                dismiss();
                return;
            }
            if (view == o)
            {
                String s1;
                bo bo1;
                if (((CheckBox)view).isChecked())
                {
                    s1 = a.getString(0x7f080342);
                    n.setText(0x7f080344);
                } else
                {
                    s1 = a.getString(0x7f080343);
                    n.setText(0x7f080345);
                }
                bo1 = new bo(c);
                bo1.a(s1);
                bo1.show();
                return;
            }
        }
    }
}
