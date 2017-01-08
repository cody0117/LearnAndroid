// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import java.util.concurrent.Future;

// Referenced classes of package com.google.android.gms.internal:
//            ma, mb, lm, mc

public final class lz
{

    public static final mc a = new ma();

    public lz()
    {
    }

    public final Future a(String s, mc mc)
    {
        return lm.a(new mb(this, s, mc));
    }

}
