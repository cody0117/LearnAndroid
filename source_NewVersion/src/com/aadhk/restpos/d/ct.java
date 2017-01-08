// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.aadhk.restpos.PaymentActivity;
import com.aadhk.restpos.bean.Company;
import com.aadhk.restpos.bean.Customer;
import com.aadhk.restpos.bean.Order;
import com.aadhk.restpos.bean.OrderItem;
import com.aadhk.restpos.bean.OrderModifier;
import com.aadhk.restpos.bean.OrderPayment;
import com.aadhk.restpos.f.i;
import com.aadhk.restpos.f.j;
import com.aadhk.restpos.f.l;
import java.util.Iterator;
import java.util.List;

public final class ct extends Fragment
{

    private LinearLayout A;
    private LinearLayout B;
    private List C;
    private List D;
    private String E;
    private String F;
    private int G;
    private boolean H;
    private boolean I;
    private Order J;
    private LayoutInflater a;
    private View b;
    private PaymentActivity c;
    private TextView d;
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
    private LinearLayout z;

    public ct()
    {
    }

    private void c()
    {
        z.removeAllViews();
        View view;
label0:
        for (Iterator iterator = C.iterator(); iterator.hasNext(); z.addView(view))
        {
            OrderItem orderitem = (OrderItem)iterator.next();
            view = a.inflate(0x7f030081, null);
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
                s2 = com.aadhk.restpos.f.j.a(G, orderitem.getItemPrice(), F);
            }
            textview.setText(s1);
            textview1.setText((new StringBuilder("x")).append(orderitem.getNum()).toString());
            textview2.setText(s2);
            if (orderitem.getDisAmt() != 0.0D && orderitem.getStatus() != 1)
            {
                textview3.setText((new StringBuilder("-")).append(com.aadhk.restpos.f.j.a(G, orderitem.getDisAmt(), F)).append(": ").append(orderitem.getDisName()).toString());
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
                view1 = a.inflate(0x7f030082, null);
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
                    s4 = com.aadhk.restpos.f.j.a(G, ordermodifier.getModifierPrice(), F);
                }
                textview4.setText((new StringBuilder()).append(s3).append(ordermodifier.getModifierName()).toString());
                textview5.setText((new StringBuilder("x")).append(ordermodifier.getQty()).toString());
                textview6.setText(s4);
                linearlayout.addView(view1);
            } while (true);
        }

    }

    public final void a()
    {
        Customer customer = c.g();
        if (customer != null)
        {
            B.setVisibility(0);
            w.setText(customer.getName());
        } else
        {
            B.setVisibility(8);
        }
        if (!TextUtils.isEmpty(J.getReceiptNote()))
        {
            b.findViewById(0x7f0b01a3).setVisibility(0);
            v.setText(J.getReceiptNote());
        } else
        {
            b.findViewById(0x7f0b01a3).setVisibility(8);
        }
        q.setText(com.aadhk.restpos.f.j.a(G, J.getAmount(), F));
        if (J.getSplitType() == 1)
        {
            y.setVisibility(0);
            y.setText(getString(0x7f0901e5));
        } else
        if (J.getSplitType() == 2)
        {
            y.setVisibility(0);
            y.setText(getString(0x7f0901e4));
        } else
        {
            y.setVisibility(8);
        }
        if (J.getDiscountAmt() > 0.0D || J.getServiceAmt() > 0.0D || !I && (J.getTax1Amt() > 0.0D || J.getTax2Amt() > 0.0D))
        {
            b.findViewById(0x7f0b01a7).setVisibility(0);
            i.setText(com.aadhk.restpos.f.j.a(G, J.getSubTotal(), F));
        } else
        {
            b.findViewById(0x7f0b01a7).setVisibility(8);
        }
        if (J.getDiscountAmt() > 0.0D)
        {
            b.findViewById(0x7f0b01a9).setVisibility(0);
            o.setText(com.aadhk.restpos.f.j.a(G, J.getDiscountAmt(), F));
            String s1;
            Object aobj[];
            String s2;
            String s3;
            Object aobj1[];
            String s4;
            if (!TextUtils.isEmpty(J.getDiscountReason()))
            {
                p.setVisibility(0);
                p.setText(J.getDiscountReason());
            } else
            {
                p.setVisibility(8);
            }
        } else
        {
            b.findViewById(0x7f0b01a9).setVisibility(8);
        }
        if (!I && J.getTax1Amt() > 0.0D)
        {
            b.findViewById(0x7f0b01ad).setVisibility(0);
            l.setText((new StringBuilder()).append(J.getTax1Name()).append(":").toString());
            j.setText(com.aadhk.restpos.f.j.a(G, J.getTax1Amt(), F));
        } else
        {
            b.findViewById(0x7f0b01ad).setVisibility(8);
        }
        if (!I && J.getTax2Amt() > 0.0D)
        {
            b.findViewById(0x7f0b01b0).setVisibility(0);
            m.setText((new StringBuilder()).append(J.getTax2Name()).append(":").toString());
            k.setText(com.aadhk.restpos.f.j.a(G, J.getTax2Amt(), F));
        } else
        {
            b.findViewById(0x7f0b01b0).setVisibility(8);
        }
        if (J.getServiceAmt() > 0.0D)
        {
            b.findViewById(0x7f0b01ab).setVisibility(0);
            n.setText(com.aadhk.restpos.f.j.a(G, J.getServiceAmt(), F));
        } else
        {
            b.findViewById(0x7f0b01ab).setVisibility(8);
        }
        if (I && J.getTax1Amt() > 0.0D)
        {
            b.findViewById(0x7f0b01b5).setVisibility(0);
            s3 = getString(0x7f0902bb);
            aobj1 = new Object[1];
            aobj1[0] = J.getTax1Name();
            s4 = String.format(s3, aobj1);
            r.setText((new StringBuilder()).append(s4).append(":").toString());
            s.setText(com.aadhk.restpos.f.j.a(G, J.getTax1Amt(), F));
        } else
        {
            b.findViewById(0x7f0b01b5).setVisibility(8);
        }
        if (I && J.getTax2Amt() > 0.0D)
        {
            b.findViewById(0x7f0b01b8).setVisibility(0);
            s1 = getString(0x7f0902bb);
            aobj = new Object[1];
            aobj[0] = J.getTax2Name();
            s2 = String.format(s1, aobj);
            t.setText((new StringBuilder()).append(s2).append(":").toString());
            u.setText(com.aadhk.restpos.f.j.a(G, J.getTax2Amt(), F));
            return;
        } else
        {
            b.findViewById(0x7f0b01b8).setVisibility(8);
            return;
        }
    }

    public final void b()
    {
        A.removeAllViews();
        Iterator iterator = D.iterator();
        while (iterator.hasNext()) 
        {
            OrderPayment orderpayment = (OrderPayment)iterator.next();
            View view = a.inflate(0x7f030083, null);
            TextView textview = (TextView)view.findViewById(0x7f0b012c);
            TextView textview1 = (TextView)view.findViewById(0x7f0b0168);
            TextView textview2 = (TextView)view.findViewById(0x7f0b0207);
            TextView textview3 = (TextView)view.findViewById(0x7f0b0208);
            LinearLayout linearlayout = (LinearLayout)view.findViewById(0x7f0b0206);
            textview.setText((new StringBuilder()).append(orderpayment.getPaymentMethodName()).append(":").toString());
            textview1.setText(com.aadhk.restpos.f.j.a(G, orderpayment.getPaid(), F));
            if (orderpayment.getChangeAmt() > 0.0D)
            {
                linearlayout.setVisibility(0);
                textview2.setText(getString(0x7f090319));
                textview3.setText(com.aadhk.restpos.f.j.a(G, orderpayment.getChangeAmt(), F));
            } else
            {
                linearlayout.setVisibility(8);
            }
            A.addView(view);
        }
    }

    public final void onActivityCreated(Bundle bundle)
    {
        super.onActivityCreated(bundle);
        l l1 = new l(c);
        E = l1.c();
        H = l1.k();
        Company company = c.n();
        F = company.getCurrencySign();
        G = company.getDecimalPlace();
        I = company.isIncludeTax();
        J = c.e();
        D = J.getOrderPayments();
        C = c.f();
        d.setText(J.getTableName());
        e.setText(J.getCashierName());
        f.setText((new StringBuilder()).append(J.getOrderNum()).toString());
        g.setText((new StringBuilder()).append(J.getPersonNum()).toString());
        h.setText(com.aadhk.restpos.f.i.c(J.getStartTime(), E));
        if (!TextUtils.isEmpty(company.getTaxNumber()))
        {
            b.findViewById(0x7f0b019f).setVisibility(0);
            x.setText((new StringBuilder()).append(company.getTaxNumber()).toString());
        } else
        {
            b.findViewById(0x7f0b019f).setVisibility(8);
        }
        a();
        c();
        b();
    }

    public final void onActivityResult(int i1, int j1, Intent intent)
    {
label0:
        {
            if (j1 == -1 && i1 == 6)
            {
                Customer customer = c.g();
                if (customer == null)
                {
                    break label0;
                }
                B.setVisibility(0);
                w.setText(customer.getName());
            }
            return;
        }
        B.setVisibility(8);
    }

    public final void onAttach(Activity activity)
    {
        super.onAttach(activity);
        c = (PaymentActivity)activity;
    }

    public final void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        a = c.getLayoutInflater();
    }

    public final View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        b = layoutinflater.inflate(0x7f030077, viewgroup, false);
        d = (TextView)b.findViewById(0x7f0b019a);
        e = (TextView)b.findViewById(0x7f0b019b);
        f = (TextView)b.findViewById(0x7f0b019c);
        g = (TextView)b.findViewById(0x7f0b019d);
        h = (TextView)b.findViewById(0x7f0b019e);
        v = (TextView)b.findViewById(0x7f0b01a4);
        w = (TextView)b.findViewById(0x7f0b01a2);
        B = (LinearLayout)b.findViewById(0x7f0b01a1);
        x = (TextView)b.findViewById(0x7f0b01a0);
        i = (TextView)b.findViewById(0x7f0b01a8);
        l = (TextView)b.findViewById(0x7f0b01ae);
        m = (TextView)b.findViewById(0x7f0b01b1);
        j = (TextView)b.findViewById(0x7f0b01af);
        k = (TextView)b.findViewById(0x7f0b01b2);
        n = (TextView)b.findViewById(0x7f0b01ac);
        o = (TextView)b.findViewById(0x7f0b0176);
        p = (TextView)b.findViewById(0x7f0b01aa);
        q = (TextView)b.findViewById(0x7f0b00db);
        r = (TextView)b.findViewById(0x7f0b01b6);
        s = (TextView)b.findViewById(0x7f0b01b7);
        t = (TextView)b.findViewById(0x7f0b01b9);
        u = (TextView)b.findViewById(0x7f0b01ba);
        y = (TextView)b.findViewById(0x7f0b01a6);
        z = (LinearLayout)b.findViewById(0x7f0b01a5);
        A = (LinearLayout)b.findViewById(0x7f0b01b4);
        return b;
    }
}
