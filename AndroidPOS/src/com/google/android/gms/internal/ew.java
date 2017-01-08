// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.content.Context;
import android.content.DialogInterface;

// Referenced classes of package com.google.android.gms.internal:
//            ev

final class ew
    implements android.content.DialogInterface.OnClickListener
{

    final ev a;

    ew(ev ev1)
    {
        a = ev1;
        super();
    }

    public final void onClick(DialogInterface dialoginterface, int i)
    {
        android.content.Intent intent = a.b();
        ev.a(a).startActivity(intent);
    }
}
