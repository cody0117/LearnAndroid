// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos;

import com.aadhk.restpos.b.c;
import com.aadhk.restpos.bean.Company;
import com.aadhk.restpos.c.ak;

// Referenced classes of package com.aadhk.restpos:
//            SettingActivity, POSApp

final class bw
    implements ak
{

    final SettingActivity a;

    bw(SettingActivity settingactivity)
    {
        a = settingactivity;
        super();
    }

    public final void a()
    {
        SettingActivity.e(a).a(SettingActivity.d(a).getId(), SettingActivity.d(a).getServiceFee(), SettingActivity.d(a).isIncludeService());
        SettingActivity.f(a);
        ((POSApp)a.getApplicationContext()).a(SettingActivity.d(a));
    }
}
