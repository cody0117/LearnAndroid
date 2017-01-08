// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos;

import android.content.SharedPreferences;
import com.aadhk.a.j;
import com.aadhk.a.k;
import com.aadhk.a.l;
import com.aadhk.a.m;
import com.aadhk.b.a;
import com.aadhk.b.b;
import com.bugsense.trace.BugSenseHandler;

// Referenced classes of package com.aadhk.restpos:
//            PrinterActivity

final class cs
    implements j
{

    final PrinterActivity a;

    cs(PrinterActivity printeractivity)
    {
        a = printeractivity;
        super();
    }

    public final void a(k k1, l l1)
    {
        if (!k1.b()) goto _L2; else goto _L1
_L1:
        SharedPreferences sharedpreferences;
        return;
_L2:
        if ((sharedpreferences = a.getPreferences(0)).getBoolean("db_initialized", false)) goto _L1; else goto _L3
_L3:
        m m1 = l1.b("com.aadhk.restpos.feature.receipt");
        if (m1 == null)
        {
            break MISSING_BLOCK_LABEL_59;
        }
        if (m1.e() == 0)
        {
            b.a(a, m1);
        }
        m m2 = l1.b("com.aadhk.restpos.feature.kitchen");
        if (m2 == null)
        {
            break MISSING_BLOCK_LABEL_89;
        }
        if (m2.e() == 0)
        {
            b.a(a, m2);
        }
        m m3 = l1.b("com.aadhk.restpos.feature.kitchen2");
        if (m3 == null)
        {
            break MISSING_BLOCK_LABEL_119;
        }
        if (m3.e() == 0)
        {
            b.a(a, m3);
        }
        m m4 = l1.b("com.aadhk.restpos.feature.bar");
        android.content.SharedPreferences.Editor editor;
        if (m4 != null)
        {
            try
            {
                if (m4.e() == 0)
                {
                    b.a(a, m4);
                }
            }
            catch (a a1)
            {
                BugSenseHandler.sendException(a1);
                a1.printStackTrace();
            }
        }
        editor = sharedpreferences.edit();
        editor.putBoolean("db_initialized", true);
        editor.commit();
        return;
    }
}
