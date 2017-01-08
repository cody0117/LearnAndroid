// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos;

import android.content.res.Resources;
import android.os.Bundle;
import android.support.v7.app.ActionBar;
import android.support.v7.app.ActionBarActivity;
import android.view.MenuItem;
import com.aadhk.restpos.bean.Company;
import com.aadhk.restpos.bean.User;
import com.aadhk.restpos.f.l;
import com.bugsense.trace.BugSenseHandler;
import com.google.analytics.tracking.android.EasyTracker;
import java.util.Map;

// Referenced classes of package com.aadhk.restpos:
//            POSApp

public abstract class POSActivity extends ActionBarActivity
{

    protected Resources b;
    protected l c;
    protected User d;
    protected Company e;
    protected Map f;
    protected String g;
    protected String h;
    protected String i;
    protected int j;
    protected String k;

    public POSActivity()
    {
    }

    public final String h()
    {
        return g;
    }

    public final String i()
    {
        return h;
    }

    public final String j()
    {
        return k;
    }

    public final String k()
    {
        return i;
    }

    public final int l()
    {
        return j;
    }

    public final User m()
    {
        return d;
    }

    public final Company n()
    {
        return e;
    }

    public final Map o()
    {
        return f;
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        getSupportActionBar().setDisplayHomeAsUpEnabled(true);
        BugSenseHandler.initAndStartSession(this, "9fa2b19a");
        b = getResources();
        c = new l(this);
        POSApp posapp = (POSApp)getApplicationContext();
        d = posapp.c();
        e = posapp.b();
        f = posapp.d();
        g = e.getTimeIn();
        h = e.getTimeOut();
        i = e.getCurrencySign();
        j = e.getDecimalPlace();
        k = c.c();
    }

    public boolean onOptionsItemSelected(MenuItem menuitem)
    {
        if (menuitem.getItemId() == 0x102002c)
        {
            finish();
        }
        return super.onOptionsItemSelected(menuitem);
    }

    public void onStart()
    {
        super.onStart();
        EasyTracker.getInstance().activityStart(this);
    }

    public void onStop()
    {
        super.onStop();
        EasyTracker.getInstance().activityStop(this);
    }
}
