// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.drive.metadata.internal;

import java.util.HashMap;
import java.util.Map;

// Referenced classes of package com.google.android.gms.drive.metadata.internal:
//            AppVisibleCustomProperties

public final class a
{

    private final Map a = new HashMap();

    public a()
    {
    }

    public final AppVisibleCustomProperties a()
    {
        return new AppVisibleCustomProperties(a.values(), (byte)0);
    }
}
