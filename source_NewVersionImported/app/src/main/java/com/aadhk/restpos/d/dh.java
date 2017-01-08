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
import android.widget.ImageButton;
import android.widget.Spinner;
import android.widget.TextView;
import android.widget.Toast;
import com.aadhk.b.b;
import com.aadhk.product.library.c.h;
import com.aadhk.product.library.c.k;
import com.aadhk.product.library.c.m;
import com.aadhk.product.library.d;
import com.aadhk.restpos.PrinterActivity;
import com.aadhk.restpos.a.bf;
import com.aadhk.restpos.b.r;
import com.aadhk.restpos.bean.Customer;
import com.aadhk.restpos.bean.Order;
import com.aadhk.restpos.bean.OrderItem;
import com.aadhk.restpos.bean.OrderPayment;
import com.aadhk.restpos.bean.POSPrinterSetting;
import com.aadhk.restpos.e.a;
import com.aadhk.restpos.e.c;
import com.aadhk.restpos.e.f;
import com.aadhk.restpos.f.i;
import com.aadhk.restpos.f.n;
import com.bugsense.trace.BugSenseHandler;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.aadhk.restpos.d:
//            dk, dm, dl, di

public abstract class dh extends Fragment
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
    private CheckBox L;
    private CheckBox M;
    private CheckBox N;
    private CheckBox O;
    private Spinner P;
    private TextView Q;
    private TextView R;
    private TextView S;
    private TextView T;
    private f U;
    private Order V;
    private List W;
    private Customer X;
    private double Y;
    private String Z;
    private EditText a;
    private String aa;
    protected EditText b;
    protected EditText c;
    protected EditText d;
    protected EditText e;
    protected Resources f;
    protected View g;
    protected PrinterActivity h;
    protected POSPrinterSetting i;
    protected r j;
    protected TextView k;
    protected TextView l;
    com.aadhk.product.library.a.b m;
    TextWatcher n;
    private EditText o;
    private EditText p;
    private EditText q;
    private EditText r;
    private EditText s;
    private EditText t;
    private EditText u;
    private EditText v;
    private EditText w;
    private ImageButton x;
    private ImageButton y;
    private ImageButton z;

    public dh()
    {
        m = new dk(this);
        n = new dm(this);
    }

    static f a(dh dh1)
    {
        return dh1.U;
    }

    static Order b(dh dh1)
    {
        return dh1.V;
    }

    static List c(dh dh1)
    {
        return dh1.W;
    }

    static Customer d(dh dh1)
    {
        return dh1.X;
    }

    static String e(dh dh1)
    {
        return dh1.Z;
    }

    static double f(dh dh1)
    {
        return dh1.Y;
    }

    static Spinner g(dh dh1)
    {
        return dh1.P;
    }

    private boolean h()
    {
        String s1 = s.getText().toString();
        if (i.getPrintType() != 1)
        {
            if (s1.equals(""))
            {
                s.setError(getString(0x7f090055));
                s.requestFocus();
                return false;
            }
            s.setError(null);
        }
        if (TextUtils.isEmpty(a.getText().toString()))
        {
            a.setError(getString(0x7f090055));
            a.requestFocus();
            return false;
        }
        a.setError(null);
        if (p.getText().toString().equals(""))
        {
            p.setError(getString(0x7f090055));
            p.requestFocus();
            return false;
        } else
        {
            p.setError(null);
            return true;
        }
    }

    private POSPrinterSetting i()
    {
        POSPrinterSetting posprintersetting = new POSPrinterSetting();
        posprintersetting.setPaperWidth(Integer.parseInt(a.getText().toString()));
        posprintersetting.setFontSize(Integer.parseInt(p.getText().toString()));
        posprintersetting.setHeader(q.getText().toString());
        posprintersetting.setFooter(r.getText().toString());
        posprintersetting.setName(s.getText().toString());
        posprintersetting.setEnableTip(M.isChecked());
        posprintersetting.setEnableBeep(O.isChecked());
        String s1 = t.getText().toString();
        String s2 = u.getText().toString();
        String s3 = v.getText().toString();
        String s4 = w.getText().toString();
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
        String as[] = f.getStringArray(0x7f070015);
        P = (Spinner)g.findViewById(0x7f0b01be);
        P.setAdapter(new bf(h, as));
        P.setOnItemSelectedListener(new dl(this));
        T = (TextView)g.findViewById(0x7f0b0056);
        T.setOnClickListener(this);
        s = (EditText)g.findViewById(0x7f0b01bf);
        a = (EditText)g.findViewById(0x7f0b01cf);
        q = (EditText)g.findViewById(0x7f0b01f5);
        r = (EditText)g.findViewById(0x7f0b01cd);
        p = (EditText)g.findViewById(0x7f0b01ce);
        o = (EditText)g.findViewById(0x7f0b01d9);
        x = (ImageButton)g.findViewById(0x7f0b01f6);
        y = (ImageButton)g.findViewById(0x7f0b01f7);
        z = (ImageButton)g.findViewById(0x7f0b01f8);
        A = (ImageButton)g.findViewById(0x7f0b01f9);
        B = (ImageButton)g.findViewById(0x7f0b01fa);
        C = (ImageButton)g.findViewById(0x7f0b01fb);
        D = (ImageButton)g.findViewById(0x7f0b01fc);
        E = (ImageButton)g.findViewById(0x7f0b01fd);
        F = (ImageButton)g.findViewById(0x7f0b01fe);
        G = (ImageButton)g.findViewById(0x7f0b01ff);
        H = (ImageButton)g.findViewById(0x7f0b0200);
        I = (ImageButton)g.findViewById(0x7f0b0201);
        J = (ImageButton)g.findViewById(0x7f0b0202);
        K = (ImageButton)g.findViewById(0x7f0b0203);
        x.setOnClickListener(this);
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
        L = (CheckBox)g.findViewById(0x7f0b01e5);
        N = (CheckBox)g.findViewById(0x7f0b01eb);
        M = (CheckBox)g.findViewById(0x7f0b01ed);
        O = (CheckBox)g.findViewById(0x7f0b01e9);
        Q = (TextView)g.findViewById(0x7f0b01ee);
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
            g.findViewById(0x7f0b01e2).setVisibility(0);
        } else
        {
            g.findViewById(0x7f0b01e2).setVisibility(8);
        }
        P.setSelection(i.getConnType());
        s.setText(i.getName());
        q.setText(i.getHeader());
        r.setText(i.getFooter());
        p.setText((new StringBuilder()).append(i.getFontSize()).toString());
        o.setText((new StringBuilder()).append(i.getPrintNum()).toString());
        L.setChecked(i.isEnable());
        N.setChecked(i.isPrintSeparate());
        M.setChecked(i.isEnableTip());
        O.setChecked(i.isEnableBeep());
        t = (EditText)g.findViewById(0x7f0b01d1);
        u = (EditText)g.findViewById(0x7f0b01d3);
        v = (EditText)g.findViewById(0x7f0b01d5);
        w = (EditText)g.findViewById(0x7f0b01d7);
        edittext = p;
        ainputfilter = new InputFilter[1];
        ainputfilter[0] = new k("1", "50");
        edittext.setFilters(ainputfilter);
        edittext1 = a;
        ainputfilter1 = new InputFilter[1];
        ainputfilter1[0] = new k("1", "100");
        edittext1.setFilters(ainputfilter1);
        edittext2 = o;
        ainputfilter2 = new InputFilter[1];
        ainputfilter2[0] = new k("1", "10");
        edittext2.setFilters(ainputfilter2);
        edittext3 = t;
        ainputfilter3 = new InputFilter[1];
        ainputfilter3[0] = new k("0", "50");
        edittext3.setFilters(ainputfilter3);
        edittext4 = u;
        ainputfilter4 = new InputFilter[1];
        ainputfilter4[0] = new k("0", "50");
        edittext4.setFilters(ainputfilter4);
        edittext5 = v;
        ainputfilter5 = new InputFilter[1];
        ainputfilter5[0] = new k("0", "50");
        edittext5.setFilters(ainputfilter5);
        edittext6 = w;
        ainputfilter6 = new InputFilter[1];
        ainputfilter6[0] = new k("0", "50");
        edittext6.setFilters(ainputfilter6);
        b = (EditText)g.findViewById(0x7f0b01db);
        c = (EditText)g.findViewById(0x7f0b01df);
        d = (EditText)g.findViewById(0x7f0b01e1);
        e = (EditText)g.findViewById(0x7f0b01e4);
        R = (TextView)g.findViewById(0x7f0b0160);
        S = (TextView)g.findViewById(0x7f0b0204);
        b.setText(i.getCommInitial());
        c.setText(i.getCommCut());
        d.setText(i.getCommDrawer());
        e.setText(i.getCommBeep());
        t.setText((new StringBuilder()).append(i.getMarginTop()).toString());
        u.setText((new StringBuilder()).append(i.getMarginBottom()).toString());
        v.setText((new StringBuilder()).append(i.getMarginLeft()).toString());
        w.setText((new StringBuilder()).append(i.getMarginRight()).toString());
        k = (TextView)g.findViewById(0x7f0b01bd);
        l = (TextView)g.findViewById(0x7f0b01bc);
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
            g.findViewById(0x7f0b01ea).setVisibility(8);
            g.findViewById(0x7f0b012e).setVisibility(8);
            g.findViewById(0x7f0b01e8).setVisibility(8);
            return;
        } else
        {
            g.findViewById(0x7f0b01e0).setVisibility(8);
            g.findViewById(0x7f0b01f4).setVisibility(8);
            g.findViewById(0x7f0b01cc).setVisibility(8);
            g.findViewById(0x7f0b01ec).setVisibility(8);
            S.setVisibility(8);
            return;
        }
    }

    protected boolean c()
    {
        String s1 = s.getText().toString();
        if (i.getPrintType() != 1)
        {
            if (TextUtils.isEmpty(s1))
            {
                s.setError(getString(0x7f090055));
                s.requestFocus();
                return false;
            }
            s.setError(null);
        }
        if (TextUtils.isEmpty(a.getText().toString()))
        {
            a.setError(getString(0x7f090055));
            a.requestFocus();
            return false;
        }
        a.setError(null);
        if (TextUtils.isEmpty(p.getText().toString()))
        {
            p.setError(getString(0x7f090055));
            p.requestFocus();
            return false;
        }
        p.setError(null);
        if (TextUtils.isEmpty(o.getText().toString()))
        {
            o.setError(getString(0x7f090055));
            o.requestFocus();
            return false;
        } else
        {
            o.setError(null);
            return true;
        }
    }

    protected void d()
    {
        i.setName(s.getText().toString());
        i.setPaperWidth(Integer.parseInt(a.getText().toString()));
        i.setHeader(q.getText().toString());
        i.setFooter(r.getText().toString());
        i.setFontSize(Integer.parseInt(p.getText().toString()));
        i.setPrintNum(Integer.parseInt(o.getText().toString()));
        i.setEnable(L.isChecked());
        i.setEnableTip(M.isChecked());
        i.setPrintSeparate(N.isChecked());
        i.setEnableBeep(O.isChecked());
        String s1 = t.getText().toString();
        String s2 = u.getText().toString();
        String s3 = v.getText().toString();
        String s4 = w.getText().toString();
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
                bitmap = com.aadhk.restpos.e.c.a(h, V, X, W, i(), false);
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
            String s4 = getString(0x7f090121);
            Object aobj[] = new Object[2];
            aobj[0] = s2;
            aobj[1] = getString(0x7f090120);
            s3 = String.format(s4, aobj);
        } else
        {
            s3 = String.format(getString(0x7f090121), new Object[] {
                s2, s1
            });
        }
        l.setText(s3);
    }

    public void onActivityCreated(Bundle bundle)
    {
        super.onActivityCreated(bundle);
        U = new f(h);
        PrinterActivity printeractivity = h;
        Order order = new Order();
        order.setId(1L);
        order.setOrderNum("A-00001");
        order.setTableId(1L);
        order.setTableName(printeractivity.getResources().getString(0x7f09017f));
        order.setAmount(199D);
        order.setPersonNum(5);
        order.setStartTime(com.aadhk.restpos.f.i.b());
        order.setSubTotal(192D);
        order.setDiscountAmt(10D);
        order.setTax1Amt(7D);
        order.setTax1Name(printeractivity.getResources().getString(0x7f090194));
        order.setServiceAmt(10D);
        ArrayList arraylist = new ArrayList();
        OrderItem orderitem = new OrderItem();
        orderitem.setItemName(printeractivity.getResources().getString(0x7f090180));
        orderitem.setNum(2);
        orderitem.setItemPrice(48D);
        orderitem.setStartTime("2013-09-11 09:01");
        orderitem.setEndTime("2013-09-11 10:01");
        arraylist.add(orderitem);
        OrderItem orderitem1 = new OrderItem();
        orderitem1.setItemName(printeractivity.getResources().getString(0x7f090181));
        orderitem1.setNum(2);
        orderitem1.setItemPrice(48D);
        orderitem.setStartTime("2013-09-11 09:02");
        orderitem.setEndTime("2013-09-11 10:02");
        arraylist.add(orderitem1);
        order.setOrderItems(arraylist);
        OrderPayment orderpayment = new OrderPayment();
        orderpayment.setAmount(199D);
        orderpayment.setPaid(200D);
        orderpayment.setChangeAmt(1.0D);
        orderpayment.setCashierName("Manager");
        orderpayment.setPaymentMethodName("Cash");
        ArrayList arraylist1 = new ArrayList();
        arraylist1.add(orderpayment);
        order.setOrderPayments(arraylist1);
        V = order;
        W = V.getOrderItems();
        j = h.e();
        i = h.f();
        if (i.getId() == 2)
        {
            aa = "com.aadhk.restpos.feature.kitchen";
            h.setTitle((new StringBuilder()).append(getString(0x7f090242)).append(" #2").toString());
        } else
        {
            if (i.getId() == 4)
            {
                aa = "com.aadhk.restpos.feature.kitchen2";
                h.setTitle((new StringBuilder()).append(getString(0x7f090242)).append(" #4").toString());
                return;
            }
            if (i.getId() == 3)
            {
                aa = "com.aadhk.restpos.feature.bar";
                h.setTitle((new StringBuilder()).append(getString(0x7f090244)).append(" #3").toString());
                return;
            }
            if (i.getId() == 1)
            {
                aa = "com.aadhk.restpos.feature.receipt";
                h.setTitle((new StringBuilder()).append(getString(0x7f090241)).append(" #1").toString());
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
            if (compoundbutton != M && compoundbutton == O)
            {
                if (!O.isChecked())
                {
                    break label0;
                }
                g.findViewById(0x7f0b01e2).setVisibility(0);
                i.setEnableBeep(true);
            }
            return;
        }
        g.findViewById(0x7f0b01e2).setVisibility(8);
        i.setEnableBeep(false);
    }

    public void onClick(View view)
    {
        view.getId();
        JVM INSTR lookupswitch 18: default 160
    //                   2131427414: 485
    //                   2131427680: 549
    //                   2131427822: 273
    //                   2131427830: 161
    //                   2131427831: 169
    //                   2131427832: 177
    //                   2131427833: 185
    //                   2131427834: 193
    //                   2131427835: 201
    //                   2131427836: 209
    //                   2131427837: 217
    //                   2131427838: 225
    //                   2131427839: 233
    //                   2131427840: 241
    //                   2131427841: 249
    //                   2131427842: 257
    //                   2131427843: 265
    //                   2131427844: 568;
           goto _L1 _L2 _L3 _L4 _L5 _L6 _L7 _L8 _L9 _L10 _L11 _L12 _L13 _L14 _L15 _L16 _L17 _L18 _L19
_L1:
        return;
_L5:
        com.aadhk.restpos.f.n.a(p);
        return;
_L6:
        com.aadhk.restpos.f.n.b(p);
        return;
_L7:
        com.aadhk.restpos.f.n.a(o);
        return;
_L8:
        com.aadhk.restpos.f.n.b(o);
        return;
_L9:
        com.aadhk.restpos.f.n.a(a);
        return;
_L10:
        com.aadhk.restpos.f.n.b(a);
        return;
_L11:
        com.aadhk.restpos.f.n.a(t);
        return;
_L12:
        com.aadhk.restpos.f.n.b(t);
        return;
_L13:
        com.aadhk.restpos.f.n.a(u);
        return;
_L14:
        com.aadhk.restpos.f.n.b(u);
        return;
_L15:
        com.aadhk.restpos.f.n.a(v);
        return;
_L16:
        com.aadhk.restpos.f.n.b(v);
        return;
_L17:
        com.aadhk.restpos.f.n.a(w);
        return;
_L18:
        com.aadhk.restpos.f.n.b(w);
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
            Toast.makeText(printeractivity, printeractivity.getString(d.j), 1).show();
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
                    Toast.makeText(h, 0x7f0901f9, 1).show();
                    return;
                }
            }
            // Misplaced declaration of an exception variable
            catch (UnknownHostException unknownhostexception)
            {
                Toast.makeText(h, 0x7f090175, 1).show();
                BugSenseHandler.sendException(unknownhostexception);
                unknownhostexception.printStackTrace();
                return;
            }
        }
        com.aadhk.product.library.a.a a1 = new com.aadhk.product.library.a.a(h, new di(this), getString(0x7f09017a));
        if (android.os.Build.VERSION.SDK_INT >= 11)
        {
            a1.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null);
            return;
        } else
        {
            a1.execute(null);
            return;
        }
_L2:
        if (L.isChecked() && !com.aadhk.b.b.a(h, aa) && !com.aadhk.b.b.a(h, "com.aadhk.restpos.full"))
        {
            h.c();
            return;
        }
        if (e())
        {
            a();
            h.finish();
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
