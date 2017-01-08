// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.util;

import android.widget.EditText;

// Referenced classes of package com.aadhk.restpos.util:
//            p

public final class w
{

    public static void a(EditText edittext)
    {
        edittext.setText(p.c(1.0D + p.d(edittext.getText().toString())));
    }

    public static void b(EditText edittext)
    {
        double d = 0.0D;
        double d1 = p.d(edittext.getText().toString());
        if (d1 > d)
        {
            if (d1 > 1.0D)
            {
                d = d1 - 1.0D;
            } else
            {
                d = d1;
            }
        }
        edittext.setText(p.c(d));
    }
}
