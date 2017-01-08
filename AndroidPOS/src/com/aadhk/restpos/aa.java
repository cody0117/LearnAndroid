// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos;

import android.content.DialogInterface;
import android.view.KeyEvent;
import com.aadhk.b.a.b;

// Referenced classes of package com.aadhk.restpos:
//            LoginActivity

final class aa
    implements android.content.DialogInterface.OnKeyListener
{

    final b a;
    final LoginActivity b;

    aa(LoginActivity loginactivity, b b1)
    {
        b = loginactivity;
        a = b1;
        super();
    }

    public final boolean onKey(DialogInterface dialoginterface, int i, KeyEvent keyevent)
    {
        if (i == 4)
        {
            a.dismiss();
            b.finish();
        }
        return true;
    }
}
