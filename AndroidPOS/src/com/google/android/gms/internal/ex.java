// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.content.DialogInterface;
import org.json.JSONObject;

// Referenced classes of package com.google.android.gms.internal:
//            ev, mg

final class ex
    implements android.content.DialogInterface.OnClickListener
{

    final ev a;

    ex(ev ev1)
    {
        a = ev1;
        super();
    }

    public final void onClick(DialogInterface dialoginterface, int i)
    {
        ev.b(a).b("onCalendarEventCanceled", new JSONObject());
    }
}
