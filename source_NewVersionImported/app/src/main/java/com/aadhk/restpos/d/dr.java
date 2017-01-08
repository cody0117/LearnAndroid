// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.app.Activity;
import android.content.res.Resources;
import android.database.sqlite.SQLiteDatabase;
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
import com.aadhk.product.library.a.a;
import com.aadhk.product.library.a.b;
import com.aadhk.restpos.ReceiptListActivity;
import com.aadhk.restpos.b.e;
import com.aadhk.restpos.b.m;
import com.aadhk.restpos.b.r;
import com.aadhk.restpos.bean.Company;
import com.aadhk.restpos.bean.Customer;
import com.aadhk.restpos.bean.Order;
import com.aadhk.restpos.bean.OrderItem;
import com.aadhk.restpos.bean.OrderModifier;
import com.aadhk.restpos.bean.OrderPayment;
import com.aadhk.restpos.bean.POSPrinterSetting;
import com.aadhk.restpos.bean.RolePermission;
import com.aadhk.restpos.c.au;
import com.aadhk.restpos.c.g;
import com.aadhk.restpos.e.f;
import com.aadhk.restpos.f.i;
import com.aadhk.restpos.f.j;
import com.aadhk.restpos.f.l;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

// Referenced classes of package com.aadhk.restpos.d:
//            du, dt, ds

public final class dr extends Fragment
    implements android.view.View.OnClickListener
{

    private TextView A;
    private LinearLayout B;
    private LinearLayout C;
    private LinearLayout D;
    private Button E;
    private Button F;
    private Button G;
    private SQLiteDatabase H;
    private f I;
    private Company J;
    private Customer K;
    private List L;
    private List M;
    private m N;
    private e O;
    private String P;
    private String Q;
    private int R;
    private boolean S;
    private Order T;
    private POSPrinterSetting U;
    private RolePermission V;
    b a;
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

    public dr()
    {
        a = new du(this);
    }

    private void a()
    {
        g g1 = new g(d);
        String s1 = getString(0x7f0900c4);
        Object aobj[] = new Object[1];
        aobj[0] = T.getOrderNum();
        g1.setTitle(String.format(s1, aobj));
        g1.a(new dt(this));
        g1.show();
    }

    static void a(dr dr1)
    {
        dr1.a();
    }

    static Order b(dr dr1)
    {
        return dr1.T;
    }

    private void b()
    {
        C.removeAllViews();
        Iterator iterator = M.iterator();
        while (iterator.hasNext()) 
        {
            OrderPayment orderpayment = (OrderPayment)iterator.next();
            View view = b.inflate(0x7f030083, null);
            TextView textview = (TextView)view.findViewById(0x7f0b012c);
            TextView textview1 = (TextView)view.findViewById(0x7f0b0168);
            TextView textview2 = (TextView)view.findViewById(0x7f0b0207);
            TextView textview3 = (TextView)view.findViewById(0x7f0b0208);
            LinearLayout linearlayout = (LinearLayout)view.findViewById(0x7f0b0206);
            textview.setText((new StringBuilder()).append(orderpayment.getPaymentMethodName()).append(":").toString());
            textview1.setText(com.aadhk.restpos.f.j.a(R, orderpayment.getPaid(), Q));
            if (orderpayment.getChangeAmt() > 0.0D)
            {
                linearlayout.setVisibility(0);
                textview2.setText(getString(0x7f090319));
                textview3.setText(com.aadhk.restpos.f.j.a(R, orderpayment.getChangeAmt(), Q));
            } else
            {
                linearlayout.setVisibility(8);
            }
            C.addView(view);
        }
    }

    static m c(dr dr1)
    {
        return dr1.N;
    }

    private void c()
    {
        B.removeAllViews();
        View view;
label0:
        for (Iterator iterator = L.iterator(); iterator.hasNext(); B.addView(view))
        {
            OrderItem orderitem = (OrderItem)iterator.next();
            view = b.inflate(0x7f030081, null);
            TextView textview = (TextView)view.findViewById(0x7f0b012c);
            TextView textview1 = (TextView)view.findViewById(0x7f0b0144);
            TextView textview2 = (TextView)view.findViewById(0x7f0b00d3);
            TextView textview3 = (TextView)view.findViewById(0x7f0b010e);
            LinearLayout linearlayout = (LinearLayout)view.findViewById(0x7f0b0145);
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
                    s5 = (new StringBuilder()).append(orderitem.getItemName()).append("\n\t").append(getString(0x7f090273)).toString();
                } else
                {
                    s5 = (new StringBuilder()).append(orderitem.getItemName()).append("\n\t").append(getString(0x7f090273)).append(":").append(orderitem.getCancelReason()).toString();
                }
                s1 = s5;
                s2 = "-";
            } else
            {
                s1 = orderitem.getItemName();
                s2 = com.aadhk.restpos.f.j.a(R, orderitem.getItemPrice(), Q);
            }
            textview.setText(s1);
            textview1.setText((new StringBuilder("x")).append(orderitem.getNum()).toString());
            textview2.setText(s2);
            if (orderitem.getDisAmt() != 0.0D && orderitem.getStatus() != 1)
            {
                textview3.setText((new StringBuilder("-")).append(com.aadhk.restpos.f.j.a(R, orderitem.getDisAmt(), Q)).append(": ").append(orderitem.getDisName()).toString());
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
                view1 = b.inflate(0x7f030082, null);
                textview4 = (TextView)view1.findViewById(0x7f0b012c);
                textview5 = (TextView)view1.findViewById(0x7f0b0144);
                textview6 = (TextView)view1.findViewById(0x7f0b00d3);
                String s3;
                String s4;
                if (ordermodifier.getType() == 1)
                {
                    s3 = " +";
                } else
                {
                    s3 = " -";
                }
                if (orderitem.getStatus() == 1)
                {
                    s4 = "-";
                } else
                {
                    s4 = com.aadhk.restpos.f.j.a(R, ordermodifier.getModifierPrice(), Q);
                }
                textview4.setText((new StringBuilder()).append(s3).append(ordermodifier.getModifierName()).toString());
                textview5.setText((new StringBuilder("x")).append(ordermodifier.getQty()).toString());
                textview6.setText(s4);
                linearlayout.addView(view1);
            } while (true);
        }

    }

    static ReceiptListActivity d(dr dr1)
    {
        return dr1.d;
    }

    static POSPrinterSetting e(dr dr1)
    {
        return dr1.U;
    }

    static Customer f(dr dr1)
    {
        return dr1.K;
    }

    static List g(dr dr1)
    {
        return dr1.L;
    }

    static f h(dr dr1)
    {
        return dr1.I;
    }

    public final void onActivityCreated(Bundle bundle)
    {
        super.onActivityCreated(bundle);
        P = (new l(d)).c();
        V = (RolePermission)d.o().get(Integer.valueOf(202));
        J = d.n();
        Q = J.getCurrencySign();
        R = J.getDecimalPlace();
        S = J.isIncludeTax();
        H = d.b();
        T = d.d();
        M = T.getOrderPayments();
        L = d.c();
        e.setText(T.getTableName());
        f.setText(T.getCashierName());
        g.setText((new StringBuilder()).append(T.getOrderNum()).toString());
        h.setText((new StringBuilder()).append(T.getPersonNum()).toString());
        i.setText(com.aadhk.restpos.f.i.c(T.getStartTime(), P));
        r r1;
        if (!TextUtils.isEmpty(J.getTaxNumber()))
        {
            c.findViewById(0x7f0b019f).setVisibility(0);
            y.setText((new StringBuilder()).append(J.getTaxNumber()).toString());
        } else
        {
            c.findViewById(0x7f0b019f).setVisibility(8);
        }
        r1 = new r(H);
        N = new m(H);
        O = new e(H);
        if (T.getCustomerId() > 0L)
        {
            K = O.a(T.getCustomerId());
        }
        U = r1.b(2);
        if (!U.isEnable())
        {
            E.setVisibility(8);
        }
        if (!V.isShow())
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
        if (!TextUtils.isEmpty(T.getReceiptNote()))
        {
            c.findViewById(0x7f0b01a3).setVisibility(0);
            w.setText(T.getReceiptNote());
        } else
        {
            c.findViewById(0x7f0b01a3).setVisibility(8);
        }
        r.setText(com.aadhk.restpos.f.j.a(R, T.getAmount(), Q));
        if (T.getSplitType() == 1)
        {
            A.setVisibility(0);
            A.setText(getString(0x7f0901e5));
        } else
        if (T.getSplitType() == 2)
        {
            A.setVisibility(0);
            A.setText(getString(0x7f0901e4));
        } else
        {
            A.setVisibility(8);
        }
        if (T.getDiscountAmt() > 0.0D || T.getServiceAmt() > 0.0D || !S && (T.getTax1Amt() > 0.0D || T.getTax2Amt() > 0.0D))
        {
            c.findViewById(0x7f0b01a7).setVisibility(0);
            j.setText(com.aadhk.restpos.f.j.a(R, T.getSubTotal(), Q));
        } else
        {
            c.findViewById(0x7f0b01a7).setVisibility(8);
        }
        if (T.getDiscountAmt() > 0.0D)
        {
            c.findViewById(0x7f0b01a9).setVisibility(0);
            p.setText(com.aadhk.restpos.f.j.a(R, T.getDiscountAmt(), Q));
            String s1;
            Object aobj[];
            String s2;
            String s3;
            Object aobj1[];
            String s4;
            String s5;
            if (!TextUtils.isEmpty(T.getDiscountReason()))
            {
                q.setVisibility(0);
                q.setText(T.getDiscountReason());
            } else
            {
                q.setVisibility(8);
            }
        } else
        {
            c.findViewById(0x7f0b01a9).setVisibility(8);
        }
        if (!S && T.getTax1Amt() > 0.0D)
        {
            c.findViewById(0x7f0b01ad).setVisibility(0);
            m.setText((new StringBuilder()).append(T.getTax1Name()).append(":").toString());
            k.setText(com.aadhk.restpos.f.j.a(R, T.getTax1Amt(), Q));
        } else
        {
            c.findViewById(0x7f0b01ad).setVisibility(8);
        }
        if (!S && T.getTax2Amt() > 0.0D)
        {
            c.findViewById(0x7f0b01b0).setVisibility(0);
            n.setText((new StringBuilder()).append(T.getTax2Name()).append(":").toString());
            l.setText(com.aadhk.restpos.f.j.a(R, T.getTax2Amt(), Q));
        } else
        {
            c.findViewById(0x7f0b01b0).setVisibility(8);
        }
        if (T.getServiceAmt() > 0.0D)
        {
            c.findViewById(0x7f0b01ab).setVisibility(0);
            o.setText(com.aadhk.restpos.f.j.a(R, T.getServiceAmt(), Q));
        } else
        {
            c.findViewById(0x7f0b01ab).setVisibility(8);
        }
        if (T.getStatus() == 2)
        {
            s5 = getString(0x7f090273);
            if (!TextUtils.isEmpty(T.getCancelReason()))
            {
                s5 = (new StringBuilder()).append(s5).append(": ").append(T.getCancelReason()).toString();
            }
            z.setVisibility(0);
            z.setText(s5);
            c.findViewById(0x7f0b01b3).setVisibility(8);
        }
        if (S && T.getTax1Amt() > 0.0D)
        {
            c.findViewById(0x7f0b01b5).setVisibility(0);
            s3 = getString(0x7f0902bb);
            aobj1 = new Object[1];
            aobj1[0] = T.getTax1Name();
            s4 = String.format(s3, aobj1);
            s.setText((new StringBuilder()).append(s4).append(":").toString());
            t.setText(com.aadhk.restpos.f.j.a(R, T.getTax1Amt(), Q));
        } else
        {
            c.findViewById(0x7f0b01b5).setVisibility(8);
        }
        if (S && T.getTax2Amt() > 0.0D)
        {
            c.findViewById(0x7f0b01b8).setVisibility(0);
            s1 = getString(0x7f0902bb);
            aobj = new Object[1];
            aobj[0] = T.getTax2Name();
            s2 = String.format(s1, aobj);
            u.setText((new StringBuilder()).append(s2).append(":").toString());
            v.setText(com.aadhk.restpos.f.j.a(R, T.getTax2Amt(), Q));
        } else
        {
            c.findViewById(0x7f0b01b8).setVisibility(8);
        }
        c();
        b();
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
        a a1 = new a(d, a, getString(0x7f090177));
        if (android.os.Build.VERSION.SDK_INT < 11) goto _L6; else goto _L5
_L5:
        a1.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null);
_L8:
        return;
_L6:
        a1.execute(null);
        return;
_L4:
        Toast.makeText(d, 0x7f0901f4, 1).show();
        return;
_L2:
        if (view == F)
        {
            String s1 = (new StringBuilder()).append(J.getName()).append(" - ").append(d.getResources().getString(0x7f09012c)).toString();
            I.a(U, T, L, null, s1, true);
            return;
        }
        if (view == G)
        {
            if (!V.isManagerPermission())
            {
                a();
                return;
            } else
            {
                au au1 = new au(d);
                au1.a(new ds(this));
                au1.show();
                return;
            }
        }
        if (true) goto _L8; else goto _L7
_L7:
    }

    public final void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        b = d.getLayoutInflater();
        I = new f(d);
    }

    public final View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        c = layoutinflater.inflate(0x7f030080, viewgroup, false);
        e = (TextView)c.findViewById(0x7f0b019a);
        f = (TextView)c.findViewById(0x7f0b019b);
        g = (TextView)c.findViewById(0x7f0b019c);
        h = (TextView)c.findViewById(0x7f0b019d);
        i = (TextView)c.findViewById(0x7f0b019e);
        w = (TextView)c.findViewById(0x7f0b01a4);
        x = (TextView)c.findViewById(0x7f0b01a2);
        D = (LinearLayout)c.findViewById(0x7f0b01a1);
        y = (TextView)c.findViewById(0x7f0b01a0);
        j = (TextView)c.findViewById(0x7f0b01a8);
        m = (TextView)c.findViewById(0x7f0b01ae);
        n = (TextView)c.findViewById(0x7f0b01b1);
        k = (TextView)c.findViewById(0x7f0b01af);
        l = (TextView)c.findViewById(0x7f0b01b2);
        o = (TextView)c.findViewById(0x7f0b01ac);
        p = (TextView)c.findViewById(0x7f0b0176);
        q = (TextView)c.findViewById(0x7f0b01aa);
        r = (TextView)c.findViewById(0x7f0b00db);
        z = (TextView)c.findViewById(0x7f0b0205);
        s = (TextView)c.findViewById(0x7f0b01b6);
        t = (TextView)c.findViewById(0x7f0b01b7);
        u = (TextView)c.findViewById(0x7f0b01b9);
        v = (TextView)c.findViewById(0x7f0b01ba);
        A = (TextView)c.findViewById(0x7f0b01a6);
        B = (LinearLayout)c.findViewById(0x7f0b01a5);
        C = (LinearLayout)c.findViewById(0x7f0b01b4);
        E = (Button)c.findViewById(0x7f0b00ed);
        F = (Button)c.findViewById(0x7f0b00ee);
        G = (Button)c.findViewById(0x7f0b00c9);
        E.setOnClickListener(this);
        F.setOnClickListener(this);
        G.setOnClickListener(this);
        return c;
    }
}
