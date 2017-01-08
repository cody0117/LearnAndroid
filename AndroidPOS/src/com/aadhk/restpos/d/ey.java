// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.app.Activity;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.os.AsyncTask;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;
import com.aadhk.product.library.a.c;
import com.aadhk.product.library.a.d;
import com.aadhk.product.library.b.a;
import com.aadhk.restpos.POSApp;
import com.aadhk.restpos.PaymentActivity;
import com.aadhk.restpos.bean.Company;
import com.aadhk.restpos.bean.Customer;
import com.aadhk.restpos.bean.Order;
import com.aadhk.restpos.bean.OrderPayment;
import com.aadhk.restpos.bean.POSPrinterSetting;
import com.aadhk.restpos.bean.PaymentMethod;
import com.aadhk.restpos.bean.RolePermission;
import com.aadhk.restpos.c.ap;
import com.aadhk.restpos.c.bl;
import com.aadhk.restpos.c.bw;
import com.aadhk.restpos.c.cd;
import com.aadhk.restpos.c.ch;
import com.aadhk.restpos.e.g;
import com.aadhk.restpos.g.s;
import com.aadhk.restpos.util.m;
import com.aadhk.restpos.util.o;
import com.aadhk.restpos.util.p;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

// Referenced classes of package com.aadhk.restpos.d:
//            fm, fa, fb, ez, 
//            fi, fj, fl, fh, 
//            fc, fk, fd, fe, 
//            ff, fg, fn

public final class ey extends Fragment
    implements android.view.View.OnClickListener
{

    private Button A;
    private Button B;
    private Button C;
    private Button D;
    private Button E;
    private Button F;
    private Button G;
    private Button H;
    private Button I;
    private Button J;
    private Button K;
    private Button L;
    private ImageButton M;
    private double N;
    private double O;
    private double P;
    private double Q;
    private boolean R;
    private boolean S;
    private boolean T;
    private boolean U;
    private double V;
    private g W;
    private Customer X;
    private String Y;
    private int Z;
    c a;
    private View aa;
    private PaymentActivity ab;
    private Company ac;
    private double ad;
    private double ae;
    private double af;
    private Order ag;
    private List ah;
    private List ai;
    private List aj;
    private PaymentMethod ak;
    private RolePermission al;
    private RolePermission am;
    private RolePermission an;
    private RolePermission ao;
    private RolePermission ap;
    private POSPrinterSetting aq;
    private Button ar;
    private OrderPayment as;
    private boolean at;
    private List au;
    private s av;
    private POSApp aw;
    c b;
    c c;
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
    private LinearLayout p;
    private LinearLayout q;
    private LinearLayout r;
    private LinearLayout s;
    private Button t;
    private Button u;
    private Button v;
    private Button w;
    private Button x;
    private Button y;
    private Button z;

    public ey()
    {
        a = new fm(this);
        b = new fa(this);
        c = new fb(this);
    }

    static Button a(ey ey1)
    {
        return ey1.L;
    }

    static Button a(ey ey1, Button button)
    {
        ey1.L = button;
        return button;
    }

    static PaymentMethod a(ey ey1, PaymentMethod paymentmethod)
    {
        ey1.ak = paymentmethod;
        return paymentmethod;
    }

    private void a(int i1)
    {
        double d1 = O;
        if (U)
        {
            if (V >= 0.10000000000000001D && i1 < 10)
            {
                V = 0.10000000000000001D * V;
                d1 += V * (double)i1;
            }
        } else
        if ((i1 == 100 || i1 == 0) && d1 != 0.0D)
        {
            if (i1 == 0)
            {
                d1 *= 10D;
            } else
            if (i1 == 100)
            {
                d1 *= 100D;
            } else
            {
                d1 *= i1;
            }
        } else
        {
            if (d1 == 0.0D && i1 == 100)
            {
                i1 = 0;
            }
            d1 = d1 * 10D + (double)i1;
        }
        O = d1;
        j.setText(com.aadhk.restpos.util.p.a(Z, O, Y));
        m();
    }

    static void b(ey ey1)
    {
        if (ey1.ak.getType() == 1 || ey1.ak.getType() == 2 || ey1.ak.getType() == 3)
        {
            ey1.O = com.aadhk.restpos.util.m.b(ey1.N, ey1.P, ey1.Z);
        } else
        {
            ey1.O = 0.0D;
        }
        ey1.j.setText(com.aadhk.restpos.util.p.a(ey1.Z, ey1.O, ey1.Y));
        ey1.m();
    }

    static PaymentActivity c(ey ey1)
    {
        return ey1.ab;
    }

    static Order d(ey ey1)
    {
        return ey1.ag;
    }

    static void e(ey ey1)
    {
        ey1.h();
    }

    static void f(ey ey1)
    {
        ey1.i();
    }

    static double g(ey ey1)
    {
        return ey1.ad;
    }

    private void g()
    {
        ag = ab.h();
        ah = ab.l();
        ai = ag.getOrderPayments();
        ad = ag.getTax1Amt();
        ae = ag.getTax2Amt();
        af = ag.getTax3Amt();
        if (ag.getTableId() == -1L)
        {
            S = ac.isDeliveryAfterTax();
        } else
        {
            S = ac.isServiceAfterTax();
        }
        r.removeAllViewsInLayout();
        for (int i1 = 0; i1 < aj.size(); i1++)
        {
            PaymentMethod paymentmethod = (PaymentMethod)aj.get(i1);
            View view = ab.getLayoutInflater().inflate(0x7f03008d, null);
            Button button = (Button)view.findViewById(0x7f0901e8);
            if (i1 == -1 + aj.size())
            {
                view.findViewById(0x7f090196).setVisibility(8);
            }
            button.setText(paymentmethod.getName());
            r.addView(view);
            if (paymentmethod.isBeDefault())
            {
                button.setTextColor(getResources().getColor(0x7f07008a));
                button.setTextSize(18F);
                button.setTypeface(Typeface.DEFAULT_BOLD);
                L = button;
                ak = paymentmethod;
            }
            button.setOnClickListener(new ez(this, button, paymentmethod));
        }

        h();
        i();
    }

    static double h(ey ey1)
    {
        return ey1.ae;
    }

    private void h()
    {
        if (!aq.isEnable())
        {
            I.setEnabled(false);
            H.setEnabled(false);
        }
        if (!am.isShow())
        {
            m.setVisibility(8);
            e.setVisibility(8);
        }
        if (!an.isShow())
        {
            H.setEnabled(false);
        }
        if (!ao.isShow())
        {
            I.setEnabled(false);
        }
        if (ag.getTax1Amt() == 0.0D && ag.getTax2Amt() == 0.0D && ag.getTax3Amt() == 0.0D)
        {
            o.setVisibility(8);
            h.setVisibility(8);
        } else
        {
            o.setVisibility(0);
            h.setVisibility(0);
        }
        if (ag.getServiceAmt() == 0.0D)
        {
            n.setVisibility(8);
            g.setVisibility(8);
        } else
        {
            n.setVisibility(0);
            g.setVisibility(0);
        }
        if (ag.getGratuity() == 0.0D)
        {
            s.setVisibility(8);
        } else
        {
            s.setVisibility(0);
        }
        if (n.getVisibility() == 8 && o.getVisibility() == 8)
        {
            q.setVisibility(8);
        } else
        {
            q.setVisibility(0);
        }
        if (n.getVisibility() == 8 && o.getVisibility() == 8 && m.getVisibility() == 8)
        {
            p.setVisibility(8);
            return;
        } else
        {
            p.setVisibility(0);
            return;
        }
    }

    static double i(ey ey1)
    {
        return ey1.af;
    }

    private void i()
    {
        N = com.aadhk.restpos.util.m.a(ag.getSubTotal(), ag.getTax1Amt() + ag.getTax2Amt() + ag.getTax3Amt(), ag.getServiceAmt(), ag.getGratuity(), ag.getDiscountAmt(), Z, R);
        d.setText(com.aadhk.restpos.util.p.a(Z, ag.getSubTotal(), Y));
        h.setText(com.aadhk.restpos.util.p.a(Z, ag.getTax1Amt() + ag.getTax2Amt() + ag.getTax3Amt(), Y));
        g.setText(com.aadhk.restpos.util.p.a(Z, ag.getServiceAmt(), Y));
        f.setText(com.aadhk.restpos.util.p.a(Z, ag.getGratuity(), Y));
        e.setText(com.aadhk.restpos.util.p.a(Z, ag.getDiscountAmt(), Y));
        i.setText(com.aadhk.restpos.util.p.a(Z, N, Y));
        j.setText(com.aadhk.restpos.util.p.a(Z, O, Y));
        k.setText(com.aadhk.restpos.util.p.a(Z, P, Y));
        m();
        ag.setAmount(N);
    }

    private void j()
    {
        ch ch1 = new ch(ab, ag, au, S, T);
        ch1.a(new fi(this));
        ch1.show();
    }

    static boolean j(ey ey1)
    {
        return ey1.T;
    }

    static int k(ey ey1)
    {
        return ey1.Z;
    }

    private void k()
    {
        ArrayList arraylist = new ArrayList();
        arraylist.add(getString(0x7f08031a));
        if (ac.getTax1Name() != null && !"".equals(ac.getTax1Name()))
        {
            arraylist.add(ac.getTax1Name());
        }
        if (ac.getTax2Name() != null && !"".equals(ac.getTax2Name()))
        {
            arraylist.add(ac.getTax2Name());
        }
        if (ac.getTax3Name() != null && !"".equals(ac.getTax3Name()))
        {
            arraylist.add(ac.getTax3Name());
        }
        if (arraylist.size() == 4)
        {
            arraylist.add(getString(0x7f08031b));
        }
        String as1[] = (String[])arraylist.toArray(new String[arraylist.size()]);
        a a1 = new a(ab, as1);
        a1.a();
        a1.a(new fj(this));
        a1.show();
    }

    static POSPrinterSetting l(ey ey1)
    {
        return ey1.aq;
    }

    private void l()
    {
        List list = av.a();
        bw bw1 = new bw(ab, list, ag, T);
        bw1.setTitle(0x7f0802e2);
        bw1.a(new fl(this));
        bw1.show();
    }

    static Customer m(ey ey1)
    {
        return ey1.X;
    }

    private void m()
    {
        double d1 = O;
        double d2 = P;
        double d3 = N;
        int i1 = Z;
        Q = (new BigDecimal(d1)).add(new BigDecimal(d2)).subtract(new BigDecimal(d3)).setScale(i1, 4).doubleValue();
        if (Q >= 0.0D)
        {
            l.setText(com.aadhk.restpos.util.p.a(Z, Q, Y));
            l.setTextColor(getResources().getColor(0x7f07008a));
            return;
        } else
        {
            l.setText(com.aadhk.restpos.util.p.a(Z, Q, Y));
            l.setTextColor(getResources().getColor(0x7f070086));
            return;
        }
    }

    static List n(ey ey1)
    {
        return ey1.ah;
    }

    private void n()
    {
        P = P + O;
        as = new OrderPayment();
        as.setCashierName(ab.n());
        as.setOrderId(ag.getId());
        as.setPaymentMethodName(ak.getName());
        as.setPaymentMethodType(ak.getType());
        as.setPaid(O);
        if (Q > 0.0D)
        {
            as.setChangeAmt(Q);
            as.setAmount(com.aadhk.restpos.util.m.b(O, Q, Z));
        } else
        {
            as.setAmount(O);
        }
        if (ak.isOpenDrawer())
        {
            at = true;
        }
        as.setPaymentTime(com.aadhk.restpos.util.o.c());
        ai.add(as);
        O = 0.0D;
    }

    static g o(ey ey1)
    {
        return ey1.W;
    }

    static s p(ey ey1)
    {
        return ey1.av;
    }

    static void q(ey ey1)
    {
        ey1.n();
    }

    static boolean r(ey ey1)
    {
        return ey1.at;
    }

    static OrderPayment s(ey ey1)
    {
        return ey1.as;
    }

    static String t(ey ey1)
    {
        return ey1.Y;
    }

    static void u(ey ey1)
    {
        ey1.j();
    }

    static void v(ey ey1)
    {
        ey1.k();
    }

    static void w(ey ey1)
    {
        ey1.l();
    }

    public final void a()
    {
        String s1 = (new StringBuilder()).append(ac.getName()).append(" - ").append(getString(0x7f08015e)).toString();
        W.a(aq, ag, ah, X, s1, false);
    }

    public final void b()
    {
        ap ap1 = new ap(ab, ag.getReceiptNote());
        ap1.setTitle(0x7f080320);
        ap1.a(new fh(this));
        ap1.show();
    }

    public final void c()
    {
        if (!ap.isManagerPermission())
        {
            j();
            return;
        } else
        {
            bl bl1 = new bl(ab);
            bl1.a(new fc(this));
            bl1.show();
            return;
        }
    }

    public final void d()
    {
        cd cd1 = new cd(ab, ag, S, T);
        cd1.a(new fk(this));
        cd1.show();
    }

    public final void e()
    {
        if (!al.isManagerPermission())
        {
            k();
            return;
        } else
        {
            bl bl1 = new bl(ab);
            bl1.a(new fd(this));
            bl1.show();
            return;
        }
    }

    public final void f()
    {
        if (!am.isManagerPermission())
        {
            l();
            return;
        } else
        {
            bl bl1 = new bl(ab);
            bl1.a(new fe(this));
            bl1.show();
            return;
        }
    }

    public final void onActivityCreated(Bundle bundle)
    {
        super.onActivityCreated(bundle);
        if (X != null)
        {
            ar.setText(X.getName());
        }
        ac = ab.v();
        Y = ac.getCurrencySign();
        Z = ac.getDecimalPlace();
        R = ac.isItemPriceIncludeTax();
        T = ac.isDiscountAfterTax();
        Map map = ab.w();
        al = ab.j();
        am = ab.i();
        an = (RolePermission)map.get(Integer.valueOf(103));
        ao = (RolePermission)map.get(Integer.valueOf(105));
        ap = ab.k();
        if (ac.getDecimalPlace() > 0)
        {
            t.setOnClickListener(this);
        }
        av = ab.x();
        aq = aw.k();
        aj = aw.i();
        au = ab.g();
        g();
    }

    public final void onActivityResult(int i1, int j1, Intent intent)
    {
label0:
        {
            if (j1 == -1 && i1 == 6)
            {
                X = ab.m();
                if (X == null)
                {
                    break label0;
                }
                ar.setText(X.getName());
                ag.setCustomerId(X.getId());
                ag.setCustomerName(X.getName());
            }
            return;
        }
        ar.setText(0x7f080314);
    }

    public final void onAttach(Activity activity)
    {
        super.onAttach(activity);
        ab = (PaymentActivity)activity;
    }

    public final void onClick(View view)
    {
        view.getId();
        JVM INSTR lookupswitch 19: default 168
    //                   2131296553: 513
    //                   2131296726: 219
    //                   2131296727: 226
    //                   2131296728: 233
    //                   2131296729: 200
    //                   2131296730: 206
    //                   2131296731: 212
    //                   2131296732: 182
    //                   2131296733: 188
    //                   2131296734: 194
    //                   2131296735: 169
    //                   2131296736: 175
    //                   2131296737: 240
    //                   2131296738: 330
    //                   2131296739: 258
    //                   2131296740: 467
    //                   2131296741: 615
    //                   2131296742: 623
    //                   2131296743: 687;
           goto _L1 _L2 _L3 _L4 _L5 _L6 _L7 _L8 _L9 _L10 _L11 _L12 _L13 _L14 _L15 _L16 _L17 _L18 _L19 _L20
_L2:
        break MISSING_BLOCK_LABEL_513;
_L18:
        break MISSING_BLOCK_LABEL_615;
_L19:
        break MISSING_BLOCK_LABEL_623;
_L1:
        break; /* Loop/switch isn't completed */
_L20:
        break MISSING_BLOCK_LABEL_687;
_L21:
        return;
_L12:
        a(0);
        return;
_L13:
        a(100);
        return;
_L9:
        a(1);
        return;
_L10:
        a(2);
        return;
_L11:
        a(3);
        return;
_L6:
        a(4);
        return;
_L7:
        a(5);
        return;
_L8:
        a(6);
        return;
_L3:
        a(7);
        return;
_L4:
        a(8);
        return;
_L5:
        a(9);
        return;
_L14:
        if (!U)
        {
            U = true;
            V = 1.0D;
            return;
        }
        continue; /* Loop/switch isn't completed */
_L16:
        O = 0.0D;
        P = 0.0D;
        U = false;
        ak = null;
        X = null;
        ab.a(X);
        ar.setText(0x7f080314);
        ab.a();
        g();
        ab.e();
        ab.d();
        return;
_L15:
        if (O != 0.0D)
        {
            double d1 = O;
            if (U)
            {
                if (V >= 0.10000000000000001D)
                {
                    d1 = (int)((d1 * 10D) / 10D);
                    U = false;
                } else
                if (V >= 0.01D)
                {
                    d1 = (double)(int)((d1 * 100D) / 10D) / 10D;
                    V = 0.10000000000000001D;
                }
            } else
            {
                d1 = (int)(d1 / 10D);
            }
            O = d1;
            j.setText(com.aadhk.restpos.util.p.a(Z, O, Y));
            m();
            return;
        }
        if (true) goto _L21; else goto _L17
_L17:
        O = com.aadhk.restpos.util.m.b(N, P, Z);
        j.setText(com.aadhk.restpos.util.p.a(Z, O, Y));
        m();
        return;
        if (ah.size() > 0)
        {
            aq.setOpenDrawer(false);
            if (!ao.isManagerPermission())
            {
                (new d(a, ab, (byte)0)).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null);
                return;
            } else
            {
                bl bl2 = new bl(ab);
                bl2.a(new ff(this));
                bl2.show();
                return;
            }
        } else
        {
            Toast.makeText(ab, 0x7f080231, 1).show();
            return;
        }
        ab.c();
        return;
        if (!an.isManagerPermission())
        {
            (new d(c, ab, (byte)0)).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null);
            return;
        } else
        {
            bl bl1 = new bl(ab);
            bl1.a(new fg(this));
            bl1.show();
            return;
        }
        if (Q < 0.0D)
        {
            if (O > 0.0D)
            {
                n();
                ab.d();
                j.setText(com.aadhk.restpos.util.p.a(Z, O, Y));
                k.setText(com.aadhk.restpos.util.p.a(Z, P, Y));
                return;
            } else
            {
                Toast.makeText(ab, 0x7f080321, 1).show();
                return;
            }
        } else
        {
            (new d(new fn(this, (byte)0), ab, (byte)0)).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null);
            return;
        }
    }

    public final void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setHasOptionsMenu(true);
        W = new g(ab);
        X = ab.m();
        ar = ab.b();
        aw = (POSApp)ab.getApplicationContext();
    }

    public final View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        super.onCreateView(layoutinflater, viewgroup, bundle);
        aa = layoutinflater.inflate(0x7f03008c, viewgroup, false);
        r = (LinearLayout)aa.findViewById(0x7f0901d5);
        s = (LinearLayout)aa.findViewById(0x7f0901cd);
        d = (TextView)aa.findViewById(0x7f0901c5);
        e = (TextView)aa.findViewById(0x7f0901c7);
        g = (TextView)aa.findViewById(0x7f0901cc);
        f = (TextView)aa.findViewById(0x7f0901cf);
        h = (TextView)aa.findViewById(0x7f0901ca);
        i = (TextView)aa.findViewById(0x7f0901d1);
        j = (TextView)aa.findViewById(0x7f0901d2);
        k = (TextView)aa.findViewById(0x7f0901d3);
        l = (TextView)aa.findViewById(0x7f0901d4);
        m = (TextView)aa.findViewById(0x7f0901c6);
        n = (TextView)aa.findViewById(0x7f0901cb);
        o = (TextView)aa.findViewById(0x7f0901c9);
        p = (LinearLayout)aa.findViewById(0x7f0901c4);
        q = (LinearLayout)aa.findViewById(0x7f0901c8);
        u = (Button)aa.findViewById(0x7f0901df);
        v = (Button)aa.findViewById(0x7f0901e0);
        w = (Button)aa.findViewById(0x7f0901dc);
        x = (Button)aa.findViewById(0x7f0901dd);
        y = (Button)aa.findViewById(0x7f0901de);
        z = (Button)aa.findViewById(0x7f0901d9);
        A = (Button)aa.findViewById(0x7f0901da);
        B = (Button)aa.findViewById(0x7f0901db);
        C = (Button)aa.findViewById(0x7f0901d6);
        D = (Button)aa.findViewById(0x7f0901d7);
        E = (Button)aa.findViewById(0x7f0901d8);
        F = (Button)aa.findViewById(0x7f0901e3);
        t = (Button)aa.findViewById(0x7f0901e1);
        H = (Button)aa.findViewById(0x7f0901e6);
        K = (Button)aa.findViewById(0x7f0901e7);
        J = (Button)aa.findViewById(0x7f0901e5);
        I = (Button)aa.findViewById(0x7f090129);
        G = (Button)aa.findViewById(0x7f0901e4);
        M = (ImageButton)aa.findViewById(0x7f0901e2);
        u.setOnClickListener(this);
        v.setOnClickListener(this);
        w.setOnClickListener(this);
        x.setOnClickListener(this);
        y.setOnClickListener(this);
        z.setOnClickListener(this);
        A.setOnClickListener(this);
        B.setOnClickListener(this);
        C.setOnClickListener(this);
        D.setOnClickListener(this);
        E.setOnClickListener(this);
        M.setOnClickListener(this);
        F.setOnClickListener(this);
        K.setOnClickListener(this);
        I.setOnClickListener(this);
        J.setOnClickListener(this);
        H.setOnClickListener(this);
        G.setOnClickListener(this);
        return aa;
    }
}
