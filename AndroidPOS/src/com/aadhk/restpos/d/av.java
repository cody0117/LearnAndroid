// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.app.Activity;
import android.os.Bundle;
import android.preference.Preference;
import android.preference.PreferenceFragment;
import com.aadhk.restpos.KitchenSettingActivity;
import com.aadhk.restpos.c.ar;
import com.aadhk.restpos.c.t;
import com.aadhk.restpos.util.r;

// Referenced classes of package com.aadhk.restpos.d:
//            ay, aw, ax

public final class av extends PreferenceFragment
    implements android.preference.Preference.OnPreferenceClickListener
{

    private KitchenSettingActivity a;
    private Preference b;
    private Preference c;
    private Preference d;
    private r e;

    public av()
    {
    }

    static Preference a(av av1)
    {
        return av1.b;
    }

    private void a(int i)
    {
        ar ar1 = new ar(a, i);
        ar1.setTitle(getString(0x7f0803af));
        if (i == 2)
        {
            ar1.setTitle(getString(0x7f0803b0));
        }
        ar1.a(new ay(this, i));
        ar1.show();
    }

    static r b(av av1)
    {
        return av1.e;
    }

    static Preference c(av av1)
    {
        return av1.c;
    }

    static Preference d(av av1)
    {
        return av1.d;
    }

    public final void onAttach(Activity activity)
    {
        a = (KitchenSettingActivity)activity;
        super.onAttach(activity);
    }

    public final void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        addPreferencesFromResource(0x7f050003);
        e = new r(a);
        b = findPreference("prefMinutes");
        b.setOnPreferenceClickListener(this);
        c = findPreference("prefFontSize");
        c.setOnPreferenceClickListener(this);
        d = findPreference("prefRefresh");
        d.setOnPreferenceClickListener(this);
    }

    public final boolean onPreferenceClick(Preference preference)
    {
        if (preference == b)
        {
            t t1 = new t(a);
            t1.a(new aw(this));
            t1.setOnCancelListener(new ax(this));
            t1.show();
        } else
        {
            if (preference == c)
            {
                a(1);
                return true;
            }
            if (preference == d)
            {
                a(2);
                return true;
            }
        }
        return true;
    }

    public final void onResume()
    {
        super.onResume();
        String s = getString(0x7f0803a9);
        Object aobj[] = new Object[3];
        aobj[0] = Integer.valueOf(e.F());
        aobj[1] = Integer.valueOf(e.G());
        aobj[2] = Integer.valueOf(e.H());
        String s1 = String.format(s, aobj);
        b.setSummary(s1);
        String s2 = getString(0x7f0803ab);
        Object aobj1[] = new Object[1];
        aobj1[0] = Integer.valueOf(e.I());
        String s3 = String.format(s2, aobj1);
        c.setSummary(s3);
        String s4 = getString(0x7f0803ad);
        Object aobj2[] = new Object[1];
        aobj2[0] = Integer.valueOf(e.J());
        String s5 = String.format(s4, aobj2);
        d.setSummary(s5);
    }
}
