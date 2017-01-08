// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.tagmanager;

import android.net.Uri;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;

// Referenced classes of package com.google.android.gms.tagmanager:
//            aj, x

class ai
{

    private static ai a;
    private volatile aj b;
    private volatile String c;
    private volatile String d;
    private volatile String e;

    ai()
    {
        b = aj.a;
        d = null;
        c = null;
        e = null;
    }

    static ai a()
    {
        com/google/android/gms/tagmanager/ai;
        JVM INSTR monitorenter ;
        ai ai1;
        if (a == null)
        {
            a = new ai();
        }
        ai1 = a;
        com/google/android/gms/tagmanager/ai;
        JVM INSTR monitorexit ;
        return ai1;
        Exception exception;
        exception;
        throw exception;
    }

    private static String a(String s)
    {
        return s.split("&")[0].split("=")[1];
    }

    final boolean a(Uri uri)
    {
        boolean flag = true;
        this;
        JVM INSTR monitorenter ;
        String s = URLDecoder.decode(uri.toString(), "UTF-8");
        if (!s.matches("^tagmanager.c.\\S+:\\/\\/preview\\/p\\?id=\\S+&gtm_auth=\\S+&gtm_preview=\\d+(&gtm_debug=x)?$")) goto _L2; else goto _L1
_L1:
        (new StringBuilder("Container preview url: ")).append(s);
        x.e();
        if (!s.matches(".*?&gtm_debug=x$")) goto _L4; else goto _L3
_L3:
        b = aj.c;
_L6:
        e = uri.getQuery().replace("&gtm_debug=x", "");
        if (b == aj.b || b == aj.c)
        {
            d = (new StringBuilder("/r?")).append(e).toString();
        }
        c = a(e);
_L5:
        this;
        JVM INSTR monitorexit ;
        return flag;
        UnsupportedEncodingException unsupportedencodingexception;
        unsupportedencodingexception;
        flag = false;
          goto _L5
_L4:
        b = aj.b;
          goto _L6
        Exception exception;
        exception;
        throw exception;
_L2:
label0:
        {
            if (!s.matches("^tagmanager.c.\\S+:\\/\\/preview\\/p\\?id=\\S+&gtm_preview=$"))
            {
                break label0;
            }
            if (!a(uri.getQuery()).equals(c))
            {
                break MISSING_BLOCK_LABEL_240;
            }
            (new StringBuilder("Exit preview mode for container: ")).append(c);
            x.e();
            b = aj.a;
            d = null;
        }
          goto _L5
        (new StringBuilder("Invalid preview uri: ")).append(s);
        x.c();
        flag = false;
          goto _L5
        flag = false;
          goto _L5
    }

    final aj b()
    {
        return b;
    }

    final String c()
    {
        return d;
    }

    final String d()
    {
        return c;
    }
}
