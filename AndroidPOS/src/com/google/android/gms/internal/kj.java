// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;


// Referenced classes of package com.google.android.gms.internal:
//            mk, mg

final class kj
    implements mk
{

    final String a;

    kj(String s)
    {
        a = s;
        super();
    }

    public final void a(mg mg1)
    {
        Object aobj[] = new Object[2];
        aobj[0] = "AFMA_buildAdURL";
        aobj[1] = a;
        String s = String.format("javascript:%s(%s);", aobj);
        (new StringBuilder("About to execute: ")).append(s);
        mg1.loadUrl(s);
    }
}
