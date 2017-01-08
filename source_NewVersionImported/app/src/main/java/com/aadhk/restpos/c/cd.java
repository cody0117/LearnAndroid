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
//            br, ce, cf, ax

public final class cd extends br
    implements android.view.View.OnClickListener
{

    private Button e;
    private Button f;
    private EditText g;
    private EditText h;
    private EditText i;
    private EditText j;
    private EditText k;
    private TextView l;
    private CheckBox m;
    private Company n;
    private cf o;
    private boolean p;
    private boolean q;

    public cd(Context context, Company company, boolean flag, boolean flag1)
    {
        super(context, 0x7f030059);
        setTitle(0x7f090189);
        n = company;
        e = (Button)findViewById(0x7f0b0056);
        e.setOnClickListener(this);
        f = (Button)findViewById(0x7f0b0057);
        f.setOnClickListener(this);
        g = (EditText)findViewById(0x7f0b0122);
        h = (EditText)findViewById(0x7f0b0123);
        i = (EditText)findViewById(0x7f0b0124);
        j = (EditText)findViewById(0x7f0b0125);
        k = (EditText)findViewById(0x7f0b0126);
        m = (CheckBox)findViewById(0x7f0b0127);
        l = (TextView)findViewById(0x7f0b0128);
        g.setSelectAllOnFocus(true);
        i.setSelectAllOnFocus(true);
        h.setSelectAllOnFocus(true);
        j.setSelectAllOnFocus(true);
        k.setSelectAllOnFocus(true);
        m.setOnClickListener(this);
        g.setOnFocusChangeListener(new ce(this));
        if (n.getTax1() != 0.0D)
        {
            h.setText((new StringBuilder()).append(n.getTax1()).toString());
        }
        g.setText(n.getTax1Name());
        if (n.getTax2() != 0.0D)
        {
            j.setText((new StringBuilder()).append(n.getTax2()).toString());
        }
        i.setText(n.getTax2Name());
        m.setChecked(n.isIncludeTax());
        k.setText(n.getTaxNumber());
        p = flag;
        q = flag1;
    }

    public final void a(cf cf1)
    {
        o = cf1;
    }

    public final void onClick(View view)
    {
        boolean flag = false;
        if (view == e)
        {
            String s1 = g.getText().toString();
            String s2 = h.getText().toString();
            String s3 = i.getText().toString();
            String s4 = j.getText().toString();
            String s5 = k.getText().toString();
            if (!s2.equals("") && s1.equals(""))
            {
                g.setError(a.getString(0x7f090055));
                g.requestFocus();
            } else
            {
                g.setError(null);
                if (!s1.equals("") && s2.equals(""))
                {
                    h.setError(a.getString(0x7f090055));
                    h.requestFocus();
                    flag = false;
                } else
                {
                    h.setError(null);
                    if (!s4.equals("") && s3.equals(""))
                    {
                        i.setError(a.getString(0x7f090055));
                        i.requestFocus();
                        flag = false;
                    } else
                    {
                        i.setError(null);
                        if (!s3.equals("") && s4.equals(""))
                        {
                            j.setError(a.getString(0x7f090055));
                            j.requestFocus();
                            flag = false;
                        } else
                        {
                            j.setError(null);
                            if (s1.equals("") && (!s3.equals("") || !s4.equals("")))
                            {
                                g.setError(a.getString(0x7f090055));
                                g.requestFocus();
                                flag = false;
                            } else
                            {
                                g.setError(null);
                                if (m.isChecked() && s1.equals(""))
                                {
                                    g.setError(a.getString(0x7f090055));
                                    g.requestFocus();
                                    flag = false;
                                } else
                                {
                                    g.setError(null);
                                    if (s1.equals("") && p)
                                    {
                                        ax ax3 = new ax(c);
                                        ax3.a(0x7f09018d);
                                        ax3.show();
                                        flag = false;
                                    } else
                                    if (s3.equals("") && q)
                                    {
                                        ax ax2 = new ax(c);
                                        ax2.a(0x7f09018d);
                                        ax2.show();
                                        flag = false;
                                    } else
                                    {
                                        n.setTax1(com.aadhk.product.library.c.h.d(s2));
                                        n.setTax1Name(s1);
                                        n.setTax2(com.aadhk.product.library.c.h.d(s4));
                                        n.setTax2Name(s3);
                                        n.setIncludeTax(m.isChecked());
                                        n.setTaxNumber(s5);
                                        flag = true;
                                    }
                                }
                            }
                        }
                    }
                }
            }
            if (flag)
            {
                if (o != null)
                {
                    o.a();
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
            if (view == g)
            {
                g.selectAll();
                return;
            }
            if (view == h)
            {
                h.selectAll();
                return;
            }
            if (view == i)
            {
                i.selectAll();
                return;
            }
            if (view == j)
            {
                j.selectAll();
                return;
            }
            if (view == k)
            {
                k.selectAll();
                return;
            }
            if (view == m)
            {
                String s;
                ax ax1;
                if (((CheckBox)view).isChecked())
                {
                    s = a.getString(0x7f0902e2);
                    l.setText(0x7f0902e4);
                } else
                {
                    s = a.getString(0x7f0902e3);
                    l.setText(0x7f0902e5);
                }
                ax1 = new ax(c);
                ax1.a(s);
                ax1.show();
                return;
            }
        }
    }
}
