// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.app.Activity;
import android.content.Intent;
import android.content.res.Resources;
import android.os.AsyncTask;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;
import com.aadhk.product.library.a.b;
import com.aadhk.product.library.a.c;
import com.aadhk.product.library.b.a;
import com.aadhk.restpos.PaymentActivity;
import com.aadhk.restpos.b.m;
import com.aadhk.restpos.b.p;
import com.aadhk.restpos.b.r;
import com.aadhk.restpos.b.w;
import com.aadhk.restpos.bean.Company;
import com.aadhk.restpos.bean.Customer;
import com.aadhk.restpos.bean.Discount;
import com.aadhk.restpos.bean.Order;
import com.aadhk.restpos.bean.OrderPayment;
import com.aadhk.restpos.bean.POSPrinterSetting;
import com.aadhk.restpos.bean.PaymentMethod;
import com.aadhk.restpos.bean.RolePermission;
import com.aadhk.restpos.c.af;
import com.aadhk.restpos.c.au;
import com.aadhk.restpos.c.ax;
import com.aadhk.restpos.c.be;
import com.aadhk.restpos.c.bv;
import com.aadhk.restpos.e.f;
import com.aadhk.restpos.f.h;
import com.aadhk.restpos.f.i;
import com.aadhk.restpos.f.j;
import com.aadhk.restpos.f.l;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

// Referenced classes of package com.aadhk.restpos.d:
//            cg, ch, ci, ck, 
//            ce, cr, cs, cf, 
//            cl, cm, cn, co, 
//            cp, cq

public final class cd extends Fragment
    implements android.view.View.OnClickListener, android.view.View.OnFocusChangeListener
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
    private Button M;
    private Button N;
    private Button O;
    private ImageButton P;
    private double Q;
    private double R;
    private double S;
    private double T;
    private boolean U;
    private boolean V;
    private Order W;
    private List X;
    private boolean Y;
    private boolean Z;
    b a;
    private l aA;
    private MenuItem aB;
    private Discount aC;
    private OrderPayment aD;
    private boolean aE;
    private double aa;
    private f ab;
    private Customer ac;
    private String ad;
    private int ae;
    private View af;
    private PaymentActivity ag;
    private w ah;
    private p ai;
    private m aj;
    private r ak;
    private com.aadhk.restpos.b.h al;
    private Resources am;
    private Company an;
    private double ao;
    private double ap;
    private double aq;
    private double ar;
    private List as;
    private List at;
    private PaymentMethod au;
    private RolePermission av;
    private RolePermission aw;
    private RolePermission ax;
    private RolePermission ay;
    private POSPrinterSetting az;
    b b;
    b c;
    b d;
    private EditText e;
    private EditText f;
    private EditText g;
    private EditText h;
    private EditText i;
    private EditText j;
    private EditText k;
    private EditText l;
    private TextView m;
    private TextView n;
    private TextView o;
    private LinearLayout p;
    private LinearLayout q;
    private LinearLayout r;
    private Button s;
    private Button t;
    private Button u;
    private Button v;
    private Button w;
    private Button x;
    private Button y;
    private Button z;

    public cd()
    {
        a = new cg(this);
        b = new ch(this);
        c = new ci(this);
        d = new ck(this);
    }

    static w A(cd cd1)
    {
        return cd1.ah;
    }

    static OrderPayment B(cd cd1)
    {
        return cd1.aD;
    }

    static String C(cd cd1)
    {
        return cd1.ad;
    }

    static double a(cd cd1, double d1)
    {
        cd1.ao = d1;
        return d1;
    }

    static Button a(cd cd1)
    {
        return cd1.O;
    }

    static Button a(cd cd1, Button button)
    {
        cd1.O = button;
        return button;
    }

    static Discount a(cd cd1, Discount discount)
    {
        cd1.aC = discount;
        return discount;
    }

    static PaymentMethod a(cd cd1, PaymentMethod paymentmethod)
    {
        cd1.au = paymentmethod;
        return paymentmethod;
    }

    private void a()
    {
        r.removeAllViewsInLayout();
        for (int i1 = 0; i1 < at.size(); i1++)
        {
            PaymentMethod paymentmethod = (PaymentMethod)at.get(i1);
            View view = ag.getLayoutInflater().inflate(0x7f030076, null);
            Button button = (Button)view.findViewById(0x7f0b0199);
            if (i1 == -1 + at.size())
            {
                view.findViewById(0x7f0b014d).setVisibility(8);
            }
            button.setText(paymentmethod.getName());
            r.addView(view);
            button.setOnClickListener(new ce(this, button, paymentmethod));
            if (au == null)
            {
                button.performClick();
            }
        }

        W.setDiscountAmt(0.0D);
        if (an.isIncludeService())
        {
            W.setServiceAmt(com.aadhk.restpos.f.h.a(W.getSubTotal(), W.getDiscountAmt(), ao + ap, an.getServiceFee(), ae, U));
            I.setText(0x7f0902a7);
        } else
        {
            W.setServiceAmt(0.0D);
            I.setText(0x7f0902a6);
        }
        if (W.getTableId() == 0L && !aA.m())
        {
            W.setServiceAmt(0.0D);
        }
    }

    private void a(int i1)
    {
        if (j.isFocused())
        {
            if (Z)
            {
                R = 0.0D;
            }
            double d1 = R;
            if (Y)
            {
                if (aa >= 0.01D && i1 < 10)
                {
                    d1 += aa * (double)i1;
                    aa = 0.10000000000000001D * aa;
                }
            } else
            if ((i1 == 100 || i1 == 0) && R != 0.0D)
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
            R = d1;
            j.setText(com.aadhk.restpos.f.j.a(ae, R, ad));
            h();
            Z = false;
        }
    }

    static double b(cd cd1, double d1)
    {
        cd1.ap = d1;
        return d1;
    }

    private void b()
    {
        if (az == null)
        {
            L.setEnabled(false);
            K.setEnabled(false);
            N.setVisibility(8);
        }
        if (!aw.isShow())
        {
            F.setEnabled(false);
            m.setVisibility(8);
            f.setVisibility(8);
        } else
        {
            F.setEnabled(true);
        }
        if (!ax.isShow())
        {
            K.setEnabled(false);
        }
        if (!av.isShow() || an.isIncludeTax())
        {
            H.setEnabled(false);
        } else
        {
            H.setEnabled(true);
        }
        if (an.getTax1() == 0.0D && an.getTax2() == 0.0D)
        {
            o.setVisibility(8);
            h.setVisibility(8);
        } else
        {
            o.setVisibility(0);
            h.setVisibility(0);
        }
        if (!ay.isShow() || W.getTableId() == 0L && !aA.m())
        {
            G.setEnabled(false);
            I.setEnabled(false);
        } else
        {
            G.setEnabled(true);
            I.setEnabled(true);
        }
        if (an.isIncludeService())
        {
            I.setVisibility(0);
            G.setVisibility(8);
        } else
        {
            I.setVisibility(8);
            G.setVisibility(0);
        }
        if (an.isIncludeService() && W.getServiceAmt() == 0.0D || !an.isIncludeService() && !ay.isShow())
        {
            n.setVisibility(8);
            g.setVisibility(8);
        } else
        {
            n.setVisibility(0);
            g.setVisibility(0);
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

    static void b(cd cd1)
    {
        if (cd1.au.getType() == 1 || cd1.au.getType() == 2 || cd1.au.getType() == 3)
        {
            cd1.R = com.aadhk.restpos.f.h.b(cd1.Q, cd1.S, cd1.ae);
        } else
        {
            cd1.R = 0.0D;
        }
        cd1.j.setText(com.aadhk.restpos.f.j.a(cd1.ae, cd1.R, cd1.ad));
        cd1.h();
    }

    private void c()
    {
        Q = com.aadhk.restpos.f.h.b(W.getSubTotal(), ao + ap, W.getServiceAmt(), W.getDiscountAmt(), ae, U);
        e.setText(com.aadhk.restpos.f.j.a(ae, W.getSubTotal(), ad));
        h.setText(com.aadhk.restpos.f.j.a(ae, ao + ap, ad));
        g.setText(com.aadhk.restpos.f.j.a(ae, W.getServiceAmt(), ad));
        f.setText(com.aadhk.restpos.f.j.a(ae, W.getDiscountAmt(), ad));
        i.setText(com.aadhk.restpos.f.j.a(ae, Q, ad));
        j.setText(com.aadhk.restpos.f.j.a(ae, R, ad));
        k.setText(com.aadhk.restpos.f.j.a(ae, S, ad));
        j.requestFocus();
        h();
        W.setAmount(Q);
        W.setTax1Amt(ao);
        W.setTax2Amt(ap);
    }

    static void c(cd cd1)
    {
        cd1.g();
    }

    private void d()
    {
        if (V)
        {
            V = false;
            W.setServiceAmt(0.0D);
            I.setText(0x7f0902a6);
        } else
        {
            V = true;
            W.setServiceAmt(com.aadhk.restpos.f.h.a(W.getSubTotal(), W.getDiscountAmt(), ao + ap, an.getServiceFee(), ae, U));
            I.setText(0x7f0902a7);
        }
        c();
        ag.c();
    }

    static void d(cd cd1)
    {
        cd1.f();
    }

    private void e()
    {
        ArrayList arraylist = new ArrayList();
        arraylist.add(getString(0x7f0902bc));
        if (an.getTax1Name() != null && !"".equals(an.getTax1Name()))
        {
            arraylist.add(an.getTax1Name());
        }
        if (an.getTax2Name() != null && !"".equals(an.getTax2Name()))
        {
            arraylist.add(an.getTax2Name());
        }
        if (arraylist.size() == 3)
        {
            arraylist.add(getString(0x7f0902bd));
        }
        String as1[] = (String[])arraylist.toArray(new String[arraylist.size()]);
        a a1 = new a(ag, as1);
        a1.a();
        a1.a(new cr(this, as1));
        a1.show();
    }

    static void e(cd cd1)
    {
        cd1.e();
    }

    private void f()
    {
        double d1 = com.aadhk.restpos.f.h.b(W.getSubTotal(), ao + ap, 0.0D, W.getDiscountAmt(), ae, U);
        be be1 = new be(ag, W, d1);
        be1.a(new cs(this));
        be1.show();
    }

    static void f(cd cd1)
    {
        cd1.d();
    }

    static PaymentActivity g(cd cd1)
    {
        return cd1.ag;
    }

    private void g()
    {
        List list = al.a();
        if (list.isEmpty())
        {
            ax ax1 = new ax(ag);
            ax1.a(getString(0x7f09028f));
            ax1.show();
            return;
        } else
        {
            bv bv1 = new bv(ag, ad, ae, list, aC);
            bv1.setTitle(0x7f090283);
            bv1.a(new cf(this));
            bv1.show();
            return;
        }
    }

    static Resources h(cd cd1)
    {
        return cd1.am;
    }

    private void h()
    {
        double d1 = R;
        double d2 = S;
        double d3 = Q;
        int i1 = ae;
        T = (new BigDecimal(d1)).add(new BigDecimal(d2)).subtract(new BigDecimal(d3)).setScale(i1, 4).doubleValue();
        if (T >= 0.0D)
        {
            l.setText(com.aadhk.restpos.f.j.a(ae, T, ad));
            l.setTextColor(getResources().getColor(0x7f080073));
            return;
        } else
        {
            l.setText(com.aadhk.restpos.f.j.a(ae, T, ad));
            l.setTextColor(getResources().getColor(0x7f08006f));
            return;
        }
    }

    static Order i(cd cd1)
    {
        return cd1.W;
    }

    private void i()
    {
        S = S + R;
        aD = new OrderPayment();
        aD.setCashierName(ag.q());
        aD.setOrderId(W.getId());
        aD.setPaymentMethodName(au.getName());
        aD.setPaymentMethodType(au.getType());
        aD.setPaid(R);
        if (T > 0.0D)
        {
            aD.setChangeAmt(T);
            aD.setAmount(com.aadhk.restpos.f.h.b(R, T, ae));
        } else
        {
            aD.setAmount(R);
        }
        if (au.isOpenDrawer())
        {
            aE = true;
        }
        aD.setPaymentTime(com.aadhk.restpos.f.i.c());
        as.add(aD);
        R = 0.0D;
    }

    static Button j(cd cd1)
    {
        return cd1.H;
    }

    static double k(cd cd1)
    {
        return cd1.aq;
    }

    static Company l(cd cd1)
    {
        return cd1.an;
    }

    static double m(cd cd1)
    {
        return cd1.ar;
    }

    static double n(cd cd1)
    {
        return cd1.ao;
    }

    static int o(cd cd1)
    {
        return cd1.ae;
    }

    static double p(cd cd1)
    {
        return cd1.ap;
    }

    static boolean q(cd cd1)
    {
        cd1.V = true;
        return true;
    }

    static boolean r(cd cd1)
    {
        return cd1.U;
    }

    static Button s(cd cd1)
    {
        return cd1.I;
    }

    static void t(cd cd1)
    {
        cd1.c();
    }

    static Discount u(cd cd1)
    {
        return cd1.aC;
    }

    static POSPrinterSetting v(cd cd1)
    {
        return cd1.az;
    }

    static Customer w(cd cd1)
    {
        return cd1.ac;
    }

    static List x(cd cd1)
    {
        return cd1.X;
    }

    static f y(cd cd1)
    {
        return cd1.ab;
    }

    static m z(cd cd1)
    {
        return cd1.aj;
    }

    public final void onActivityCreated(Bundle bundle)
    {
        super.onActivityCreated(bundle);
        if (ac != null && aB != null)
        {
            aB.setTitle(ac.getName());
        }
        an = ag.n();
        ad = an.getCurrencySign();
        ae = an.getDecimalPlace();
        U = an.isIncludeTax();
        V = an.isIncludeService();
        Map map = ag.o();
        av = (RolePermission)map.get(Integer.valueOf(102));
        aw = (RolePermission)map.get(Integer.valueOf(100));
        ax = (RolePermission)map.get(Integer.valueOf(103));
        ay = (RolePermission)map.get(Integer.valueOf(101));
        if (an.getDecimalPlace() > 0)
        {
            s.setOnClickListener(this);
        }
        android.database.sqlite.SQLiteDatabase sqlitedatabase = ag.p();
        ah = new w(sqlitedatabase);
        aj = new m(sqlitedatabase);
        ai = new p(sqlitedatabase);
        ak = new r(sqlitedatabase);
        al = new com.aadhk.restpos.b.h(sqlitedatabase);
        az = ak.b(1);
        at = ai.a();
        W = ag.e();
        W.setEndTime(com.aadhk.restpos.f.i.c());
        W.setCashierName(ag.q());
        X = ag.f();
        as = new ArrayList();
        W.setOrderPayments(as);
        W.setTax1Name(an.getTax1Name());
        W.setTax2Name(an.getTax2Name());
        if (W.getSubTotal() == 0.0D)
        {
            F.setEnabled(false);
            G.setEnabled(false);
            H.setEnabled(false);
            I.setEnabled(false);
        }
        double d1 = W.getTax1Amt();
        ao = d1;
        aq = d1;
        double d2 = W.getTax2Amt();
        ap = d2;
        ar = d2;
        b();
        c();
        a();
    }

    public final void onActivityResult(int i1, int j1, Intent intent)
    {
label0:
        {
            if (j1 == -1 && i1 == 6)
            {
                ac = ag.g();
                if (ac == null || aB == null)
                {
                    break label0;
                }
                aB.setTitle(ac.getName());
                W.setCustomerId(ac.getId());
                W.setCustomerName(ac.getName());
            }
            return;
        }
        aB.setTitle(0x7f0902b6);
    }

    public final void onAttach(Activity activity)
    {
        super.onAttach(activity);
        ag = (PaymentActivity)activity;
    }

    public final void onClick(View view)
    {
        view.getId();
        JVM INSTR lookupswitch 23: default 200
    //                   2131427565: 744
    //                   2131427715: 251
    //                   2131427716: 258
    //                   2131427717: 265
    //                   2131427718: 302
    //                   2131427719: 232
    //                   2131427720: 238
    //                   2131427721: 244
    //                   2131427722: 396
    //                   2131427723: 214
    //                   2131427724: 220
    //                   2131427725: 226
    //                   2131427726: 349
    //                   2131427727: 443
    //                   2131427728: 201
    //                   2131427729: 207
    //                   2131427730: 272
    //                   2131427731: 833
    //                   2131427732: 628
    //                   2131427733: 490
    //                   2131427734: 698
    //                   2131427735: 929
    //                   2131427736: 929;
           goto _L1 _L2 _L3 _L4 _L5 _L6 _L7 _L8 _L9 _L10 _L11 _L12 _L13 _L14 _L15 _L16 _L17 _L18 _L19 _L20 _L21 _L22 _L23 _L23
_L2:
        break MISSING_BLOCK_LABEL_744;
_L19:
        break MISSING_BLOCK_LABEL_833;
_L1:
        break; /* Loop/switch isn't completed */
_L23:
        break MISSING_BLOCK_LABEL_929;
_L24:
        return;
_L16:
        a(0);
        return;
_L17:
        a(100);
        return;
_L11:
        a(1);
        return;
_L12:
        a(2);
        return;
_L13:
        a(3);
        return;
_L7:
        a(4);
        return;
_L8:
        a(5);
        return;
_L9:
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
_L18:
        if (j.isFocused() && !Y)
        {
            Y = true;
            aa = 0.10000000000000001D;
            return;
        }
        continue; /* Loop/switch isn't completed */
_L6:
        if (!aw.isManagerPermission())
        {
            g();
            return;
        } else
        {
            au au5 = new au(ag);
            au5.a(new cl(this));
            au5.show();
            return;
        }
_L14:
        if (!ay.isManagerPermission())
        {
            f();
            return;
        } else
        {
            au au4 = new au(ag);
            au4.a(new cm(this));
            au4.show();
            return;
        }
_L10:
        if (!av.isManagerPermission())
        {
            e();
            return;
        } else
        {
            au au3 = new au(ag);
            au3.a(new cn(this));
            au3.show();
            return;
        }
_L15:
        if (!ay.isManagerPermission())
        {
            d();
            return;
        } else
        {
            au au2 = new au(ag);
            au2.a(new co(this));
            au2.show();
            return;
        }
_L21:
        S = 0.0D;
        k.setText(com.aadhk.restpos.f.j.a(ae, S, ad));
        Y = false;
        aa = 0.0D;
        ao = aq;
        ap = ar;
        aC = null;
        au = null;
        c();
        a();
        as.clear();
        b();
        W.setReceiptNote("");
        ac = null;
        ag.a(ac);
        aB.setTitle(0x7f0902b6);
        ag.c();
        ag.b();
        return;
_L20:
        if (R != 0.0D)
        {
            String s1 = com.aadhk.restpos.f.j.b(R);
            R = com.aadhk.restpos.f.j.d(s1.substring(0, -1 + s1.length()));
            j.setText(com.aadhk.restpos.f.j.a(ae, R, ad));
            h();
            Z = false;
            return;
        }
        if (true) goto _L24; else goto _L22
_L22:
        R = com.aadhk.restpos.f.h.b(Q, S, ae);
        j.setText(com.aadhk.restpos.f.j.a(ae, R, ad));
        h();
        return;
        if (X.size() > 0)
        {
            az.setOpenDrawer(false);
            com.aadhk.product.library.a.a a2 = new com.aadhk.product.library.a.a(ag, a, am.getString(0x7f090177));
            if (android.os.Build.VERSION.SDK_INT >= 11)
            {
                a2.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null);
                return;
            } else
            {
                a2.execute(null);
                return;
            }
        } else
        {
            Toast.makeText(ag, 0x7f0901f4, 1).show();
            return;
        }
        if (!ax.isManagerPermission())
        {
            com.aadhk.product.library.a.a a1 = new com.aadhk.product.library.a.a(ag, d, am.getString(0x7f090178));
            if (android.os.Build.VERSION.SDK_INT >= 11)
            {
                a1.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null);
                return;
            } else
            {
                a1.execute(null);
                return;
            }
        } else
        {
            au au1 = new au(ag);
            au1.a(new cp(this));
            au1.show();
            return;
        }
        if (T < 0.0D)
        {
            if (R > 0.0D)
            {
                i();
                ag.b();
                j.setText(com.aadhk.restpos.f.j.a(ae, R, ad));
                j.requestFocus();
                k.setText(com.aadhk.restpos.f.j.a(ae, S, ad));
                F.setEnabled(false);
                G.setEnabled(false);
                H.setEnabled(false);
                I.setEnabled(false);
                return;
            } else
            {
                Toast.makeText(ag, 0x7f0902c3, 1).show();
                return;
            }
        }
        i();
        c c2;
        if (0x7f0b0198 == view.getId())
        {
            az.setOpenDrawer(aE);
            c c3 = new c(b);
            if (android.os.Build.VERSION.SDK_INT >= 11)
            {
                c3.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null);
            } else
            {
                c3.execute(null);
            }
        } else
        if (aE)
        {
            c c1 = new c(d);
            if (android.os.Build.VERSION.SDK_INT >= 11)
            {
                c1.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null);
            } else
            {
                c1.execute(null);
            }
        }
        c2 = new c(c);
        if (android.os.Build.VERSION.SDK_INT >= 11)
        {
            c2.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null);
            return;
        } else
        {
            c2.execute(null);
            return;
        }
    }

    public final void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setHasOptionsMenu(true);
        am = getResources();
        aA = new l(ag);
        ab = new f(ag);
        ac = ag.g();
    }

    public final void onCreateOptionsMenu(Menu menu, MenuInflater menuinflater)
    {
        menuinflater.inflate(0x7f0f000c, menu);
        aB = menu.findItem(0x7f0b0296);
        if (ac != null)
        {
            aB.setTitle(ac.getName());
        }
        super.onCreateOptionsMenu(menu, menuinflater);
    }

    public final View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        super.onCreateView(layoutinflater, viewgroup, bundle);
        af = layoutinflater.inflate(0x7f030075, viewgroup, false);
        r = (LinearLayout)af.findViewById(0x7f0b0182);
        e = (EditText)af.findViewById(0x7f0b0175);
        f = (EditText)af.findViewById(0x7f0b0177);
        g = (EditText)af.findViewById(0x7f0b017c);
        h = (EditText)af.findViewById(0x7f0b017a);
        i = (EditText)af.findViewById(0x7f0b017e);
        j = (EditText)af.findViewById(0x7f0b017f);
        k = (EditText)af.findViewById(0x7f0b0180);
        l = (EditText)af.findViewById(0x7f0b0181);
        m = (TextView)af.findViewById(0x7f0b0176);
        n = (TextView)af.findViewById(0x7f0b017b);
        o = (TextView)af.findViewById(0x7f0b0179);
        p = (LinearLayout)af.findViewById(0x7f0b0174);
        q = (LinearLayout)af.findViewById(0x7f0b0178);
        t = (Button)af.findViewById(0x7f0b0190);
        u = (Button)af.findViewById(0x7f0b0191);
        v = (Button)af.findViewById(0x7f0b018b);
        w = (Button)af.findViewById(0x7f0b018c);
        x = (Button)af.findViewById(0x7f0b018d);
        y = (Button)af.findViewById(0x7f0b0187);
        z = (Button)af.findViewById(0x7f0b0188);
        A = (Button)af.findViewById(0x7f0b0189);
        B = (Button)af.findViewById(0x7f0b0183);
        C = (Button)af.findViewById(0x7f0b0184);
        D = (Button)af.findViewById(0x7f0b0185);
        E = (Button)af.findViewById(0x7f0b0195);
        s = (Button)af.findViewById(0x7f0b0192);
        K = (Button)af.findViewById(0x7f0b0193);
        M = (Button)af.findViewById(0x7f0b0197);
        N = (Button)af.findViewById(0x7f0b0198);
        L = (Button)af.findViewById(0x7f0b00ed);
        J = (Button)af.findViewById(0x7f0b0196);
        F = (Button)af.findViewById(0x7f0b0186);
        G = (Button)af.findViewById(0x7f0b018e);
        H = (Button)af.findViewById(0x7f0b018a);
        I = (Button)af.findViewById(0x7f0b018f);
        P = (ImageButton)af.findViewById(0x7f0b0194);
        t.setOnClickListener(this);
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
        P.setOnClickListener(this);
        E.setOnClickListener(this);
        M.setOnClickListener(this);
        N.setOnClickListener(this);
        L.setOnClickListener(this);
        K.setOnClickListener(this);
        J.setOnClickListener(this);
        j.setOnFocusChangeListener(this);
        F.setOnClickListener(this);
        G.setOnClickListener(this);
        H.setOnClickListener(this);
        I.setOnClickListener(this);
        return af;
    }

    public final void onFocusChange(View view, boolean flag)
    {
        if (view.getId() == 0x7f0b017f && flag)
        {
            Z = true;
            Y = false;
            aa = 0.0D;
        }
    }

    public final boolean onOptionsItemSelected(MenuItem menuitem)
    {
        if (menuitem.getItemId() != 0x7f0b0296) goto _L2; else goto _L1
_L1:
        ag.a();
_L4:
        return super.onOptionsItemSelected(menuitem);
_L2:
        if (menuitem.getItemId() == 0x7f0b0297)
        {
            af af1 = new af(ag, W.getReceiptNote());
            af1.setTitle(0x7f0902c2);
            af1.a(new cq(this));
            af1.show();
        } else
        if (menuitem.getItemId() == 0x7f0b028a)
        {
            String s1 = (new StringBuilder()).append(an.getName()).append(" - ").append(getResources().getString(0x7f09012c)).toString();
            POSPrinterSetting posprintersetting;
            if (az == null)
            {
                posprintersetting = ak.b(0);
            } else
            {
                posprintersetting = az;
            }
            ab.a(posprintersetting, W, X, ac, s1, false);
        }
        if (true) goto _L4; else goto _L3
_L3:
    }
}
