// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;

// Referenced classes of package com.google.android.gms.internal:
//            lv

final class lw
    implements android.content.DialogInterface.OnClickListener
{

    final String a;
    final lv b;

    lw(lv lv1, String s)
    {
        b = lv1;
        a = s;
        super();
    }

    public final void onClick(DialogInterface dialoginterface, int i)
    {
        lv.a(b).startActivity(Intent.createChooser((new Intent("android.intent.action.SEND")).setType("text/plain").putExtra("android.intent.extra.TEXT", a), "Share via"));
    }
}
