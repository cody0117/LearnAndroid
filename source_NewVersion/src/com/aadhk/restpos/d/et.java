// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.app.Activity;
import android.content.res.Resources;
import android.database.sqlite.SQLiteDatabase;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListView;
import android.widget.TextView;
import com.aadhk.restpos.POSApp;
import com.aadhk.restpos.ReportActivity;
import com.aadhk.restpos.bean.Company;
import com.aadhk.restpos.f.l;

abstract class et extends Fragment
{

    protected String a;
    protected String b;
    protected String c;
    protected String d;
    protected String e;
    protected ReportActivity f;
    protected View g;
    protected ListView h;
    protected TextView i;
    protected TextView j;
    protected String k;
    protected int l;
    protected String m;
    protected String n;
    protected int o;
    protected Resources p;
    protected Company q;
    protected SQLiteDatabase r;

    et()
    {
    }

    protected abstract void a();

    public void onActivityCreated(Bundle bundle)
    {
        super.onActivityCreated(bundle);
        r = f.a();
        o = f.c();
        n = f.b();
    }

    public void onAttach(Activity activity)
    {
        f = (ReportActivity)activity;
        super.onAttach(activity);
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setHasOptionsMenu(true);
        Bundle bundle1 = getArguments();
        if (bundle1 != null)
        {
            a = bundle1.getString("fromDate");
            b = bundle1.getString("toDate");
            n = bundle1.getString("reportTitle");
        }
        p = getResources();
        q = ((POSApp)f.getApplicationContext()).b();
        k = q.getCurrencySign();
        l = q.getDecimalPlace();
        l l1 = new l(f);
        c = q.getTimeIn();
        d = q.getTimeOut();
        m = l1.c();
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        g = layoutinflater.inflate(0x7f0300b3, viewgroup, false);
        h = (ListView)g.findViewById(0x7f0b0086);
        i = (TextView)g.findViewById(0x7f0b012a);
        j = (TextView)g.findViewById(0x7f0b0118);
        return g;
    }

    public boolean onOptionsItemSelected(MenuItem menuitem)
    {
        if (menuitem.getItemId() == 0x7f0b028a)
        {
            a();
            return true;
        } else
        {
            return super.onOptionsItemSelected(menuitem);
        }
    }
}
