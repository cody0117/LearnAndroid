// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos;

import com.aadhk.restpos.b.c;
import com.aadhk.restpos.c.cf;

// Referenced classes of package com.aadhk.restpos:
//            SettingActivity, POSApp

final class by
    implements cf
{

    final SettingActivity a;

    by(SettingActivity settingactivity)
    {
        a = settingactivity;
        super();
    }

    public final void a()
    {
        SettingActivity.e(a).c(SettingActivity.d(a));
        SettingActivity.g(a);
        ((POSApp)a.getApplicationContext()).a(SettingActivity.d(a));
    }
}
