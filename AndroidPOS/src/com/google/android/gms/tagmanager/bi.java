// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.el;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;

// Referenced classes of package com.google.android.gms.tagmanager:
//            ah, bg, x

final class bi
{

    private static ah a(ah ah1)
    {
        ah ah2;
        try
        {
            ah2 = new ah(bg.a(URLEncoder.encode(bg.a((el)ah1.a()), "UTF-8").replaceAll("\\+", "%20")), ah1.b());
        }
        catch (UnsupportedEncodingException unsupportedencodingexception)
        {
            x.b();
            return ah1;
        }
        return ah2;
    }

    static transient ah a(ah ah1, int ai[])
    {
        int i;
        int j;
        ah ah2;
        i = ai.length;
        j = 0;
        ah2 = ah1;
_L5:
        if (j >= i) goto _L2; else goto _L1
_L1:
        int k = ai[j];
        if (bg.c((el)ah2.a()) instanceof String) goto _L4; else goto _L3
_L3:
        ah ah3;
        x.a();
        ah3 = ah2;
_L7:
        j++;
        ah2 = ah3;
          goto _L5
_L4:
        switch (k)
        {
        default:
            (new StringBuilder("Unsupported Value Escaping: ")).append(k);
            x.a();
            ah3 = ah2;
            break;

        case 12: // '\f'
            ah3 = a(ah2);
            break;
        }
        continue; /* Loop/switch isn't completed */
_L2:
        return ah2;
        if (true) goto _L7; else goto _L6
_L6:
    }
}
