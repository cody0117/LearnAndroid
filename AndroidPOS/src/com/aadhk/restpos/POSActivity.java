// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos;

import android.content.res.Resources;
import android.net.wifi.p2p.WifiP2pInfo;
import android.os.Bundle;
import android.support.v7.app.ActionBar;
import android.support.v7.app.ActionBarActivity;
import android.view.MenuItem;
import com.aadhk.restpos.bean.Company;
import com.aadhk.restpos.bean.User;
import com.aadhk.restpos.util.r;
import com.bugsense.trace.BugSenseHandler;
import java.util.Map;

// Referenced classes of package com.aadhk.restpos:
//            POSApp

public abstract class POSActivity extends ActionBarActivity
{

    protected static boolean m;
    protected static WifiP2pInfo n;
    protected Resources b;
    protected r c;
    protected User d;
    protected Company e;
    protected Map f;
    protected String g;
    protected String h;
    protected String i;
    protected int j;
    protected String k;
    protected String l;

    public POSActivity()
    {
    }

    public static void a(WifiP2pInfo wifip2pinfo)
    {
        n = wifip2pinfo;
    }

    public static void a(boolean flag)
    {
        m = flag;
    }

    public final String o()
    {
        return g;
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        getSupportActionBar().setDisplayHomeAsUpEnabled(true);
        BugSenseHandler.initAndStartSession(this, "9fa2b19a");
        b = getResources();
        c = new r(this);
        POSApp posapp = (POSApp)getApplicationContext();
        d = posapp.d();
        e = posapp.b();
        f = posapp.e();
        g = e.getTimeIn();
        h = e.getTimeOut();
        i = e.getCurrencySign();
        j = e.getDecimalPlace();
        k = c.c();
        l = c.d();
    }

    protected void onDestroy()
    {
        super.onDestroy();
    }

    public boolean onOptionsItemSelected(MenuItem menuitem)
    {
        if (menuitem.getItemId() == 0x102002c)
        {
            finish();
        }
        return super.onOptionsItemSelected(menuitem);
    }

    public final String p()
    {
        return h;
    }

    public final String q()
    {
        return k;
    }

    public final String r()
    {
        return l;
    }

    public final String s()
    {
        return i;
    }

    public final int t()
    {
        return j;
    }

    public final User u()
    {
        return d;
    }

    public final Company v()
    {
        return e;
    }

    public final Map w()
    {
        return f;
    }
}
