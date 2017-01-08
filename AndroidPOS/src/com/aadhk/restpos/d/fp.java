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
import com.aadhk.restpos.util.o;
import com.aadhk.restpos.util.p;
import com.aadhk.restpos.util.r;
import java.util.Iterator;
import java.util.List;

public final class fp extends Fragment
{

    private TextView A;
    private TextView B;
    private TextView C;
    private TextView D;
    private LinearLayout E;
    private LinearLayout F;
    private LinearLayout G;
    private String H;
    private int I;
    private boolean J;
    private boolean K;
    private r L;
    private String M;
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
    private TextView z;

    public fp()
    {
    }

    public final void a()
    {
        Order order = c.h();
        d.setText(order.getTableName());
        e.setText(order.getCashierName());
        f.setText((new StringBuilder()).append(order.getOrderNum()).toString());
        g.setText((new StringBuilder()).append(order.getPersonNum()).toString());
        h.setText(com.aadhk.restpos.util.o.a(order.getOrderTime(), L.c(), L.d()));
        Customer customer;
        if (!TextUtils.isEmpty(M))
        {
            b.findViewById(0x7f0901ee).setVisibility(0);
            C.setText(M);
        } else
        {
            b.findViewById(0x7f0901ee).setVisibility(8);
        }
        customer = c.m();
        if (customer != null)
        {
            G.setVisibility(0);
            B.setText(customer.getName());
        } else
        {
            G.setVisibility(8);
        }
        if (!TextUtils.isEmpty(order.getReceiptNote()))
        {
            b.findViewById(0x7f0901f2).setVisibility(0);
            A.setText(order.getReceiptNote());
        } else
        {
            b.findViewById(0x7f0901f2).setVisibility(8);
        }
        t.setText(com.aadhk.restpos.util.p.a(I, order.getAmount(), H));
        if (order.getSplitType() == 1)
        {
            D.setVisibility(0);
            D.setText(getString(0x7f080224));
        } else
        if (order.getSplitType() == 2)
        {
            D.setVisibility(0);
            D.setText(getString(0x7f080223));
        } else
        {
            D.setVisibility(8);
        }
        if (order.getDiscountAmt() > 0.0D || order.getServiceAmt() > 0.0D || !K && (order.getTax1Amt() > 0.0D || order.getTax2Amt() > 0.0D))
        {
            b.findViewById(0x7f0901f6).setVisibility(0);
            i.setText(com.aadhk.restpos.util.p.a(I, order.getSubTotal(), H));
        } else
        {
            b.findViewById(0x7f0901f6).setVisibility(8);
        }
        if (order.getDiscountAmt() > 0.0D)
        {
            b.findViewById(0x7f0901f8).setVisibility(0);
            r.setText(com.aadhk.restpos.util.p.a(I, order.getDiscountAmt(), H));
            String s1;
            Object aobj[];
            String s2;
            String s3;
            Object aobj1[];
            String s4;
            String s5;
            Object aobj2[];
            String s6;
            if (!TextUtils.isEmpty(order.getDiscountReason()))
            {
                s.setVisibility(0);
                s.setText(order.getDiscountReason());
            } else
            {
                s.setVisibility(8);
            }
        } else
        {
            b.findViewById(0x7f0901f8).setVisibility(8);
        }
        if (!K && order.getTax1Amt() > 0.0D)
        {
            b.findViewById(0x7f0901fb).setVisibility(0);
            m.setText((new StringBuilder()).append(order.getTax1Name()).append(":").toString());
            j.setText(com.aadhk.restpos.util.p.a(I, order.getTax1Amt(), H));
        } else
        {
            b.findViewById(0x7f0901fb).setVisibility(8);
        }
        if (!K && order.getTax2Amt() > 0.0D)
        {
            b.findViewById(0x7f0901fe).setVisibility(0);
            n.setText((new StringBuilder()).append(order.getTax2Name()).append(":").toString());
            k.setText(com.aadhk.restpos.util.p.a(I, order.getTax2Amt(), H));
        } else
        {
            b.findViewById(0x7f0901fe).setVisibility(8);
        }
        if (!K && order.getTax3Amt() > 0.0D)
        {
            b.findViewById(0x7f090201).setVisibility(0);
            o.setText((new StringBuilder()).append(order.getTax3Name()).append(":").toString());
            l.setText(com.aadhk.restpos.util.p.a(I, order.getTax3Amt(), H));
        } else
        {
            b.findViewById(0x7f090201).setVisibility(8);
        }
        if (order.getServiceAmt() > 0.0D)
        {
            b.findViewById(0x7f0901fa).setVisibility(0);
            p.setText(com.aadhk.restpos.util.p.a(I, order.getServiceAmt(), H));
        } else
        {
            b.findViewById(0x7f0901fa).setVisibility(8);
        }
        if (order.getGratuity() > 0.0D)
        {
            b.findViewById(0x7f0901cd).setVisibility(0);
            q.setText(com.aadhk.restpos.util.p.a(I, order.getGratuity(), H));
        } else
        {
            b.findViewById(0x7f0901cd).setVisibility(8);
        }
        if (K && order.getTax1Amt() > 0.0D)
        {
            b.findViewById(0x7f090206).setVisibility(0);
            s5 = getString(0x7f080319);
            aobj2 = new Object[1];
            aobj2[0] = order.getTax1Name();
            s6 = String.format(s5, aobj2);
            u.setText((new StringBuilder()).append(s6).append(":").toString());
            v.setText(com.aadhk.restpos.util.p.a(I, order.getTax1Amt(), H));
        } else
        {
            b.findViewById(0x7f090206).setVisibility(8);
        }
        if (K && order.getTax2Amt() > 0.0D)
        {
            b.findViewById(0x7f090209).setVisibility(0);
            s3 = getString(0x7f080319);
            aobj1 = new Object[1];
            aobj1[0] = order.getTax2Name();
            s4 = String.format(s3, aobj1);
            w.setText((new StringBuilder()).append(s4).append(":").toString());
            x.setText(com.aadhk.restpos.util.p.a(I, order.getTax2Amt(), H));
        } else
        {
            b.findViewById(0x7f090209).setVisibility(8);
        }
        if (K && order.getTax3Amt() > 0.0D)
        {
            b.findViewById(0x7f09020c).setVisibility(0);
            s1 = getString(0x7f080319);
            aobj = new Object[1];
            aobj[0] = order.getTax3Name();
            s2 = String.format(s1, aobj);
            y.setText((new StringBuilder()).append(s2).append(":").toString());
            z.setText(com.aadhk.restpos.util.p.a(I, order.getTax3Amt(), H));
            return;
        } else
        {
            b.findViewById(0x7f09020c).setVisibility(8);
            return;
        }
    }

    public final void b()
    {
        F.removeAllViews();
        Iterator iterator = c.h().getOrderPayments().iterator();
        while (iterator.hasNext()) 
        {
            OrderPayment orderpayment = (OrderPayment)iterator.next();
            View view = a.inflate(0x7f03009b, null);
            TextView textview = (TextView)view.findViewById(0x7f090171);
            TextView textview1 = (TextView)view.findViewById(0x7f0901b7);
            TextView textview2 = (TextView)view.findViewById(0x7f09025d);
            TextView textview3 = (TextView)view.findViewById(0x7f09025e);
            LinearLayout linearlayout = (LinearLayout)view.findViewById(0x7f09025c);
            textview.setText((new StringBuilder()).append(orderpayment.getPaymentMethodName()).append(":").toString());
            textview1.setText(com.aadhk.restpos.util.p.a(I, orderpayment.getPaid(), H));
            if (orderpayment.getChangeAmt() > 0.0D)
            {
                linearlayout.setVisibility(0);
                textview2.setText(getString(0x7f080379));
                textview3.setText(com.aadhk.restpos.util.p.a(I, orderpayment.getChangeAmt(), H));
            } else
            {
                linearlayout.setVisibility(8);
            }
            F.addView(view);
        }
    }

    public final void onActivityCreated(Bundle bundle)
    {
        super.onActivityCreated(bundle);
        L = c.y();
        J = L.l();
        Company company = c.v();
        H = company.getCurrencySign();
        I = company.getDecimalPlace();
        K = company.isItemPriceIncludeTax();
        M = company.getTaxNumber();
        a();
        E.removeAllViews();
        Iterator iterator = c.l().iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            OrderItem orderitem = (OrderItem)iterator.next();
            if (orderitem.getStatus() != 1 || J)
            {
                View view = a.inflate(0x7f030099, null);
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
                    s2 = com.aadhk.restpos.util.p.a(I, orderitem.getItemPrice() * (double)orderitem.getQty(), H);
                }
                textview.setText(s1);
                textview1.setText((new StringBuilder()).append(orderitem.getQty()).toString());
                textview2.setText(s2);
                if (orderitem.getDiscountAmt() != 0.0D && orderitem.getStatus() != 1)
                {
                    textview3.setText((new StringBuilder("-")).append(com.aadhk.restpos.util.p.a(I, orderitem.getDiscountAmt(), H)).append(": ").append(orderitem.getDiscountName()).toString());
                    textview3.setVisibility(0);
                } else
                {
                    textview3.setVisibility(8);
                }
                list = orderitem.getOrderModifiers();
                if (list != null && !list.isEmpty())
                {
                    iterator1 = list.iterator();
                    while (iterator1.hasNext()) 
                    {
                        OrderModifier ordermodifier = (OrderModifier)iterator1.next();
                        view1 = a.inflate(0x7f03009a, null);
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
                            s4 = com.aadhk.restpos.util.p.a(I, ordermodifier.getModifierPrice() * (double)ordermodifier.getQty(), H);
                        }
                        textview4.setText(ordermodifier.getModifierName());
                        textview5.setText((new StringBuilder()).append(s3).append(ordermodifier.getQty()).toString());
                        textview6.setText(s4);
                        linearlayout.addView(view1);
                    }
                }
                E.addView(view);
            }
        } while (true);
        b();
    }

    public final void onActivityResult(int i1, int j1, Intent intent)
    {
label0:
        {
            if (j1 == -1 && i1 == 6)
            {
                Customer customer = c.m();
                if (customer == null)
                {
                    break label0;
                }
                G.setVisibility(0);
                B.setText(customer.getName());
            }
            return;
        }
        G.setVisibility(8);
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
        b = layoutinflater.inflate(0x7f03008e, viewgroup, false);
        d = (TextView)b.findViewById(0x7f0901e9);
        e = (TextView)b.findViewById(0x7f0901ea);
        f = (TextView)b.findViewById(0x7f0901eb);
        g = (TextView)b.findViewById(0x7f0901ec);
        h = (TextView)b.findViewById(0x7f0901ed);
        A = (TextView)b.findViewById(0x7f0901f3);
        B = (TextView)b.findViewById(0x7f0901f1);
        G = (LinearLayout)b.findViewById(0x7f0901f0);
        C = (TextView)b.findViewById(0x7f0901ef);
        i = (TextView)b.findViewById(0x7f0901f7);
        m = (TextView)b.findViewById(0x7f0901fc);
        n = (TextView)b.findViewById(0x7f0901ff);
        o = (TextView)b.findViewById(0x7f090202);
        j = (TextView)b.findViewById(0x7f0901fd);
        k = (TextView)b.findViewById(0x7f090200);
        l = (TextView)b.findViewById(0x7f090203);
        p = (TextView)b.findViewById(0x7f0901cb);
        q = (TextView)b.findViewById(0x7f0901ce);
        r = (TextView)b.findViewById(0x7f0901c6);
        s = (TextView)b.findViewById(0x7f0901f9);
        t = (TextView)b.findViewById(0x7f09010f);
        u = (TextView)b.findViewById(0x7f090207);
        v = (TextView)b.findViewById(0x7f090208);
        w = (TextView)b.findViewById(0x7f09020a);
        x = (TextView)b.findViewById(0x7f09020b);
        y = (TextView)b.findViewById(0x7f09020d);
        z = (TextView)b.findViewById(0x7f09020e);
        D = (TextView)b.findViewById(0x7f0901f5);
        E = (LinearLayout)b.findViewById(0x7f0901f4);
        F = (LinearLayout)b.findViewById(0x7f090205);
        return b;
    }
}
