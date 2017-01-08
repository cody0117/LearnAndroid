// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.content.DialogInterface;
import org.json.JSONObject;

// Referenced classes of package com.google.android.gms.internal:
//            ez, mg

final class fb
    implements android.content.DialogInterface.OnClickListener
{

    final ez a;

    fb(ez ez1)
    {
        a = ez1;
        super();
    }

    public final void onClick(DialogInterface dialoginterface, int i)
    {
        ez.b(a).b("onStorePictureCanceled", new JSONObject());
    }
}
