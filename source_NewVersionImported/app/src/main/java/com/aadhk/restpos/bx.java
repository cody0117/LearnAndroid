// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos;

import android.widget.Toast;
import com.aadhk.a.m;
import com.aadhk.b.a;
import com.aadhk.b.a.c;
import com.aadhk.b.b;
import com.bugsense.trace.BugSenseHandler;
import java.util.Date;

// Referenced classes of package com.aadhk.restpos:
//            SettingActivity

final class bx
    implements c
{

    final SettingActivity a;

    bx(SettingActivity settingactivity)
    {
        a = settingactivity;
        super();
    }

    public final void a(String s)
    {
        try
        {
            if (b.a(a, "com.aadhk.restpos.full", s))
            {
                m m1 = new m("inapp", "10001", "com.aadhk.restpos.full", (new Date()).getTime());
                b.a(a, m1);
                return;
            }
        }
        catch (a a1)
        {
            BugSenseHandler.sendException(a1);
            a1.printStackTrace();
            return;
        }
        Toast.makeText(a.getApplicationContext(), 0x7f090056, 0).show();
        return;
    }
}
