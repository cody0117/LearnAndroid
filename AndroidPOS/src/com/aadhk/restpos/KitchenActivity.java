// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos;

import android.app.FragmentManager;
import android.app.FragmentTransaction;
import android.app.ProgressDialog;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.wifi.p2p.WifiP2pInfo;
import android.net.wifi.p2p.WifiP2pManager;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.Handler;
import android.support.v7.app.ActionBar;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.aadhk.product.library.a.d;
import com.aadhk.product.library.c.c;
import com.aadhk.restpos.b.f;
import com.aadhk.restpos.bean.Order;
import com.aadhk.restpos.d.aq;
import com.aadhk.restpos.g.h;
import com.aadhk.restpos.util.o;
import com.aadhk.restpos.util.q;
import com.aadhk.restpos.util.r;
import com.aadhk.restpos.wifidirect.KitchenWiFiDirectBroadcastReceiver;
import com.bugsense.trace.BugSenseHandler;
import java.net.InetAddress;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Timer;

// Referenced classes of package com.aadhk.restpos:
//            POSActivity, u, t, x, 
//            DataTransferService, TableListActivity, WiFiDirectActivity, w, 
//            KitchenSettingActivity

public class KitchenActivity extends POSActivity
    implements android.net.wifi.p2p.WifiP2pManager.ConnectionInfoListener
{

    private static List t;
    private boolean A;
    private WifiP2pManager B;
    private IntentFilter C;
    private android.net.wifi.p2p.WifiP2pManager.Channel D;
    private BroadcastReceiver E;
    private ProgressDialog F;
    private List G;
    Handler a;
    private aq o;
    private LinearLayout p;
    private LinearLayout q;
    private LinearLayout r;
    private FrameLayout s;
    private h u;
    private r v;
    private LinearLayout w;
    private Timer x;
    private int y;
    private int z;

    public KitchenActivity()
    {
        A = true;
        E = null;
        F = null;
        G = new ArrayList();
        a = new u(this);
    }

    static int a(KitchenActivity kitchenactivity, int l)
    {
        kitchenactivity.y = l;
        return l;
    }

    static LinearLayout a(KitchenActivity kitchenactivity)
    {
        return kitchenactivity.w;
    }

    static LinearLayout a(KitchenActivity kitchenactivity, LinearLayout linearlayout)
    {
        kitchenactivity.w = linearlayout;
        return linearlayout;
    }

    static List a(List list)
    {
        t = list;
        return list;
    }

    public static List a(Map map)
    {
        List list = (List)map.get("serviceData");
        t = list;
        return list;
    }

    static void b(KitchenActivity kitchenactivity)
    {
        kitchenactivity.k();
    }

    static h c(KitchenActivity kitchenactivity)
    {
        return kitchenactivity.u;
    }

    static List d(KitchenActivity kitchenactivity)
    {
        return kitchenactivity.G;
    }

    static List j()
    {
        return t;
    }

    private void k()
    {
        o = new aq();
        FragmentTransaction fragmenttransaction = getFragmentManager().beginTransaction();
        fragmenttransaction.replace(0x7f090295, o);
        fragmenttransaction.addToBackStack(null);
        fragmenttransaction.commit();
    }

    public final h a()
    {
        return u;
    }

    public final void a(int l)
    {
        z = l;
    }

    public final List b()
    {
        ArrayList arraylist = new ArrayList();
        for (int l = 3 * y; l < 3 + 3 * y && l < t.size(); l++)
        {
            arraylist.add(t.get(l));
        }

        return arraylist;
    }

    public final void c()
    {
        if (t.size() == 0)
        {
            s.setVisibility(8);
            q.setVisibility(0);
        } else
        {
            s.setVisibility(0);
            q.setVisibility(8);
        }
        p.removeAllViews();
        if (t.size() <= 3 * y)
        {
            y = 0;
        }
        if (A)
        {
            k();
        } else
        {
            o.a(b());
        }
        A = false;
        if (!t.isEmpty())
        {
            int l = 0;
            while (l < t.size()) 
            {
                LinearLayout linearlayout;
                long l1;
                if (l % 3 == 0)
                {
                    View view1 = getLayoutInflater().inflate(0x7f030025, null);
                    r = (LinearLayout)view1.findViewById(0x7f090068);
                    p.addView(view1);
                    View view;
                    TextView textview;
                    TextView textview1;
                    LinearLayout linearlayout1;
                    if (y == l / 3)
                    {
                        r.setBackgroundResource(0x7f020086);
                        w = r;
                    } else
                    {
                        r.setBackgroundResource(0x7f020085);
                    }
                    linearlayout1 = r;
                    linearlayout1.setOnClickListener(new t(this, l / 3, linearlayout1));
                }
                view = getLayoutInflater().inflate(0x7f030024, null);
                linearlayout = (LinearLayout)view.findViewById(0x7f090065);
                textview = (TextView)view.findViewById(0x7f090066);
                textview1 = (TextView)view.findViewById(0x7f090067);
                textview.setText(((Order)t.get(l)).getTableName());
                textview1.setText(com.aadhk.restpos.util.o.d(((Order)t.get(l)).getOrderTime(), v.d()));
                textview.setTextSize(-6 + v.I());
                textview1.setTextSize(-6 + v.I());
                r.addView(view);
                l1 = com.aadhk.restpos.util.o.f(((Order)t.get(l)).getOrderTime(), com.aadhk.product.library.c.c.c());
                if (l1 > (long)v.F())
                {
                    linearlayout.setBackgroundResource(0x7f070092);
                } else
                if (l1 < (long)v.F() && l1 > (long)v.G())
                {
                    linearlayout.setBackgroundResource(0x7f070093);
                } else
                if (l1 < (long)v.G() && l1 > (long)v.H())
                {
                    linearlayout.setBackgroundResource(0x7f070094);
                } else
                {
                    linearlayout.setBackgroundResource(0x7f070095);
                }
                l++;
            }
        }
    }

    public final int d()
    {
        return z;
    }

    public final void e()
    {
        A = true;
    }

    public final int f()
    {
        return v.F();
    }

    public final int g()
    {
        return v.G();
    }

    public final int h()
    {
        return v.H();
    }

    public final int i()
    {
        return v.I();
    }

    public void onConnectionInfoAvailable(WifiP2pInfo wifip2pinfo)
    {
        if (F != null && F.isShowing())
        {
            F.dismiss();
        }
        n = wifip2pinfo;
        a(wifip2pinfo);
        if (wifip2pinfo.groupFormed && wifip2pinfo.isGroupOwner)
        {
            (new x(this, (byte)0)).start();
        } else
        if (wifip2pinfo.groupFormed)
        {
            a(wifip2pinfo.groupFormed);
            Intent intent = new Intent(this, com/aadhk/restpos/DataTransferService);
            intent.setAction("com.android.wifidirect.SEND_MESSAGE");
            Bundle bundle = new Bundle();
            bundle.putString("kitchen", "1");
            bundle.putString("go_host", wifip2pinfo.groupOwnerAddress.getHostAddress());
            bundle.putInt("go_port", 8988);
            intent.putExtras(bundle);
            startService(intent);
            return;
        }
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        BugSenseHandler.initAndStartSession(this, "9fa2b19a");
        getSupportActionBar().setDisplayHomeAsUpEnabled(true);
        setTitle(0x7f08039d);
        setContentView(0x7f0300b1);
        p = (LinearLayout)findViewById(0x7f090296);
        s = (FrameLayout)findViewById(0x7f090295);
        q = (LinearLayout)findViewById(0x7f090297);
        u = new h(this);
        v = new r(this);
        C = new IntentFilter();
        t = new ArrayList();
        C.addAction("android.net.wifi.p2p.STATE_CHANGED");
        C.addAction("android.net.wifi.p2p.PEERS_CHANGED");
        C.addAction("android.net.wifi.p2p.CONNECTION_STATE_CHANGE");
        C.addAction("android.net.wifi.p2p.THIS_DEVICE_CHANGED");
        B = (WifiP2pManager)getSystemService("wifip2p");
        D = B.initialize(this, getMainLooper(), null);
        E = new KitchenWiFiDirectBroadcastReceiver(B, D, this);
        registerReceiver(E, C);
        c();
    }

    public boolean onCreateOptionsMenu(Menu menu)
    {
        getMenuInflater().inflate(0x7f0f0007, menu);
        return super.onCreateOptionsMenu(menu);
    }

    protected void onDestroy()
    {
        h _tmp = u;
        com.aadhk.restpos.b.f.a().c();
        unregisterReceiver(E);
        super.onDestroy();
    }

    public boolean onOptionsItemSelected(MenuItem menuitem)
    {
        if (menuitem.getItemId() == 0x102002c)
        {
            Intent intent = new Intent(this, com/aadhk/restpos/TableListActivity);
            intent.setFlags(0x4000000);
            startActivity(intent);
            return true;
        }
        if (menuitem.getItemId() == 0x7f09030f)
        {
            startActivity(new Intent(this, com/aadhk/restpos/WiFiDirectActivity));
        } else
        {
            if (menuitem.getItemId() == 0x7f090311)
            {
                com.aadhk.restpos.util.q.b(this);
                return true;
            }
            if (menuitem.getItemId() == 0x7f090310)
            {
                A = true;
                z = 0;
                (new d(new w(this, (byte)0), this, (byte)0)).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null);
                return true;
            }
            if (menuitem.getItemId() == 0x7f090312)
            {
                startActivity(new Intent(this, com/aadhk/restpos/KitchenSettingActivity));
                return true;
            }
        }
        return false;
    }

    public void onPause()
    {
        super.onPause();
        if (x != null)
        {
            x.cancel();
        }
    }

    protected void onResume()
    {
        super.onResume();
    }
}
