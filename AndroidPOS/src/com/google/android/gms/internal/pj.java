// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.util.Log;

// Referenced classes of package com.google.android.gms.internal:
//            px

public final class pj
{

    private final String a;

    public pj(String s)
    {
        a = (String)px.a(s);
    }

    public final boolean a()
    {
        return Log.isLoggable(a, 5);
    }
}
