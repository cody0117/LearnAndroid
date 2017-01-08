// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos;

import android.content.BroadcastReceiver;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Build;
import android.os.Bundle;
import android.preference.PreferenceManager;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.support.v7.app.ActionBarActivity;
import android.view.MenuItem;
import android.widget.FrameLayout;
import android.widget.Toast;
import com.aadhk.b.b;
import com.aadhk.product.library.a.c;
import com.aadhk.product.library.c.l;
import com.aadhk.restpos.b.f;
import com.aadhk.restpos.bean.License;
import com.aadhk.restpos.c.ax;
import com.aadhk.restpos.c.bo;
import com.aadhk.restpos.d.bm;
import com.aadhk.restpos.g.i;
import com.aadhk.restpos.util.a;
import com.aadhk.restpos.util.r;
import com.bugsense.trace.BugSenseHandler;
import com.google.android.a.a.h;
import java.io.BufferedReader;
import java.io.File;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.Locale;

// Referenced classes of package com.aadhk.restpos:
//            ab, z, aa

public class LoginActivity extends ActionBarActivity
{

    private static final byte f[] = {
        -46, 65, 30, -128, -103, -57, 74, -64, 51, 88, 
        -95, -45, 77, -117, -36, -113, -11, 32, -64, 89
    };
    c a;
    private h b;
    private r c;
    private i d;
    private BroadcastReceiver e;

    public LoginActivity()
    {
        a = new ab(this);
    }

    static r a(LoginActivity loginactivity)
    {
        return loginactivity.c;
    }

    static void b(LoginActivity loginactivity)
    {
        int k = com.aadhk.b.b.a(loginactivity.c.x());
        int j = k;
_L1:
        Exception exception;
        if (j <= 0 || (long)j > 31L)
        {
            com.aadhk.b.a.b b1 = new com.aadhk.b.a.b(loginactivity);
            b1.setCancelable(false);
            b1.a(new z(loginactivity));
            b1.show();
            b1.setOnKeyListener(new aa(loginactivity, b1));
            return;
        } else
        {
            String s = loginactivity.getString(0x7f080010);
            Object aobj[] = new Object[1];
            aobj[0] = Integer.valueOf(j);
            Toast.makeText(loginactivity, String.format(s, aobj), 0).show();
            FragmentTransaction fragmenttransaction = loginactivity.getSupportFragmentManager().beginTransaction();
            fragmenttransaction.add(0x9a2112, new bm());
            fragmenttransaction.commit();
            return;
        }
        exception;
        BugSenseHandler.sendException(exception);
        exception.printStackTrace();
        j = -1;
          goto _L1
    }

    private void d()
    {
        BufferedReader bufferedreader;
        StringBuffer stringbuffer;
        bufferedreader = new BufferedReader(new InputStreamReader(getResources().openRawResource(0x7f060004)));
        stringbuffer = new StringBuffer();
_L1:
        String s;
        try
        {
            s = bufferedreader.readLine();
        }
        catch (IOException ioexception)
        {
            BugSenseHandler.sendException(ioexception);
            ioexception.printStackTrace();
            return;
        }
        if (s == null)
        {
            break MISSING_BLOCK_LABEL_63;
        }
        stringbuffer.append(s);
          goto _L1
        ax ax1 = new ax(this);
        ax1.setTitle(0x7f08037b);
        ax1.a(stringbuffer.toString());
        ax1.show();
        return;
    }

    public final void a()
    {
        if (d != null)
        {
            i _tmp = d;
            com.aadhk.restpos.b.f.a().c();
        }
        d = new i(this);
    }

    public final i b()
    {
        return d;
    }

    public final i c()
    {
        return d;
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
        (new File(com.aadhk.restpos.util.f.e)).mkdirs();
        (new File(com.aadhk.restpos.util.f.d)).mkdirs();
        (new File(com.aadhk.restpos.util.f.c)).mkdirs();
        c = new r(this);
        d = new i(this);
        a1 = new a(this);
        if (!a1.d()) goto _L2; else goto _L1
_L1:
        d();
        com.aadhk.product.library.c.f.a(this, (new StringBuilder()).append(com.aadhk.restpos.util.f.b).append("/printer_setup_guide.pdf").toString());
        PreferenceManager.setDefaultValues(this, 0x7f050006, false);
        c = new r(this);
        c.a("pref_report_end_day", true);
        c.a("pref_report_cb_pay", true);
        FragmentTransaction fragmenttransaction;
        try
        {
            License license = new License();
            license.setSerialNumber(com.aadhk.b.b.b(this, "com.aadhk.restpos.full"));
            license.setItem("com.aadhk.restpos.full");
            license.setDeviceModel((new StringBuilder()).append(Build.MODEL).append(" ").append(android.os.Build.VERSION.SDK_INT).toString());
            license.setLocale((new StringBuilder()).append(Locale.getDefault()).toString());
            c.a(license);
        }
        catch (Exception exception1)
        {
            exception1.printStackTrace();
            BugSenseHandler.sendException(exception1);
        }
_L4:
        fragmenttransaction = getSupportFragmentManager().beginTransaction();
        fragmenttransaction.add(0x9a2112, new bm());
        fragmenttransaction.commit();
        return;
_L2:
        if (a1.c())
        {
            if ("1.7.2".compareTo(a1.b()) > 0)
            {
                bo bo1 = new bo(this);
                bo1.a(0x7f0801ae);
                bo1.show();
            }
            try
            {
                c.u();
            }
            catch (Exception exception)
            {
                c.a("prefOrderNumInitial");
                c.a("prefOrderNum");
            }
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    protected void onDestroy()
    {
        if (b != null)
        {
            b.a();
        }
        if (e != null)
        {
            unregisterReceiver(e);
        }
        i _tmp = d;
        com.aadhk.restpos.b.f.a().c();
        super.onDestroy();
    }

    public boolean onOptionsItemSelected(MenuItem menuitem)
    {
        if (menuitem.getItemId() == 0x7f0901a0)
        {
            l.a(this);
            return true;
        }
        if (menuitem.getItemId() == 0x7f090316)
        {
            finish();
            return true;
        }
        if (menuitem.getItemId() == 0x7f090311)
        {
            d();
            return true;
        } else
        {
            return false;
        }
    }

}
