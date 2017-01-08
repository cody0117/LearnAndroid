// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.product.library.a;

import android.content.DialogInterface;

// Referenced classes of package com.aadhk.product.library.a:
//            a

final class b
    implements android.content.DialogInterface.OnCancelListener
{

    final a a;

    b(a a1)
    {
        a = a1;
        super();
    }

    public final void onCancel(DialogInterface dialoginterface)
    {
        a.cancel(true);
    }
}
