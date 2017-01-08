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
import android.widget.Button;
import android.widget.ListView;
import android.widget.TextView;
import com.aadhk.product.library.b.a;
import com.aadhk.restpos.SplitBillActivity;
import com.aadhk.restpos.b.m;
import com.aadhk.restpos.b.n;
import com.aadhk.restpos.b.u;
import com.aadhk.restpos.bean.Company;
import com.aadhk.restpos.bean.Order;
import com.aadhk.restpos.bean.OrderItem;
import com.aadhk.restpos.bean.OrderModifier;
import com.aadhk.restpos.bean.SplitBill;
import com.aadhk.restpos.c.cb;
import com.aadhk.restpos.f.h;
import com.aadhk.restpos.f.j;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.aadhk.restpos.d:
//            fk, fh, fi, fj, 
//            fg

public final class ff extends Fragment
    implements android.view.View.OnClickListener, android.widget.AdapterView.OnItemClickListener
{

    private SplitBillActivity a;
    private Button b;
    private Button c;
    private Button d;
    private Button e;
    private Order f;
    private double g;
    private double h;
    private double i;
    private double j;
    private String k;
    private u l;
    private m m;
    private n n;
    private List o;
    private View p;
    private TextView q;
    private TextView r;
    private ListView s;
    private TextView t;
    private fk u;
    private int v;
    private short w;

    public ff()
    {
    }

    static double a(ff ff1, double d1)
    {
        ff1.i = d1;
        return d1;
    }

    static u a(ff ff1)
    {
        return ff1.l;
    }

    static List a(ff ff1, int i1)
    {
        ArrayList arraylist = new ArrayList();
        double d1 = ff1.g;
        int j1 = ff1.v;
        double d2 = (new BigDecimal(d1)).divide(new BigDecimal(i1), j1, 4).doubleValue();
        int k1 = 0;
        double d3 = d2;
        double d4 = 0.0D;
        for (; k1 < i1; k1++)
        {
            d4 += d3;
            SplitBill splitbill = new SplitBill();
            splitbill.setOrderId(ff1.f.getId());
            if (k1 == i1 - 1 && !com.aadhk.restpos.f.h.a(d4, ff1.g))
            {
                d3 += 0.01D;
            }
            splitbill.setAmount(d3);
            arraylist.add(splitbill);
        }

        return arraylist;
    }

    static List a(ff ff1, List list)
    {
        ff1.o = list;
        return list;
    }

    static double b(ff ff1, double d1)
    {
        ff1.j = d1;
        return d1;
    }

    static List b(ff ff1)
    {
        return ff1.o;
    }

    static void b(ff ff1, List list)
    {
        Company company = ff1.a.n();
        double d1 = company.getTax1();
        double d2 = company.getTax2();
        boolean flag = company.isIncludeTax();
        ff1.i = 0.0D;
        ff1.j = 0.0D;
        if (list != null)
        {
            Iterator iterator = list.iterator();
            do
            {
                if (!iterator.hasNext())
                {
                    break;
                }
                OrderItem orderitem = (OrderItem)iterator.next();
                if (orderitem.getStatus() != 1)
                {
                    double d3 = orderitem.getItemPrice() * (double)orderitem.getNum();
                    for (Iterator iterator1 = orderitem.getOrderModifiers().iterator(); iterator1.hasNext();)
                    {
                        OrderModifier ordermodifier = (OrderModifier)iterator1.next();
                        double d5 = ordermodifier.getModifierPrice() * (double)ordermodifier.getQty();
                        if (ordermodifier.getType() == 1)
                        {
                            d3 += d5;
                        } else
                        {
                            d3 -= d5;
                        }
                    }

                    if (orderitem.getTax1Id() == 1)
                    {
                        ff1.i = ff1.i + com.aadhk.restpos.f.h.a(d3, d1, ff1.v, flag);
                    }
                    if (orderitem.getTax2Id() == 2)
                    {
                        double d4 = ff1.j;
                        int i1 = ff1.v;
                        ff1.j = d4 + com.aadhk.restpos.f.h.a(d3, d2, i1, flag);
                    }
                }
            } while (true);
        }
    }

    static Order c(ff ff1)
    {
        return ff1.f;
    }

    static n d(ff ff1)
    {
        return ff1.n;
    }

    static double e(ff ff1)
    {
        return ff1.i;
    }

    static int f(ff ff1)
    {
        return ff1.v;
    }

    static double g(ff ff1)
    {
        return ff1.j;
    }

    static SplitBillActivity h(ff ff1)
    {
        return ff1.a;
    }

    static short i(ff ff1)
    {
        return ff1.w;
    }

    static String j(ff ff1)
    {
        return ff1.k;
    }

    public final void a()
    {
        o = l.b(f.getId());
        g = m.e(f.getId());
        u = new fk(this);
        s.setAdapter(u);
        Iterator iterator;
        double d1;
        if (o.size() > 0)
        {
            s.setVisibility(0);
            t.setVisibility(8);
            c.setVisibility(0);
            u.notifyDataSetChanged();
        } else
        {
            c.setVisibility(8);
            s.setVisibility(8);
            t.setVisibility(0);
        }
        iterator = o.iterator();
        for (d1 = 0.0D; iterator.hasNext(); d1 += ((SplitBill)iterator.next()).getAmount()) { }
        h = g - d1;
        r.setText(com.aadhk.restpos.f.j.a(v, g, k));
        q.setText(com.aadhk.restpos.f.j.a(v, h, k));
        if (h == 0.0D)
        {
            e.setVisibility(0);
        } else
        {
            e.setVisibility(8);
        }
        if (h == 0.0D || w == 2)
        {
            b.setVisibility(8);
        } else
        {
            b.setVisibility(0);
        }
        if (h == 0.0D || a.d() && w == 2)
        {
            d.setVisibility(8);
            return;
        } else
        {
            d.setVisibility(0);
            return;
        }
    }

    public final void onActivityCreated(Bundle bundle)
    {
        super.onActivityCreated(bundle);
        f = a.e();
        android.database.sqlite.SQLiteDatabase sqlitedatabase = a.c();
        l = new u(sqlitedatabase);
        m = new m(sqlitedatabase);
        n = new n(sqlitedatabase);
        TextView textview = (TextView)p.findViewById(0x7f0b0044);
        if (w == 2)
        {
            textview.setText(0x7f0901e4);
            return;
        } else
        {
            textview.setText(0x7f0901e5);
            return;
        }
    }

    public final void onAttach(Activity activity)
    {
        super.onAttach(activity);
        a = (SplitBillActivity)activity;
    }

    public final void onClick(View view)
    {
        if (view == b)
        {
            cb cb1 = new cb(a);
            cb1.setTitle(0x7f0901df);
            cb1.a(new fh(this));
            cb1.show();
        } else
        if (view == c)
        {
            l.a(f.getId());
            o = new ArrayList();
            f.setSplitType((short)0);
            if (w == 2)
            {
                a.a();
            }
            a();
        } else
        if (view == d)
        {
            if (w == 2)
            {
                a.b(0L);
            } else
            {
                com.aadhk.restpos.c.m m1 = new com.aadhk.restpos.c.m(a, 0.0D, h, v);
                m1.setTitle(0x7f0901dd);
                m1.b();
                m1.a(new fi(this));
                m1.show();
            }
        }
        if (view == e)
        {
            String as[] = new String[o.size()];
            for (int i1 = 0; i1 < o.size(); i1++)
            {
                as[i1] = com.aadhk.restpos.f.j.a(((SplitBill)o.get(i1)).getAmount(), k);
            }

            a a1 = new a(a, as);
            a1.setTitle(0x7f0901e0);
            a1.a(new fj(this));
            a1.show();
        }
    }

    public final void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        Company company = a.n();
        k = company.getCurrencySign();
        v = company.getDecimalPlace();
        short word0;
        if (getArguments() != null)
        {
            word0 = getArguments().getShort("bundleSplitType");
        } else
        {
            word0 = 1;
        }
        w = word0;
    }

    public final View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        p = layoutinflater.inflate(0x7f030087, viewgroup, false);
        b = (Button)p.findViewById(0x7f0b0217);
        b.setOnClickListener(this);
        c = (Button)p.findViewById(0x7f0b0219);
        c.setOnClickListener(this);
        d = (Button)p.findViewById(0x7f0b0218);
        d.setOnClickListener(this);
        e = (Button)p.findViewById(0x7f0b016c);
        e.setOnClickListener(this);
        s = (ListView)p.findViewById(0x102000a);
        s.setOnItemClickListener(this);
        t = (TextView)p.findViewById(0x7f0b011b);
        r = (TextView)p.findViewById(0x7f0b021a);
        q = (TextView)p.findViewById(0x7f0b021b);
        if (w == 2)
        {
            b.setVisibility(8);
        } else
        {
            b.setVisibility(0);
        }
        return p;
    }

    public final void onItemClick(AdapterView adapterview, View view, int i1, long l1)
    {
        SplitBill splitbill = (SplitBill)o.get(i1);
        if (!splitbill.isPaid())
        {
            if (w == 2)
            {
                a.a(splitbill.getId());
            } else
            if (h > 0.0D)
            {
                com.aadhk.restpos.c.m m1 = new com.aadhk.restpos.c.m(a, splitbill.getAmount(), h, v);
                m1.setTitle(0x7f0901de);
                m1.b();
                m1.a(new fg(this, splitbill, i1));
                m1.show();
                return;
            }
        }
    }

    public final void onResume()
    {
        super.onResume();
        a();
    }
}
