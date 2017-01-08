// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos;

import android.app.Dialog;
import android.content.BroadcastReceiver;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.os.Bundle;
import android.preference.PreferenceManager;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.support.v7.app.ActionBarActivity;
import android.view.Menu;
import android.view.MenuItem;
import android.widget.FrameLayout;
import com.aadhk.product.library.c.f;
import com.aadhk.restpos.c.al;
import com.aadhk.restpos.c.ax;
import com.aadhk.restpos.d.w;
import com.aadhk.restpos.f.a;
import com.aadhk.restpos.f.d;
import com.aadhk.restpos.f.l;
import com.bugsense.trace.BugSenseHandler;
import com.google.android.a.a.i;
import com.google.android.a.a.m;
import com.google.android.a.a.s;
import java.io.BufferedReader;
import java.io.File;
import java.io.IOException;
import java.io.InputStreamReader;

// Referenced classes of package com.aadhk.restpos:
//            ai, ah

public class LoginActivity extends ActionBarActivity
{

    private static final byte e[] = {
        -46, 65, 30, -128, -103, -57, 74, -64, 51, 88, 
        -95, -45, 77, -117, -36, -113, -11, 32, -64, 89
    };
    private m a;
    private i b;
    private l c;
    private BroadcastReceiver d;

    public LoginActivity()
    {
    }

    protected void onActivityResult(int j, int k, Intent intent)
    {
        Intent intent1 = getIntent();
        intent1.addFlags(0x10000);
        finish();
        startActivity(intent1);
    }

    public void onCreate(Bundle bundle)
    {
        a a1;
        BugSenseHandler.initAndStartSession(this, "9fa2b19a");
        super.onCreate(bundle);
        FrameLayout framelayout = new FrameLayout(this);
        framelayout.setId(0x9a2112);
        setContentView(framelayout, new android.support.v7.app.ActionBar.LayoutParams(-1, -1));
        if (bundle == null)
        {
            FragmentTransaction fragmenttransaction = getSupportFragmentManager().beginTransaction();
            fragmenttransaction.add(0x9a2112, new w());
            fragmenttransaction.commit();
        }
        (new File(d.e)).mkdirs();
        (new File(d.d)).mkdirs();
        (new File(d.c)).mkdirs();
        c = new l(this);
        a1 = new a(this);
        if (!a1.d()) goto _L2; else goto _L1
_L1:
        f.a(this, (new StringBuilder()).append(d.b).append("/printer_setup_guide.pdf").toString());
        PreferenceManager.setDefaultValues(this, 0x7f050003, false);
        c = new l(this);
        c.a("pref_report_end_day", true);
        c.a("pref_report_cb_pay", true);
_L4:
        String s1 = android.provider.Settings.Secure.getString(getContentResolver(), "android_id");
        a = new ai(this, (byte)0);
        b = new i(this, new s(this, new com.google.android.a.a.a(e, getPackageName(), s1)), "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAv9jo4joaEMQ/+0IT3HFkzTfgF/tAsr7eHOVd4QUku8VQWRTCLnOUmWSHM4wPOxoqMn4/p9qPm7p11cPmp4mWRGTMlQtvYlsORAWUcuIkI302K5Ha6XMGxtriskQ0pakEkep28paWjTIJ7IWrBWEgLtGsqV4TqxUazgarW1CyxVWrcRIH9C36aLdG41Qd19+ygKMwwgu1YrHtz8UDjWbJ+jvFDLNCTKICte4ByfSMecFvpiZkv25bvrYcSz0BiTWMapSKBUrQ+63+uRTno611p/2y6qqhaM3MoW2Me7Y81ECeaebc4s/N4zhRpC7W6lXenfg9LfsNoGa5sRI4qxdgiQIDAQAB");
        d = new ah(this);
        IntentFilter intentfilter = new IntentFilter();
        intentfilter.addAction("android.net.wifi.STATE_CHANGE");
        registerReceiver(d, intentfilter);
        return;
_L2:
        if (a1.c())
        {
            a1.e().show();
            if ("1.6.5".compareTo(a1.b()) > 0)
            {
                ax ax1 = new ax(this);
                ax1.a(getString(0x7f09017e));
                ax1.show();
                try
                {
                    c.q();
                    c.r();
                }
                catch (Exception exception)
                {
                    c.a("prefOrderNumInitial");
                    c.a("prefOrderNum");
                }
            }
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public boolean onCreateOptionsMenu(Menu menu)
    {
        return super.onCreateOptionsMenu(menu);
    }

    protected void onDestroy()
    {
        b.a();
        if (d != null)
        {
            unregisterReceiver(d);
        }
        super.onDestroy();
    }

    public boolean onOptionsItemSelected(MenuItem menuitem)
    {
        BufferedReader bufferedreader;
        StringBuffer stringbuffer;
        if (menuitem.getItemId() == 0x7f0b028a)
        {
            com.aadhk.product.library.c.l.b(this);
            return true;
        }
        if (menuitem.getItemId() == 0x7f0b028f)
        {
            finish();
            return true;
        }
        if (menuitem.getItemId() != 0x7f0b028e)
        {
            break MISSING_BLOCK_LABEL_150;
        }
        bufferedreader = new BufferedReader(new InputStreamReader(getResources().openRawResource(0x7f060004)));
        stringbuffer = new StringBuffer();
_L1:
        String s1;
        try
        {
            s1 = bufferedreader.readLine();
        }
        catch (IOException ioexception)
        {
            BugSenseHandler.sendException(ioexception);
            ioexception.printStackTrace();
            return true;
        }
        if (s1 == null)
        {
            break MISSING_BLOCK_LABEL_116;
        }
        stringbuffer.append(s1);
          goto _L1
        al al1 = new al(this);
        al1.setTitle(0x7f09031b);
        al1.a(stringbuffer.toString());
        al1.show();
        return true;
        return false;
    }

}
