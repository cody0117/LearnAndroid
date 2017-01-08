// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos;

import android.app.ProgressDialog;
import android.content.BroadcastReceiver;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.wifi.WpsInfo;
import android.net.wifi.p2p.WifiP2pConfig;
import android.net.wifi.p2p.WifiP2pDevice;
import android.net.wifi.p2p.WifiP2pDeviceList;
import android.net.wifi.p2p.WifiP2pManager;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ListView;
import android.widget.TextView;
import android.widget.Toast;
import com.aadhk.restpos.wifidirect.WiFiDirectBroadcastReceiver;
import com.aadhk.restpos.wifidirect.g;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.aadhk.restpos:
//            POSActivity, es, er, eu, 
//            et, eq

public class WiFiDirectActivity extends POSActivity
    implements android.net.wifi.p2p.WifiP2pManager.ChannelListener, android.net.wifi.p2p.WifiP2pManager.PeerListListener, android.widget.AdapterView.OnItemClickListener, g
{

    private WifiP2pManager a;
    private boolean o;
    private boolean p;
    private final IntentFilter q = new IntentFilter();
    private android.net.wifi.p2p.WifiP2pManager.Channel r;
    private BroadcastReceiver s;
    private List t;
    private ProgressDialog u;
    private WifiP2pDevice v;
    private ListView w;
    private TextView x;
    private eu y;
    private MenuItem z;

    public WiFiDirectActivity()
    {
        o = false;
        p = false;
        s = null;
        t = new ArrayList();
        u = null;
    }

    static String a(int i)
    {
        return b(i);
    }

    private static String b(int i)
    {
        switch (i)
        {
        default:
            return "Unknown";

        case 3: // '\003'
            return "Available";

        case 1: // '\001'
            return "Invited";

        case 0: // '\0'
            return "Connected";

        case 2: // '\002'
            return "Failed";

        case 4: // '\004'
            return "Unavailable";
        }
    }

    public final void a()
    {
        a.removeGroup(r, new es(this));
    }

    public final void a(WifiP2pConfig wifip2pconfig)
    {
        a.connect(r, wifip2pconfig, new er(this));
    }

    public final void a(WifiP2pDevice wifip2pdevice)
    {
        v = wifip2pdevice;
        WifiP2pConfig wifip2pconfig = new WifiP2pConfig();
        wifip2pconfig.deviceAddress = wifip2pdevice.deviceAddress;
        wifip2pconfig.wps.setup = 0;
        if (u != null && u.isShowing())
        {
            u.dismiss();
        }
        u = ProgressDialog.show(this, "Press back to cancel", (new StringBuilder("Connecting to :")).append(wifip2pdevice.deviceAddress).toString(), true, true);
        a(wifip2pconfig);
    }

    public final void b(WifiP2pDevice wifip2pdevice)
    {
label0:
        {
            v = wifip2pdevice;
            ((TextView)findViewById(0x7f0902fa)).setText(wifip2pdevice.deviceName);
            ((TextView)findViewById(0x7f0902fb)).setText(b(wifip2pdevice.status));
            if (z != null)
            {
                if (!o)
                {
                    break label0;
                }
                z.setVisible(false);
            }
            return;
        }
        z.setVisible(true);
    }

    public final void b(boolean flag)
    {
        o = flag;
    }

    public void onChannelDisconnected()
    {
        if (a != null && !p)
        {
            Toast.makeText(this, "Channel lost. Trying again", 1).show();
            p = true;
            a.initialize(this, getMainLooper(), this);
            return;
        } else
        {
            Toast.makeText(this, "Severe! Channel is probably lost premanently. Try Disable/Re-Enable P2P.", 1).show();
            return;
        }
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f0300e4);
        q.addAction("android.net.wifi.p2p.STATE_CHANGED");
        q.addAction("android.net.wifi.p2p.PEERS_CHANGED");
        q.addAction("android.net.wifi.p2p.CONNECTION_STATE_CHANGE");
        q.addAction("android.net.wifi.p2p.THIS_DEVICE_CHANGED");
        a = (WifiP2pManager)getSystemService("wifip2p");
        r = a.initialize(this, getMainLooper(), null);
        w = (ListView)findViewById(0x102000a);
        x = (TextView)findViewById(0x1020004);
        w.setOnItemClickListener(this);
        y = new eu(this, this, t);
        w.setAdapter(y);
    }

    public boolean onCreateOptionsMenu(Menu menu)
    {
        getMenuInflater().inflate(0x7f0f0019, menu);
        z = menu.findItem(0x7f090328);
        if (o)
        {
            menu.removeItem(0x7f090328);
        }
        return true;
    }

    public void onItemClick(AdapterView adapterview, View view, int i, long l)
    {
        WifiP2pDevice wifip2pdevice = (WifiP2pDevice)y.getItem(i);
        if (wifip2pdevice.status == 0)
        {
            a();
            return;
        } else
        {
            a(wifip2pdevice);
            return;
        }
    }

    public boolean onOptionsItemSelected(MenuItem menuitem)
    {
        boolean flag = true;
        menuitem.getItemId();
        JVM INSTR tableswitch 2131297064 2131297065: default 32
    //                   2131297064 40
    //                   2131297065 70;
           goto _L1 _L2 _L3
_L1:
        flag = super.onOptionsItemSelected(menuitem);
_L5:
        return flag;
_L2:
        if (a == null || r == null) goto _L5; else goto _L4
_L4:
        startActivity(new Intent("android.settings.WIRELESS_SETTINGS"));
        return flag;
_L3:
        if (!o)
        {
            Toast.makeText(this, 0x7f08038a, 0).show();
            return flag;
        }
        if (u != null && u.isShowing())
        {
            u.dismiss();
        }
        et et1 = new et(this);
        u = ProgressDialog.show(this, "Press back to cancel", "finding peers", flag, flag, et1);
        a.discoverPeers(r, new eq(this));
        return flag;
    }

    public void onPause()
    {
        super.onPause();
        unregisterReceiver(s);
    }

    public void onPeersAvailable(WifiP2pDeviceList wifip2pdevicelist)
    {
        if (u != null && u.isShowing())
        {
            u.dismiss();
        }
        t.clear();
        t.addAll(wifip2pdevicelist.getDeviceList());
        x.setVisibility(8);
        y.notifyDataSetChanged();
        if (t.size() == 0)
        {
            x.setVisibility(0);
        }
    }

    public void onResume()
    {
        super.onResume();
        s = new WiFiDirectBroadcastReceiver(a, r, this);
        registerReceiver(s, q);
    }
}
