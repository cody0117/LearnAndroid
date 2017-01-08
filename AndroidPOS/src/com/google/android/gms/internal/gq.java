// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.content.Intent;
import android.text.TextUtils;

// Referenced classes of package com.google.android.gms.internal:
//            go, gr

public final class gq
{

    private final String a;

    public gq(String s)
    {
        a = s;
    }

    public final boolean a(String s, Intent intent)
    {
        if (s != null && intent != null) goto _L2; else goto _L1
_L1:
        return false;
_L2:
        String s1;
        Object obj;
        s1 = go.b(intent);
        if (intent == null)
        {
            obj = null;
        } else
        {
            obj = intent.getStringExtra("INAPP_DATA_SIGNATURE");
        }
        if (s1 == null || obj == null || !s.equals(go.a(s1))) goto _L1; else goto _L3
_L3:
        if (a == null)
        {
            break; /* Loop/switch isn't completed */
        }
        String s2 = a;
        boolean flag;
        if (TextUtils.isEmpty(s1) || TextUtils.isEmpty(s2) || TextUtils.isEmpty(((CharSequence) (obj))))
        {
            flag = false;
        } else
        {
            flag = gr.a(gr.a(s2), s1, ((String) (obj)));
        }
        if (!flag) goto _L1; else goto _L4
_L4:
        return true;
    }
}
