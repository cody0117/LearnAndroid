// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.net.Uri;
import java.util.Map;

// Referenced classes of package com.google.android.gms.internal:
//            cz, qn, mg, qa, 
//            md, gs

final class ct
    implements cz
{

    ct()
    {
    }

    public final void a(mg mg1, Map map)
    {
        String s;
        Uri uri;
        s = (String)map.get("u");
        if (s == null)
        {
            return;
        }
        uri = Uri.parse(s);
        qa qa1 = mg1.h();
        if (qa1 == null) goto _L2; else goto _L1
_L1:
        if (!qa1.a(uri)) goto _L2; else goto _L3
_L3:
        Uri uri2 = qa1.a(uri, mg1.getContext());
        Uri uri1 = uri2;
_L5:
        String s1 = uri1.toString();
        (new md(mg1.getContext(), mg1.i().b, s1)).e();
        return;
        qn qn1;
        qn1;
        (new StringBuilder("Unable to append parameter to URL: ")).append(s);
_L2:
        uri1 = uri;
        if (true) goto _L5; else goto _L4
_L4:
    }
}
