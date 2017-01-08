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
import android.widget.Button;
import android.widget.ExpandableListView;
import android.widget.TextView;
import com.aadhk.product.library.a.d;
import com.aadhk.restpos.SplitBillActivity;
import com.aadhk.restpos.bean.Company;
import com.aadhk.restpos.bean.Order;
import com.aadhk.restpos.bean.OrderItem;
import com.aadhk.restpos.bean.OrderModifier;
import com.aadhk.restpos.c.bo;
import com.aadhk.restpos.g.ab;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.aadhk.restpos.d:
//            kd, kc, jy, jz

public final class jx extends Fragment
    implements android.view.View.OnClickListener
{

    private SplitBillActivity a;
    private Button b;
    private List c;
    private Order d;
    private String e;
    private int f;
    private View g;
    private ExpandableListView h;
    private TextView i;
    private TextView j;
    private jz k;
    private ab l;
    private long m;
    private short n;

    public jx()
    {
    }

    static jz a(jx jx1, jz jz)
    {
        jx1.k = jz;
        return jz;
    }

    static List a(jx jx1)
    {
        return jx1.c;
    }

    static List a(jx jx1, List list)
    {
        jx1.c = list;
        return list;
    }

    static jz b(jx jx1)
    {
        return jx1.k;
    }

    static Order c(jx jx1)
    {
        return jx1.d;
    }

    static long d(jx jx1)
    {
        return jx1.m;
    }

    static ab e(jx jx1)
    {
        return jx1.l;
    }

    static ExpandableListView f(jx jx1)
    {
        return jx1.h;
    }

    static TextView g(jx jx1)
    {
        return jx1.i;
    }

    static short h(jx jx1)
    {
        return jx1.n;
    }

    static Button i(jx jx1)
    {
        return jx1.b;
    }

    static SplitBillActivity j(jx jx1)
    {
        return jx1.a;
    }

    static long k(jx jx1)
    {
        jx1.m = 0L;
        return 0L;
    }

    static int l(jx jx1)
    {
        return jx1.f;
    }

    static String m(jx jx1)
    {
        return jx1.e;
    }

    public final void a()
    {
        if (m > 0L)
        {
            j.setText(0x7f08021d);
        } else
        {
            j.setText(0x7f08021c);
        }
        (new d(new kd(this, (byte)0), a, (byte)0)).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null);
    }

    public final void onActivityCreated(Bundle bundle)
    {
        super.onActivityCreated(bundle);
        l = a.c();
        d = a.e();
    }

    public final void onAttach(Activity activity)
    {
        super.onAttach(activity);
        a = (SplitBillActivity)activity;
    }

    public final void onClick(View view)
    {
label0:
        {
            if (view == b)
            {
                ArrayList arraylist = new ArrayList();
                Iterator iterator = c.iterator();
                double d1 = 0.0D;
                do
                {
                    if (!iterator.hasNext())
                    {
                        break;
                    }
                    OrderItem orderitem = (OrderItem)iterator.next();
                    if (orderitem.isSelected())
                    {
                        arraylist.add(orderitem);
                        d1 += orderitem.getItemPrice() * (double)orderitem.getQty();
                        Iterator iterator1 = orderitem.getOrderModifiers().iterator();
                        while (iterator1.hasNext()) 
                        {
                            OrderModifier ordermodifier = (OrderModifier)iterator1.next();
                            if (ordermodifier.getType() == 1)
                            {
                                d1 += ordermodifier.getModifierPrice() * (double)ordermodifier.getQty();
                            } else
                            {
                                d1 -= ordermodifier.getModifierPrice() * (double)ordermodifier.getQty();
                            }
                        }
                    }
                } while (true);
                if (arraylist.isEmpty())
                {
                    break label0;
                }
                (new d(new kc(this, arraylist, d1), a, (byte)0)).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null);
            }
            return;
        }
        bo bo1 = new bo(a);
        bo1.a(0x7f080228);
        bo1.show();
    }

    public final void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        Company company = a.v();
        e = company.getCurrencySign();
        f = company.getDecimalPlace();
        long l1;
        short word0;
        if (getArguments() != null)
        {
            l1 = getArguments().getLong("bundleBillId");
        } else
        {
            l1 = 0L;
        }
        m = l1;
        if (getArguments() != null)
        {
            word0 = getArguments().getShort("bundleSplitType");
        } else
        {
            word0 = 2;
        }
        n = word0;
    }

    public final View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        g = layoutinflater.inflate(0x7f0300a5, viewgroup, false);
        b = (Button)g.findViewById(0x7f0900db);
        b.setOnClickListener(this);
        h = (ExpandableListView)g.findViewById(0x102000a);
        i = (TextView)g.findViewById(0x7f09015f);
        j = (TextView)g.findViewById(0x7f090048);
        h.setGroupIndicator(null);
        if (n == 2)
        {
            h.setOnGroupClickListener(new jy(this));
        }
        return g;
    }

    public final void onResume()
    {
        super.onResume();
        a();
    }
}
