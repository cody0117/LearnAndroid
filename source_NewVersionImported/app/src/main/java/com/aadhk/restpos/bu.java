// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos;

import com.aadhk.product.library.b.f;
import com.aadhk.restpos.f.l;

// Referenced classes of package com.aadhk.restpos:
//            SettingActivity

final class bu
    implements f
{

    final SettingActivity a;

    bu(SettingActivity settingactivity)
    {
        a = settingactivity;
        super();
    }

    public final void a(Object obj)
    {
        SettingActivity.a(a).a("prefOrderNumInitial", (String)obj);
        SettingActivity.a(a).a("prefOrderNum");
        SettingActivity.b(a);
    }
}
