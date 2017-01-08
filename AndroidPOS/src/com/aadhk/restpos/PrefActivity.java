// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos;

import android.app.ActionBar;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.os.Bundle;
import android.preference.PreferenceActivity;
import android.view.MenuItem;
import android.widget.ListView;
import com.bugsense.trace.BugSenseHandler;

public abstract class PrefActivity extends PreferenceActivity
    implements android.preference.Preference.OnPreferenceClickListener
{

    public SharedPreferences a;
    protected Resources b;

    public PrefActivity()
    {
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        if (android.os.Build.VERSION.SDK_INT >= 14)
        {
            getActionBar().setDisplayHomeAsUpEnabled(true);
        }
        b = getResources();
        BugSenseHandler.initAndStartSession(this, "9fa2b19a");
        getListView().setDivider(b.getDrawable(0x7f02010d));
        getListView().setDividerHeight(1);
    }

    public boolean onOptionsItemSelected(MenuItem menuitem)
    {
        if (menuitem.getItemId() == 0x102002c)
        {
            finish();
        }
        return super.onOptionsItemSelected(menuitem);
    }
}
