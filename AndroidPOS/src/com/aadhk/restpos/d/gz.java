// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.app.Activity;
import android.content.res.Resources;
import android.os.AsyncTask;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;
import com.aadhk.product.library.a.c;
import com.aadhk.restpos.POSApp;
import com.aadhk.restpos.ReceiptListActivity;
import com.aadhk.restpos.bean.Company;
import com.aadhk.restpos.bean.Customer;
import com.aadhk.restpos.bean.Order;
import com.aadhk.restpos.bean.OrderItem;
import com.aadhk.restpos.bean.OrderModifier;
import com.aadhk.restpos.bean.OrderPayment;
import com.aadhk.restpos.bean.POSPrinterSetting;
import com.aadhk.restpos.bean.RolePermission;
import com.aadhk.restpos.c.bl;
import com.aadhk.restpos.c.d;
import com.aadhk.restpos.e.g;
import com.aadhk.restpos.g.v;
import com.aadhk.restpos.util.o;
import com.aadhk.restpos.util.p;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

// Referenced classes of package com.aadhk.restpos.d:
//            hc, hb, ha

public final class gz extends Fragment
    implements android.view.View.OnClickListener
{

    private TextView A;
    private LinearLayout B;
    private LinearLayout C;
    private LinearLayout D;
    private Button E;
    private Button F;
    private Button G;
    private v H;
    private g I;
    private Company J;
    private Customer K;
    private List L;
    private List M;
    private String N;
    private int O;
    private boolean P;
    private Order Q;
    private POSPrinterSetting R;
    private RolePermission S;
    c a;
    private LayoutInflater b;
    private View c;
    private ReceiptListActivity d;
    private TextView e;
    private TextView f;
    private TextView g;
    private TextView h;
    private TextView i;
    private TextView j;
    private TextView k;
    private TextView l;
    private TextView m;
    private TextView n;
    private TextView o;
    private TextView p;
    private TextView q;
    private TextView r;
    private TextView s;
    private TextView t;
    private TextView u;
    private TextView v;
    private TextView w;
    private TextView x;
    private TextView y;
    private TextView z;

    public gz()
    {
        a = new hc(this);
    }

    private void a()
    {
        d d1 = new d(d);
        String s1 = getString(0x7f0800d1);
        Object aobj[] = new Object[1];
        aobj[0] = Q.getOrderNum();
        d1.setTitle(String.format(s1, aobj));
        d1.a(new hb(this));
        d1.show();
    }

    static void a(gz gz1)
    {
        gz1.a();
    }

    static ReceiptListActivity b(gz gz1)
    {
        return gz1.d;
    }

    private List b()
    {
        HashMap hashmap = new HashMap();
        ArrayList arraylist = new ArrayList();
        int i1 = 0;
        while (i1 < L.size()) 
        {
            OrderItem orderitem = (OrderItem)L.get(i1);
            String s2 = (new StringBuilder()).append(orderitem.getItemId()).append(orderitem.getItemPrice()).toString();
            if (!orderitem.getOrderModifiers().isEmpty())
            {
                s2 = (new StringBuilder()).append(s2).append(i1).toString();
            }
            ArrayList arraylist1;
            Iterator iterator;
            String s1;
            String s3;
            OrderItem orderitem1;
            if (orderitem.getStatus() == 1)
            {
                s3 = (new StringBuilder()).append(s2).append("C").toString();
            } else
            {
                s3 = s2;
            }
            orderitem1 = (OrderItem)hashmap.get(s3);
            if (orderitem1 == null)
            {
                hashmap.put(s3, orderitem);
                arraylist.add(s3);
            } else
            {
                orderitem1.setQty(orderitem.getQty() + orderitem1.getQty());
            }
            i1++;
        }
        arraylist1 = new ArrayList();
        iterator = arraylist.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            s1 = (String)iterator.next();
            if (s1.lastIndexOf("C") != -1 + s1.length())
            {
                arraylist1.add(hashmap.get(s1));
            }
        } while (true);
        return arraylist1;
    }

    static POSPrinterSetting c(gz gz1)
    {
        return gz1.R;
    }

    private void c()
    {
        C.removeAllViews();
        Iterator iterator = M.iterator();
        while (iterator.hasNext()) 
        {
            OrderPayment orderpayment = (OrderPayment)iterator.next();
            View view = b.inflate(0x7f03009b, null);
            TextView textview = (TextView)view.findViewById(0x7f090171);
            TextView textview1 = (TextView)view.findViewById(0x7f0901b7);
            TextView textview2 = (TextView)view.findViewById(0x7f09025d);
            TextView textview3 = (TextView)view.findViewById(0x7f09025e);
            LinearLayout linearlayout = (LinearLayout)view.findViewById(0x7f09025c);
            textview.setText((new StringBuilder()).append(orderpayment.getPaymentMethodName()).append(":").toString());
            textview1.setText(com.aadhk.restpos.util.p.a(O, orderpayment.getPaid(), N));
            if (orderpayment.getChangeAmt() > 0.0D)
            {
                linearlayout.setVisibility(0);
                textview2.setText(getString(0x7f080379));
                textview3.setText(com.aadhk.restpos.util.p.a(O, orderpayment.getChangeAmt(), N));
            } else
            {
                linearlayout.setVisibility(8);
            }
            C.addView(view);
        }
    }

    static Order d(gz gz1)
    {
        return gz1.Q;
    }

    private void d()
    {
        B.removeAllViews();
        View view;
label0:
        for (Iterator iterator = L.iterator(); iterator.hasNext(); B.addView(view))
        {
            OrderItem orderitem = (OrderItem)iterator.next();
            view = b.inflate(0x7f030099, null);
            TextView textview = (TextView)view.findViewById(0x7f090171);
            TextView textview1 = (TextView)view.findViewById(0x7f09018a);
            TextView textview2 = (TextView)view.findViewById(0x7f0900f3);
            TextView textview3 = (TextView)view.findViewById(0x7f0901b5);
            LinearLayout linearlayout = (LinearLayout)view.findViewById(0x7f09018c);
            String s1;
            String s2;
            if (orderitem.getStatus() == 1)
            {
                List list;
                Iterator iterator1;
                View view1;
                TextView textview4;
                TextView textview5;
                TextView textview6;
                String s5;
                if (TextUtils.isEmpty(orderitem.getCancelReason()))
                {
                    s5 = (new StringBuilder()).append(orderitem.getItemName()).append("\n\t").append(getString(0x7f0802d1)).toString();
                } else
                {
                    s5 = (new StringBuilder()).append(orderitem.getItemName()).append("\n\t").append(getString(0x7f0802d1)).append(":").append(orderitem.getCancelReason()).toString();
                }
                s1 = s5;
                s2 = "-";
            } else
            {
                s1 = orderitem.getItemName();
                s2 = com.aadhk.restpos.util.p.a(O, orderitem.getItemPrice() * (double)orderitem.getQty(), N);
            }
            textview.setText(s1);
            textview1.setText((new StringBuilder()).append(orderitem.getQty()).toString());
            textview2.setText(s2);
            if (orderitem.getDiscountAmt() != 0.0D && orderitem.getStatus() != 1)
            {
                textview3.setText((new StringBuilder("-")).append(com.aadhk.restpos.util.p.a(O, orderitem.getDiscountAmt(), N)).append(": ").append(orderitem.getDiscountName()).toString());
                textview3.setVisibility(0);
            } else
            {
                textview3.setVisibility(8);
            }
            list = orderitem.getOrderModifiers();
            if (list == null || list.isEmpty())
            {
                continue;
            }
            iterator1 = list.iterator();
            do
            {
                if (!iterator1.hasNext())
                {
                    continue label0;
                }
                OrderModifier ordermodifier = (OrderModifier)iterator1.next();
                view1 = b.inflate(0x7f03009a, null);
                textview4 = (TextView)view1.findViewById(0x7f090171);
                textview5 = (TextView)view1.findViewById(0x7f09018a);
                textview6 = (TextView)view1.findViewById(0x7f0900f3);
                String s3;
                String s4;
                if (ordermodifier.getType() == 1)
                {
                    s3 = "+";
                } else
                {
                    s3 = "-";
                }
                if (orderitem.getStatus() == 1)
                {
                    s4 = "-";
                } else
                {
                    s4 = com.aadhk.restpos.util.p.a(O, ordermodifier.getModifierPrice(), N);
                }
                textview4.setText(ordermodifier.getModifierName());
                textview5.setText((new StringBuilder()).append(s3).append(ordermodifier.getQty()).toString());
                textview6.setText(s4);
                linearlayout.addView(view1);
            } while (true);
        }

    }

    static Customer e(gz gz1)
    {
        return gz1.K;
    }

    static List f(gz gz1)
    {
        return gz1.b();
    }

    static g g(gz gz1)
    {
        return gz1.I;
    }

    static v h(gz gz1)
    {
        return gz1.H;
    }

    public final void onActivityCreated(Bundle bundle)
    {
        super.onActivityCreated(bundle);
        S = (RolePermission)d.w().get(Integer.valueOf(202));
        J = d.v();
        N = J.getCurrencySign();
        O = J.getDecimalPlace();
        P = J.isItemPriceIncludeTax();
        H = d.b();
        M = Q.getOrderPayments();
        L = Q.getOrderItems();
        e.setText(Q.getTableName());
        f.setText(Q.getCashierName());
        g.setText((new StringBuilder()).append(Q.getOrderNum()).toString());
        h.setText((new StringBuilder()).append(Q.getPersonNum()).toString());
        i.setText(com.aadhk.restpos.util.o.a(Q.getOrderTime(), d.q(), d.r()));
        if (!TextUtils.isEmpty(J.getTaxNumber()))
        {
            c.findViewById(0x7f0901ee).setVisibility(0);
            y.setText((new StringBuilder()).append(J.getTaxNumber()).toString());
        } else
        {
            c.findViewById(0x7f0901ee).setVisibility(8);
        }
        if (Q.getCustomerId() > 0L)
        {
            K = H.b(Q.getCustomerId());
        }
        R = ((POSApp)d.getApplicationContext()).k();
        if (!R.isEnable())
        {
            E.setVisibility(8);
        }
        if (!S.isShow())
        {
            G.setVisibility(8);
        }
        if (K != null)
        {
            D.setVisibility(0);
            x.setText(K.getName());
        } else
        {
            D.setVisibility(8);
        }
        if (!TextUtils.isEmpty(Q.getReceiptNote()))
        {
            c.findViewById(0x7f0901f2).setVisibility(0);
            w.setText(Q.getReceiptNote());
        } else
        {
            c.findViewById(0x7f0901f2).setVisibility(8);
        }
        r.setText(com.aadhk.restpos.util.p.a(O, Q.getAmount(), N));
        if (Q.getSplitType() == 1)
        {
            A.setVisibility(0);
            A.setText(getString(0x7f080224));
        } else
        if (Q.getSplitType() == 2)
        {
            A.setVisibility(0);
            A.setText(getString(0x7f080223));
        } else
        {
            A.setVisibility(8);
        }
        if (Q.getDiscountAmt() > 0.0D || Q.getServiceAmt() > 0.0D || !P && (Q.getTax1Amt() > 0.0D || Q.getTax2Amt() > 0.0D))
        {
            c.findViewById(0x7f0901f6).setVisibility(0);
            j.setText(com.aadhk.restpos.util.p.a(O, Q.getSubTotal(), N));
        } else
        {
            c.findViewById(0x7f0901f6).setVisibility(8);
        }
        if (Q.getDiscountAmt() > 0.0D)
        {
            c.findViewById(0x7f0901f8).setVisibility(0);
            p.setText(com.aadhk.restpos.util.p.a(O, Q.getDiscountAmt(), N));
            String s1;
            Object aobj[];
            String s2;
            String s3;
            Object aobj1[];
            String s4;
            String s5;
            if (!TextUtils.isEmpty(Q.getDiscountReason()))
            {
                q.setVisibility(0);
                q.setText(Q.getDiscountReason());
            } else
            {
                q.setVisibility(8);
            }
        } else
        {
            c.findViewById(0x7f0901f8).setVisibility(8);
        }
        if (!P && Q.getTax1Amt() > 0.0D)
        {
            c.findViewById(0x7f0901fb).setVisibility(0);
            m.setText((new StringBuilder()).append(Q.getTax1Name()).append(":").toString());
            k.setText(com.aadhk.restpos.util.p.a(O, Q.getTax1Amt(), N));
        } else
        {
            c.findViewById(0x7f0901fb).setVisibility(8);
        }
        if (!P && Q.getTax2Amt() > 0.0D)
        {
            c.findViewById(0x7f0901fe).setVisibility(0);
            n.setText((new StringBuilder()).append(Q.getTax2Name()).append(":").toString());
            l.setText(com.aadhk.restpos.util.p.a(O, Q.getTax2Amt(), N));
        } else
        {
            c.findViewById(0x7f0901fe).setVisibility(8);
        }
        if (Q.getServiceAmt() > 0.0D)
        {
            c.findViewById(0x7f0901fa).setVisibility(0);
            o.setText(com.aadhk.restpos.util.p.a(O, Q.getServiceAmt(), N));
        } else
        {
            c.findViewById(0x7f0901fa).setVisibility(8);
        }
        if (Q.getStatus() == 2)
        {
            s5 = getString(0x7f0802d1);
            if (!TextUtils.isEmpty(Q.getCancelReason()))
            {
                s5 = (new StringBuilder()).append(s5).append(": ").append(Q.getCancelReason()).toString();
            }
            z.setVisibility(0);
            z.setText(s5);
            c.findViewById(0x7f090204).setVisibility(8);
        }
        if (P && Q.getTax1Amt() > 0.0D)
        {
            c.findViewById(0x7f090206).setVisibility(0);
            s3 = getString(0x7f080319);
            aobj1 = new Object[1];
            aobj1[0] = Q.getTax1Name();
            s4 = String.format(s3, aobj1);
            s.setText((new StringBuilder()).append(s4).append(":").toString());
            t.setText(com.aadhk.restpos.util.p.a(O, Q.getTax1Amt(), N));
        } else
        {
            c.findViewById(0x7f090206).setVisibility(8);
        }
        if (P && Q.getTax2Amt() > 0.0D)
        {
            c.findViewById(0x7f090209).setVisibility(0);
            s1 = getString(0x7f080319);
            aobj = new Object[1];
            aobj[0] = Q.getTax2Name();
            s2 = String.format(s1, aobj);
            u.setText((new StringBuilder()).append(s2).append(":").toString());
            v.setText(com.aadhk.restpos.util.p.a(O, Q.getTax2Amt(), N));
        } else
        {
            c.findViewById(0x7f090209).setVisibility(8);
        }
        d();
        c();
    }

    public final void onAttach(Activity activity)
    {
        super.onAttach(activity);
        d = (ReceiptListActivity)activity;
    }

    public final void onClick(View view)
    {
        if (view != E) goto _L2; else goto _L1
_L1:
        if (L.size() <= 0) goto _L4; else goto _L3
_L3:
        (new com.aadhk.product.library.a.d(a, d, (byte)0)).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null);
_L6:
        return;
_L4:
        Toast.makeText(d, 0x7f080231, 1).show();
        return;
_L2:
        if (view == F)
        {
            String s1 = (new StringBuilder()).append(J.getName()).append(" - ").append(d.getResources().getString(0x7f08015e)).toString();
            I.a(R, Q, b(), null, s1, true);
            return;
        }
        if (view == G)
        {
            if (!S.isManagerPermission())
            {
                a();
                return;
            } else
            {
                bl bl1 = new bl(d);
                bl1.a(new ha(this));
                bl1.show();
                return;
            }
        }
        if (true) goto _L6; else goto _L5
_L5:
    }

    public final void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        b = d.getLayoutInflater();
        I = new g(d);
        Bundle bundle1 = getArguments();
        if (bundle1 != null)
        {
            Q = (Order)bundle1.getParcelable("bundleOrder");
        }
    }

    public final View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        c = layoutinflater.inflate(0x7f030098, viewgroup, false);
        e = (TextView)c.findViewById(0x7f0901e9);
        f = (TextView)c.findViewById(0x7f0901ea);
        g = (TextView)c.findViewById(0x7f0901eb);
        h = (TextView)c.findViewById(0x7f0901ec);
        i = (TextView)c.findViewById(0x7f0901ed);
        w = (TextView)c.findViewById(0x7f0901f3);
        x = (TextView)c.findViewById(0x7f0901f1);
        D = (LinearLayout)c.findViewById(0x7f0901f0);
        y = (TextView)c.findViewById(0x7f0901ef);
        j = (TextView)c.findViewById(0x7f0901f7);
        m = (TextView)c.findViewById(0x7f0901fc);
        n = (TextView)c.findViewById(0x7f0901ff);
        k = (TextView)c.findViewById(0x7f0901fd);
        l = (TextView)c.findViewById(0x7f090200);
        o = (TextView)c.findViewById(0x7f0901cb);
        p = (TextView)c.findViewById(0x7f0901c6);
        q = (TextView)c.findViewById(0x7f0901f9);
        r = (TextView)c.findViewById(0x7f09010f);
        z = (TextView)c.findViewById(0x7f09025b);
        s = (TextView)c.findViewById(0x7f090207);
        t = (TextView)c.findViewById(0x7f090208);
        u = (TextView)c.findViewById(0x7f09020a);
        v = (TextView)c.findViewById(0x7f09020b);
        A = (TextView)c.findViewById(0x7f0901f5);
        B = (LinearLayout)c.findViewById(0x7f0901f4);
        C = (LinearLayout)c.findViewById(0x7f090205);
        E = (Button)c.findViewById(0x7f090129);
        F = (Button)c.findViewById(0x7f09012a);
        G = (Button)c.findViewById(0x7f0900dc);
        E.setOnClickListener(this);
        F.setOnClickListener(this);
        G.setOnClickListener(this);
        return c;
    }
}
