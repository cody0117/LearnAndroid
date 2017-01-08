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
import android.widget.Button;
import android.widget.ListView;
import android.widget.TextView;
import com.aadhk.product.library.a.d;
import com.aadhk.product.library.b.a;
import com.aadhk.restpos.SplitBillActivity;
import com.aadhk.restpos.bean.Company;
import com.aadhk.restpos.bean.Order;
import com.aadhk.restpos.bean.OrderItem;
import com.aadhk.restpos.bean.OrderModifier;
import com.aadhk.restpos.bean.SplitBill;
import com.aadhk.restpos.c.dp;
import com.aadhk.restpos.c.j;
import com.aadhk.restpos.g.ab;
import com.aadhk.restpos.util.m;
import com.aadhk.restpos.util.p;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.aadhk.restpos.d:
//            jm, jt, jj, js, 
//            jk, jl, ji

public final class jh extends Fragment
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
    private String j;
    private List k;
    private View l;
    private TextView m;
    private TextView n;
    private ListView o;
    private TextView p;
    private jm q;
    private int r;
    private short s;
    private ab t;

    public jh()
    {
    }

    static double a(jh jh1, double d1)
    {
        jh1.h = d1;
        return d1;
    }

    static SplitBillActivity a(jh jh1)
    {
        return jh1.a;
    }

    static List a(jh jh1, int i1)
    {
        ArrayList arraylist = new ArrayList();
        Iterator iterator = jh1.k.iterator();
        double d1 = 0.0D;
        while (iterator.hasNext()) 
        {
            SplitBill splitbill2 = (SplitBill)iterator.next();
            double d2;
            int j1;
            double d3;
            int k1;
            double d4;
            double d5;
            Iterator iterator1;
            SplitBill splitbill;
            SplitBill splitbill1;
            double d6;
            if (splitbill2.isPaid())
            {
                d6 = d1 + splitbill2.getAmount();
            } else
            {
                d6 = d1;
            }
            d1 = d6;
        }
        d2 = jh1.f.getSubTotal() - d1;
        j1 = jh1.r;
        d3 = (new BigDecimal(d2)).divide(new BigDecimal(i1), j1, 4).doubleValue();
        k1 = 0;
        d4 = d3;
        d5 = 0.0D;
        while (k1 < i1) 
        {
            d5 += d4;
            splitbill1 = new SplitBill();
            splitbill1.setOrderId(jh1.f.getId());
            if (k1 == i1 - 1)
            {
                if (d5 > jh1.f.getSubTotal() - d1 && !com.aadhk.restpos.util.m.a(d5, jh1.f.getSubTotal() - d1))
                {
                    d4 -= 0.01D;
                } else
                if (d5 < jh1.f.getSubTotal() - d1 && !com.aadhk.restpos.util.m.a(d5, jh1.f.getSubTotal() - d1))
                {
                    d4 += 0.01D;
                }
            }
            splitbill1.setAmount(d4);
            arraylist.add(splitbill1);
            k1++;
        }
        iterator1 = jh1.k.iterator();
        do
        {
            if (!iterator1.hasNext())
            {
                break;
            }
            splitbill = (SplitBill)iterator1.next();
            if (splitbill.isPaid())
            {
                arraylist.add(splitbill);
            }
        } while (true);
        return arraylist;
    }

    static List a(jh jh1, List list)
    {
        jh1.k = list;
        return list;
    }

    static double b(jh jh1, double d1)
    {
        jh1.i = d1;
        return d1;
    }

    static ab b(jh jh1)
    {
        return jh1.t;
    }

    static void b(jh jh1, List list)
    {
        Company company = jh1.a.v();
        double d1 = company.getTax1();
        double d2 = company.getTax2();
        boolean flag = company.isItemPriceIncludeTax();
        jh1.h = 0.0D;
        jh1.i = 0.0D;
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
                    double d3 = orderitem.getItemPrice() * (double)orderitem.getQty();
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
                        jh1.h = jh1.h + com.aadhk.restpos.util.m.a(d3, d1, jh1.r, flag);
                    }
                    if (orderitem.getTax2Id() == 2)
                    {
                        double d4 = jh1.i;
                        int i1 = jh1.r;
                        jh1.i = d4 + com.aadhk.restpos.util.m.a(d3, d2, i1, flag);
                    }
                }
            } while (true);
        }
    }

    static List c(jh jh1)
    {
        return jh1.k;
    }

    static Order d(jh jh1)
    {
        return jh1.f;
    }

    static void e(jh jh1)
    {
        int i1;
        jh1.q = new jm(jh1);
        jh1.o.setAdapter(jh1.q);
        Iterator iterator;
        Iterator iterator1;
        if (jh1.k.size() > 0)
        {
            jh1.o.setVisibility(0);
            jh1.p.setVisibility(8);
            jh1.c.setVisibility(0);
            jh1.q.notifyDataSetChanged();
        } else
        {
            jh1.c.setVisibility(8);
            jh1.o.setVisibility(8);
            jh1.p.setVisibility(0);
        }
        iterator = jh1.k.iterator();
        if (!iterator.hasNext()) goto _L2; else goto _L1
_L1:
        if (!((SplitBill)iterator.next()).isPaid())
        {
            break MISSING_BLOCK_LABEL_77;
        }
        i1 = 1;
_L4:
        double d1;
        if (i1 > 0)
        {
            jh1.c.setVisibility(8);
        } else
        {
            jh1.c.setVisibility(0);
        }
        iterator1 = jh1.k.iterator();
        for (d1 = 0.0D; iterator1.hasNext(); d1 += ((SplitBill)iterator1.next()).getAmount()) { }
        jh1.g = jh1.f.getSubTotal() - d1;
        jh1.n.setText(com.aadhk.restpos.util.p.a(jh1.r, jh1.f.getSubTotal(), jh1.j));
        jh1.m.setText(com.aadhk.restpos.util.p.a(jh1.r, jh1.g, jh1.j));
        if (jh1.g == 0.0D)
        {
            jh1.e.setVisibility(0);
        } else
        {
            jh1.e.setVisibility(8);
        }
        if (jh1.g == 0.0D || jh1.s == 2)
        {
            jh1.b.setVisibility(8);
        } else
        {
            jh1.b.setVisibility(0);
        }
        if (jh1.g == 0.0D || jh1.a.d() && jh1.s == 2)
        {
            jh1.d.setVisibility(8);
            return;
        } else
        {
            jh1.d.setVisibility(0);
            return;
        }
_L2:
        i1 = 0;
        if (true) goto _L4; else goto _L3
_L3:
    }

    static short f(jh jh1)
    {
        return jh1.s;
    }

    static double g(jh jh1)
    {
        return jh1.h;
    }

    static double h(jh jh1)
    {
        return jh1.i;
    }

    static int i(jh jh1)
    {
        return jh1.r;
    }

    static String j(jh jh1)
    {
        return jh1.j;
    }

    public final void a()
    {
        (new d(new jt(this, (byte)0), a, (byte)0)).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null);
    }

    public final void onActivityCreated(Bundle bundle)
    {
        super.onActivityCreated(bundle);
        f = a.e();
        t = a.c();
        TextView textview = (TextView)l.findViewById(0x7f090048);
        if (s == 2)
        {
            textview.setText(0x7f080223);
            return;
        } else
        {
            textview.setText(0x7f080224);
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
        int i1 = 0;
        if (view == b)
        {
            dp dp1 = new dp(a);
            dp1.setTitle(0x7f08021e);
            dp1.a(new jj(this));
            dp1.show();
        } else
        {
            if (view == c)
            {
                (new d(new js(this, (byte)0), a, (byte)0)).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null);
                return;
            }
            if (view == d)
            {
                if (s == 2)
                {
                    a.b(0L);
                    return;
                } else
                {
                    j j2 = new j(a, 0.0D, g, r);
                    j2.setTitle(0x7f080227);
                    j2.b();
                    j2.a(new jk(this));
                    j2.show();
                    return;
                }
            }
            if (view == e)
            {
                Iterator iterator = k.iterator();
                int j1 = 0;
                do
                {
                    if (!iterator.hasNext())
                    {
                        break;
                    }
                    if (!((SplitBill)iterator.next()).isPaid())
                    {
                        j1++;
                    }
                } while (true);
                String as[] = new String[j1];
                for (; i1 < k.size(); i1++)
                {
                    if (!((SplitBill)k.get(i1)).isPaid())
                    {
                        as[i1] = com.aadhk.restpos.util.p.a(((SplitBill)k.get(i1)).getAmount(), j);
                    }
                }

                a a1 = new a(a, as);
                a1.setTitle(0x7f08021f);
                a1.a(new jl(this));
                a1.show();
                return;
            }
        }
    }

    public final void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        Company company = a.v();
        j = company.getCurrencySign();
        r = company.getDecimalPlace();
        short word0;
        if (getArguments() != null)
        {
            word0 = getArguments().getShort("bundleSplitType");
        } else
        {
            word0 = 1;
        }
        s = word0;
    }

    public final View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        l = layoutinflater.inflate(0x7f0300a4, viewgroup, false);
        b = (Button)l.findViewById(0x7f09027e);
        b.setOnClickListener(this);
        c = (Button)l.findViewById(0x7f090280);
        c.setOnClickListener(this);
        d = (Button)l.findViewById(0x7f09027f);
        d.setOnClickListener(this);
        e = (Button)l.findViewById(0x7f0901bb);
        e.setOnClickListener(this);
        o = (ListView)l.findViewById(0x102000a);
        o.setOnItemClickListener(this);
        p = (TextView)l.findViewById(0x7f09015f);
        n = (TextView)l.findViewById(0x7f090281);
        m = (TextView)l.findViewById(0x7f090282);
        if (s == 2)
        {
            b.setVisibility(8);
        } else
        {
            b.setVisibility(0);
        }
        return l;
    }

    public final void onItemClick(AdapterView adapterview, View view, int i1, long l1)
    {
        SplitBill splitbill;
label0:
        {
            splitbill = (SplitBill)k.get(i1);
            if (!splitbill.isPaid())
            {
                if (s != 2)
                {
                    break label0;
                }
                a.a(splitbill.getId());
            }
            return;
        }
        j j1 = new j(a, splitbill.getAmount(), g, r);
        j1.setTitle(0x7f08021d);
        j1.b();
        j1.a(new ji(this, splitbill, i1));
        j1.show();
    }

    public final void onResume()
    {
        super.onResume();
        a();
    }
}
