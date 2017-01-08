// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.f;

import android.widget.EditText;

// Referenced classes of package com.aadhk.restpos.f:
//            j

public final class n
{

    public static void a(EditText edittext)
    {
        edittext.setText(j.b(1.0D + j.d(edittext.getText().toString())));
    }

    public static void b(EditText edittext)
    {
        double d = 0.0D;
        double d1 = j.d(edittext.getText().toString());
        if (d1 > d)
        {
            d = d1 - 1.0D;
        }
        edittext.setText(j.b(d));
    }
}
