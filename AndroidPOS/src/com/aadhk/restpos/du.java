// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos;

import android.content.DialogInterface;

// Referenced classes of package com.aadhk.restpos:
//            TakeOrderActivity

final class du
    implements android.content.DialogInterface.OnCancelListener
{

    final TakeOrderActivity a;

    du(TakeOrderActivity takeorderactivity)
    {
        a = takeorderactivity;
        super();
    }

    public final void onCancel(DialogInterface dialoginterface)
    {
        dialoginterface.dismiss();
    }
}
