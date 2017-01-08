// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.AsyncTask;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.text.InputFilter;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.text.format.Formatter;
import android.view.View;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.EditText;
import android.widget.GridView;
import android.widget.ImageButton;
import android.widget.Spinner;
import android.widget.TextView;
import android.widget.Toast;
import com.aadhk.b.b;
import com.aadhk.product.library.c.h;
import com.aadhk.product.library.c.k;
import com.aadhk.product.library.c.m;
import com.aadhk.restpos.PrinterActivity;
import com.aadhk.restpos.a.bn;
import com.aadhk.restpos.a.c;
import com.aadhk.restpos.bean.Customer;
import com.aadhk.restpos.bean.Order;
import com.aadhk.restpos.bean.OrderItem;
import com.aadhk.restpos.bean.OrderPayment;
import com.aadhk.restpos.bean.POSPrinterSetting;
import com.aadhk.restpos.e.a;
import com.aadhk.restpos.e.d;
import com.aadhk.restpos.e.g;
import com.aadhk.restpos.g.u;
import com.aadhk.restpos.util.o;
import com.aadhk.restpos.util.r;
import com.aadhk.restpos.util.w;
import com.bugsense.trace.BugSenseHandler;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.aadhk.restpos.d:
//            gq, gs, gr, go

public abstract class gn extends Fragment
    implements android.view.View.OnClickListener, android.widget.CompoundButton.OnCheckedChangeListener
{

    private ImageButton A;
    private ImageButton B;
    private ImageButton C;
    private ImageButton D;
    private ImageButton E;
    private ImageButton F;
    private ImageButton G;
    private ImageButton H;
    private ImageButton I;
    private ImageButton J;
    private ImageButton K;
    private ImageButton L;
    private CheckBox M;
    private CheckBox N;
    private CheckBox O;
    private Spinner P;
    private TextView Q;
    private TextView R;
    private TextView S;
    private TextView T;
    private g U;
    private Order V;
    private List W;
    private Customer X;
    private double Y;
    private String Z;
    private EditText a;
    private String aa;
    private String ab[];
    private Boolean ac[];
    protected EditText b;
    protected EditText c;
    protected EditText d;
    protected EditText e;
    protected Resources f;
    protected View g;
    protected PrinterActivity h;
    protected POSPrinterSetting i;
    protected TextView j;
    protected TextView k;
    protected u l;
    protected r m;
    com.aadhk.product.library.a.c n;
    TextWatcher o;
    private EditText p;
    private EditText q;
    private EditText r;
    private EditText s;
    private EditText t;
    private EditText u;
    private EditText v;
    private EditText w;
    private EditText x;
    private ImageButton y;
    private ImageButton z;

    public gn()
    {
        n = new gq(this);
        o = new gs(this);
    }

    static g a(gn gn1)
    {
        return gn1.U;
    }

    static Order b(gn gn1)
    {
        return gn1.V;
    }

    static List c(gn gn1)
    {
        return gn1.W;
    }

    static Customer d(gn gn1)
    {
        return gn1.X;
    }

    static String e(gn gn1)
    {
        return gn1.Z;
    }

    static double f(gn gn1)
    {
        return gn1.Y;
    }

    static Spinner g(gn gn1)
    {
        return gn1.P;
    }

    private boolean h()
    {
        String s1 = t.getText().toString();
        if (i.getPrintType() != 1)
        {
            if (s1.equals(""))
            {
                t.setError(getString(0x7f080085));
                t.requestFocus();
                return false;
            }
            t.setError(null);
        }
        if (TextUtils.isEmpty(a.getText().toString()))
        {
            a.setError(getString(0x7f080085));
            a.requestFocus();
            return false;
        }
        a.setError(null);
        if (q.getText().toString().equals(""))
        {
            q.setError(getString(0x7f080085));
            q.requestFocus();
            return false;
        } else
        {
            q.setError(null);
            return true;
        }
    }

    private POSPrinterSetting i()
    {
        POSPrinterSetting posprintersetting = new POSPrinterSetting();
        posprintersetting.setPaperWidth(Integer.parseInt(a.getText().toString()));
        posprintersetting.setFontSize(Integer.parseInt(q.getText().toString()));
        posprintersetting.setHeader(r.getText().toString());
        posprintersetting.setFooter(s.getText().toString());
        posprintersetting.setPrinterName(t.getText().toString());
        posprintersetting.setEnableBeep(O.isChecked());
        String s1 = u.getText().toString();
        String s2 = v.getText().toString();
        String s3 = w.getText().toString();
        String s4 = x.getText().toString();
        posprintersetting.setMarginTop(com.aadhk.product.library.c.h.e(s1));
        posprintersetting.setMarginBottom(com.aadhk.product.library.c.h.e(s2));
        posprintersetting.setMarginLeft(com.aadhk.product.library.c.h.e(s3));
        posprintersetting.setMarginRight(com.aadhk.product.library.c.h.e(s4));
        posprintersetting.setLogoName(i.getLogoName());
        return posprintersetting;
    }

    public abstract void a();

    protected void b()
    {
        String as[] = h.getResources().getStringArray(0x7f0e0019);
        ((GridView)g.findViewById(0x7f090259)).setAdapter(new c(h, as, ac, ab, m));
        String as1[] = f.getStringArray(0x7f0e0015);
        P = (Spinner)g.findViewById(0x7f090212);
        P.setAdapter(new bn(h, as1));
        P.setOnItemSelectedListener(new gr(this));
        T = (TextView)g.findViewById(0x7f09005a);
        T.setOnClickListener(this);
        t = (EditText)g.findViewById(0x7f090213);
        a = (EditText)g.findViewById(0x7f090223);
        r = (EditText)g.findViewById(0x7f09024a);
        s = (EditText)g.findViewById(0x7f090221);
        q = (EditText)g.findViewById(0x7f090222);
        p = (EditText)g.findViewById(0x7f09022d);
        y = (ImageButton)g.findViewById(0x7f09024b);
        z = (ImageButton)g.findViewById(0x7f09024c);
        A = (ImageButton)g.findViewById(0x7f09024d);
        B = (ImageButton)g.findViewById(0x7f09024e);
        C = (ImageButton)g.findViewById(0x7f09024f);
        D = (ImageButton)g.findViewById(0x7f090250);
        E = (ImageButton)g.findViewById(0x7f090251);
        F = (ImageButton)g.findViewById(0x7f090252);
        G = (ImageButton)g.findViewById(0x7f090253);
        H = (ImageButton)g.findViewById(0x7f090254);
        I = (ImageButton)g.findViewById(0x7f090255);
        J = (ImageButton)g.findViewById(0x7f090256);
        K = (ImageButton)g.findViewById(0x7f090257);
        L = (ImageButton)g.findViewById(0x7f090258);
        y.setOnClickListener(this);
        z.setOnClickListener(this);
        A.setOnClickListener(this);
        B.setOnClickListener(this);
        C.setOnClickListener(this);
        D.setOnClickListener(this);
        E.setOnClickListener(this);
        F.setOnClickListener(this);
        G.setOnClickListener(this);
        H.setOnClickListener(this);
        I.setOnClickListener(this);
        J.setOnClickListener(this);
        K.setOnClickListener(this);
        L.setOnClickListener(this);
        M = (CheckBox)g.findViewById(0x7f090239);
        N = (CheckBox)g.findViewById(0x7f09023f);
        O = (CheckBox)g.findViewById(0x7f09023d);
        Q = (TextView)g.findViewById(0x7f090242);
        Q.setOnClickListener(this);
        EditText edittext;
        InputFilter ainputfilter[];
        EditText edittext1;
        InputFilter ainputfilter1[];
        EditText edittext2;
        InputFilter ainputfilter2[];
        EditText edittext3;
        InputFilter ainputfilter3[];
        EditText edittext4;
        InputFilter ainputfilter4[];
        EditText edittext5;
        InputFilter ainputfilter5[];
        EditText edittext6;
        InputFilter ainputfilter6[];
        if (i.isEnableBeep())
        {
            g.findViewById(0x7f090236).setVisibility(0);
        } else
        {
            g.findViewById(0x7f090236).setVisibility(8);
        }
        P.setSelection(i.getConnType());
        t.setText(i.getPrinterName());
        r.setText(i.getHeader());
        s.setText(i.getFooter());
        q.setText((new StringBuilder()).append(i.getFontSize()).toString());
        p.setText((new StringBuilder()).append(i.getPrintNum()).toString());
        M.setChecked(i.isEnable());
        N.setChecked(i.isPrintSeparate());
        O.setChecked(i.isEnableBeep());
        u = (EditText)g.findViewById(0x7f090225);
        v = (EditText)g.findViewById(0x7f090227);
        w = (EditText)g.findViewById(0x7f090229);
        x = (EditText)g.findViewById(0x7f09022b);
        edittext = q;
        ainputfilter = new InputFilter[1];
        ainputfilter[0] = new k("1", "50");
        edittext.setFilters(ainputfilter);
        edittext1 = a;
        ainputfilter1 = new InputFilter[1];
        ainputfilter1[0] = new k("1", "100");
        edittext1.setFilters(ainputfilter1);
        edittext2 = p;
        ainputfilter2 = new InputFilter[1];
        ainputfilter2[0] = new k("1", "10");
        edittext2.setFilters(ainputfilter2);
        edittext3 = u;
        ainputfilter3 = new InputFilter[1];
        ainputfilter3[0] = new k("0", "50");
        edittext3.setFilters(ainputfilter3);
        edittext4 = v;
        ainputfilter4 = new InputFilter[1];
        ainputfilter4[0] = new k("0", "50");
        edittext4.setFilters(ainputfilter4);
        edittext5 = w;
        ainputfilter5 = new InputFilter[1];
        ainputfilter5[0] = new k("0", "50");
        edittext5.setFilters(ainputfilter5);
        edittext6 = x;
        ainputfilter6 = new InputFilter[1];
        ainputfilter6[0] = new k("0", "50");
        edittext6.setFilters(ainputfilter6);
        b = (EditText)g.findViewById(0x7f09022f);
        c = (EditText)g.findViewById(0x7f090233);
        d = (EditText)g.findViewById(0x7f090235);
        e = (EditText)g.findViewById(0x7f090238);
        R = (TextView)g.findViewById(0x7f0901aa);
        S = (TextView)g.findViewById(0x7f09025a);
        b.setText(i.getCommInitial());
        c.setText(i.getCommCut());
        d.setText(i.getCommDrawer());
        e.setText(i.getCommBeep());
        u.setText((new StringBuilder()).append(i.getMarginTop()).toString());
        v.setText((new StringBuilder()).append(i.getMarginBottom()).toString());
        w.setText((new StringBuilder()).append(i.getMarginLeft()).toString());
        x.setText((new StringBuilder()).append(i.getMarginRight()).toString());
        j = (TextView)g.findViewById(0x7f090211);
        k = (TextView)g.findViewById(0x7f090210);
        O.setOnCheckedChangeListener(this);
        R.setVisibility(0);
        R.setOnClickListener(this);
        S.setOnClickListener(this);
        a.setText((new StringBuilder()).append(i.getPaperWidth()).toString());
        if (h.d())
        {
            h.a(f());
        }
        if (i.getPrintType() == 1)
        {
            g.findViewById(0x7f09023e).setVisibility(8);
            g.findViewById(0x7f090173).setVisibility(8);
            g.findViewById(0x7f09023c).setVisibility(8);
            g.findViewById(0x7f090259).setVisibility(0);
            return;
        } else
        {
            g.findViewById(0x7f090234).setVisibility(8);
            g.findViewById(0x7f090249).setVisibility(8);
            g.findViewById(0x7f090220).setVisibility(8);
            g.findViewById(0x7f090259).setVisibility(8);
            S.setVisibility(8);
            return;
        }
    }

    protected boolean c()
    {
        String s1 = t.getText().toString();
        if (i.getPrintType() != 1)
        {
            if (TextUtils.isEmpty(s1))
            {
                t.setError(getString(0x7f080085));
                t.requestFocus();
                return false;
            }
            t.setError(null);
        }
        if (TextUtils.isEmpty(a.getText().toString()))
        {
            a.setError(getString(0x7f080085));
            a.requestFocus();
            return false;
        }
        a.setError(null);
        if (TextUtils.isEmpty(q.getText().toString()))
        {
            q.setError(getString(0x7f080085));
            q.requestFocus();
            return false;
        }
        q.setError(null);
        if (TextUtils.isEmpty(p.getText().toString()))
        {
            p.setError(getString(0x7f080085));
            p.requestFocus();
            return false;
        } else
        {
            p.setError(null);
            return true;
        }
    }

    protected void d()
    {
        i.setPrinterName(t.getText().toString());
        i.setPaperWidth(Integer.parseInt(a.getText().toString()));
        i.setHeader(r.getText().toString());
        i.setFooter(s.getText().toString());
        i.setFontSize(Integer.parseInt(q.getText().toString()));
        i.setPrintNum(Integer.parseInt(p.getText().toString()));
        i.setEnable(M.isChecked());
        i.setPrintSeparate(N.isChecked());
        i.setEnableBeep(O.isChecked());
        String s1 = u.getText().toString();
        String s2 = v.getText().toString();
        String s3 = w.getText().toString();
        String s4 = x.getText().toString();
        i.setMarginTop(com.aadhk.product.library.c.h.e(s1));
        i.setMarginBottom(com.aadhk.product.library.c.h.e(s2));
        i.setMarginLeft(com.aadhk.product.library.c.h.e(s3));
        i.setMarginRight(com.aadhk.product.library.c.h.e(s4));
    }

    public abstract boolean e();

    public final Bitmap f()
    {
label0:
        {
            boolean flag = h();
            Bitmap bitmap = null;
            if (flag)
            {
                if (i.getPrintType() != 1)
                {
                    break label0;
                }
                bitmap = com.aadhk.restpos.e.d.a(h, V, X, W, i(), false);
            }
            return bitmap;
        }
        return com.aadhk.restpos.e.a.a(h, V, W, i());
    }

    protected final void g()
    {
        WifiInfo wifiinfo = ((WifiManager)h.getSystemService("wifi")).getConnectionInfo();
        int i1 = wifiinfo.getIpAddress();
        String s1 = wifiinfo.getSSID();
        String s2 = Formatter.formatIpAddress(i1);
        String s3;
        if (TextUtils.isEmpty(s1))
        {
            String s4 = getString(0x7f080153);
            Object aobj[] = new Object[2];
            aobj[0] = s2;
            aobj[1] = getString(0x7f080152);
            s3 = String.format(s4, aobj);
        } else
        {
            s3 = String.format(getString(0x7f080153), new Object[] {
                s2, s1
            });
        }
        k.setText(s3);
    }

    public void onActivityCreated(Bundle bundle)
    {
        super.onActivityCreated(bundle);
        U = new g(h);
        PrinterActivity printeractivity = h;
        Order order = new Order();
        order.setId(1L);
        order.setOrderNum("A-00001");
        order.setTableId(1L);
        order.setTableName(printeractivity.getResources().getString(0x7f0801b7));
        order.setAmount(199D);
        order.setPersonNum(5);
        order.setOrderTime(com.aadhk.restpos.util.o.b());
        order.setSubTotal(192D);
        order.setDiscountAmt(10D);
        order.setTax1Amt(7D);
        order.setTax1Name(printeractivity.getResources().getString(0x7f0801cf));
        order.setServiceAmt(10D);
        ArrayList arraylist = new ArrayList();
        OrderItem orderitem = new OrderItem();
        orderitem.setItemName(printeractivity.getResources().getString(0x7f0801b8));
        orderitem.setQty(2);
        orderitem.setItemPrice(48D);
        orderitem.setStartTime("2013-09-11 09:01");
        orderitem.setEndTime("2013-09-11 10:01");
        arraylist.add(orderitem);
        OrderItem orderitem1 = new OrderItem();
        orderitem1.setItemName(printeractivity.getResources().getString(0x7f0801b9));
        orderitem1.setQty(2);
        orderitem1.setItemPrice(48D);
        orderitem.setStartTime("2013-09-11 09:02");
        orderitem.setEndTime("2013-09-11 10:02");
        arraylist.add(orderitem1);
        order.setOrderItems(arraylist);
        OrderPayment orderpayment = new OrderPayment();
        orderpayment.setAmount(199D);
        orderpayment.setPaid(200D);
        orderpayment.setChangeAmt(1.0D);
        orderpayment.setCashierName(printeractivity.getString(0x7f080336));
        orderpayment.setPaymentMethodName(printeractivity.getString(0x7f080309));
        ArrayList arraylist1 = new ArrayList();
        arraylist1.add(orderpayment);
        order.setOrderPayments(arraylist1);
        V = order;
        W = V.getOrderItems();
        l = h.e();
        i = h.f();
        m = new r(h);
        ab = (new String[] {
            "prefDisplayTableName", "prefDisplayWaiterName", "prefDisplayOrderNumber", "prefDisplayTaxNumber", "prefDisplayOrderTime", "prefDisplayEnableTip"
        });
        Boolean aboolean[] = new Boolean[6];
        aboolean[0] = Boolean.valueOf(m.z());
        aboolean[1] = Boolean.valueOf(m.A());
        aboolean[2] = Boolean.valueOf(m.B());
        aboolean[3] = Boolean.valueOf(m.C());
        aboolean[4] = Boolean.valueOf(m.D());
        aboolean[5] = Boolean.valueOf(m.E());
        ac = aboolean;
        if (i.getId() == 2)
        {
            aa = "com.aadhk.restpos.feature.kitchen";
            h.setTitle((new StringBuilder()).append(getString(0x7f08029e)).append(" #2").toString());
        } else
        {
            if (i.getId() == 4)
            {
                aa = "com.aadhk.restpos.feature.kitchen2";
                h.setTitle((new StringBuilder()).append(getString(0x7f08029e)).append(" #4").toString());
                return;
            }
            if (i.getId() == 3)
            {
                aa = "com.aadhk.restpos.feature.bar";
                h.setTitle((new StringBuilder()).append(getString(0x7f0802a0)).append(" #3").toString());
                return;
            }
            if (i.getId() == 1)
            {
                aa = "com.aadhk.restpos.feature.receipt";
                h.setTitle((new StringBuilder()).append(getString(0x7f08029d)).append(" #1").toString());
                return;
            }
        }
    }

    public void onAttach(Activity activity)
    {
        h = (PrinterActivity)activity;
        super.onAttach(activity);
    }

    public void onCheckedChanged(CompoundButton compoundbutton, boolean flag)
    {
label0:
        {
            if (compoundbutton == O)
            {
                if (!O.isChecked())
                {
                    break label0;
                }
                g.findViewById(0x7f090236).setVisibility(0);
                i.setEnableBeep(true);
            }
            return;
        }
        g.findViewById(0x7f090236).setVisibility(8);
        i.setEnableBeep(false);
    }

    public void onClick(View view)
    {
        view.getId();
        JVM INSTR lookupswitch 18: default 160
    //                   2131296346: 459
    //                   2131296682: 523
    //                   2131296834: 273
    //                   2131296843: 161
    //                   2131296844: 169
    //                   2131296845: 177
    //                   2131296846: 185
    //                   2131296847: 193
    //                   2131296848: 201
    //                   2131296849: 209
    //                   2131296850: 217
    //                   2131296851: 225
    //                   2131296852: 233
    //                   2131296853: 241
    //                   2131296854: 249
    //                   2131296855: 257
    //                   2131296856: 265
    //                   2131296858: 542;
           goto _L1 _L2 _L3 _L4 _L5 _L6 _L7 _L8 _L9 _L10 _L11 _L12 _L13 _L14 _L15 _L16 _L17 _L18 _L19
_L1:
        return;
_L5:
        com.aadhk.restpos.util.w.a(q);
        return;
_L6:
        com.aadhk.restpos.util.w.b(q);
        return;
_L7:
        com.aadhk.restpos.util.w.a(p);
        return;
_L8:
        com.aadhk.restpos.util.w.b(p);
        return;
_L9:
        com.aadhk.restpos.util.w.a(a);
        return;
_L10:
        com.aadhk.restpos.util.w.b(a);
        return;
_L11:
        com.aadhk.restpos.util.w.a(u);
        return;
_L12:
        com.aadhk.restpos.util.w.b(u);
        return;
_L13:
        com.aadhk.restpos.util.w.a(v);
        return;
_L14:
        com.aadhk.restpos.util.w.b(v);
        return;
_L15:
        com.aadhk.restpos.util.w.a(w);
        return;
_L16:
        com.aadhk.restpos.util.w.b(w);
        return;
_L17:
        com.aadhk.restpos.util.w.a(x);
        return;
_L18:
        com.aadhk.restpos.util.w.b(x);
        return;
_L4:
        if (!e())
        {
            continue; /* Loop/switch isn't completed */
        }
        if (i.getConnType() == 2)
        {
            break; /* Loop/switch isn't completed */
        }
        PrinterActivity printeractivity = h;
        UnknownHostException unknownhostexception;
        boolean flag;
        if (!((ConnectivityManager)printeractivity.getSystemService("connectivity")).getNetworkInfo(1).isConnected())
        {
            Toast.makeText(printeractivity, printeractivity.getString(com.aadhk.product.library.d.j), 1).show();
            printeractivity.startActivity(new Intent("android.settings.WIFI_SETTINGS"));
            flag = false;
        } else
        {
            flag = true;
        }
        if (!flag) goto _L1; else goto _L20
_L20:
        if (i.getConnType() == 0)
        {
            try
            {
                if (!com.aadhk.product.library.c.m.a(h, i.getIp()))
                {
                    Toast.makeText(h, 0x7f080236, 1).show();
                    return;
                }
            }
            // Misplaced declaration of an exception variable
            catch (UnknownHostException unknownhostexception)
            {
                Toast.makeText(h, 0x7f0801aa, 1).show();
                BugSenseHandler.sendException(unknownhostexception);
                unknownhostexception.printStackTrace();
                return;
            }
        }
        (new com.aadhk.product.library.a.d(new go(this), h, (byte)0)).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null);
        return;
_L2:
        if (!M.isChecked() || com.aadhk.b.b.a(h, aa) || com.aadhk.b.b.a(h, "com.aadhk.restpos.full"))
        {
            if (e())
            {
                a();
                h.finish();
                return;
            }
        } else
        {
            h.c();
            return;
        }
        continue; /* Loop/switch isn't completed */
_L3:
        if (h())
        {
            h.a(f());
            return;
        }
        if (true) goto _L1; else goto _L19
_L19:
        h.b();
        return;
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        f = getResources();
    }
}
