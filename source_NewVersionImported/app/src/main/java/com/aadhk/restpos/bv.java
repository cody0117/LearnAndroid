// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos;

import android.preference.Preference;
import com.aadhk.product.library.b.f;
import com.aadhk.restpos.f.l;

// Referenced classes of package com.aadhk.restpos:
//            SettingActivity

final class bv
    implements f
{

    final SettingActivity a;

    bv(SettingActivity settingactivity)
    {
        a = settingactivity;
        super();
    }

    public final void a(Object obj)
    {
        SettingActivity.a(a).a("prefTableDefaultPersonNum", Integer.parseInt((String)obj));
        String s = String.format(a.getString(0x7f09024b), new Object[] {
            obj
        });
        SettingActivity.c(a).setSummary(s);
    }
}
