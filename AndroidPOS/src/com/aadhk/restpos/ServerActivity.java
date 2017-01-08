// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos;

import android.content.SharedPreferences;
import android.os.Bundle;
import android.preference.Preference;
import android.preference.PreferenceManager;
import com.aadhk.product.library.a.c;
import com.aadhk.product.library.c.l;
import com.aadhk.restpos.c.dn;
import com.aadhk.restpos.util.r;

// Referenced classes of package com.aadhk.restpos:
//            PrefActivity, da, cz

public class ServerActivity extends PrefActivity
    implements android.content.SharedPreferences.OnSharedPreferenceChangeListener
{

    c c;
    private Preference d;
    private Preference e;
    private Preference f;
    private Preference g;
    private r h;

    public ServerActivity()
    {
        c = new da(this);
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setTitle(0x7f0803c5);
        addPreferencesFromResource(0x7f050005);
        a = PreferenceManager.getDefaultSharedPreferences(this);
        h = new r(this);
        e = findPreference("prefServerInfo");
        e.setOnPreferenceClickListener(this);
        g = findPreference("prefServerPurchase");
        g.setOnPreferenceClickListener(this);
    }

    protected void onDestroy()
    {
        super.onDestroy();
    }

    public boolean onPreferenceClick(Preference preference)
    {
        if (preference == d || preference == e) goto _L2; else goto _L1
_L1:
        if (preference != g) goto _L4; else goto _L3
_L3:
        l.a(this);
_L2:
        return true;
_L4:
        if (preference == f)
        {
            dn dn1 = new dn(this, h.w());
            dn1.setTitle(getString(0x7f0803c1));
            dn1.a(new cz(this));
            dn1.show();
        }
        if (true) goto _L2; else goto _L5
_L5:
    }

    public void onSharedPreferenceChanged(SharedPreferences sharedpreferences, String s)
    {
    }
}
