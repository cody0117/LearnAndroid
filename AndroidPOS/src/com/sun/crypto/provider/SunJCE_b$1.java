// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.sun.crypto.provider;

import java.net.JarURLConnection;
import java.net.URL;
import java.security.PrivilegedExceptionAction;

// Referenced classes of package com.sun.crypto.provider:
//            SunJCE_b

final class a
    implements PrivilegedExceptionAction
{

    final URL a;
    final SunJCE_b b;

    public final Object run()
    {
        JarURLConnection jarurlconnection = (JarURLConnection)a.openConnection();
        jarurlconnection.setUseCaches(false);
        return jarurlconnection.getJarFile();
    }

    tion(SunJCE_b sunjce_b, URL url)
    {
        b = sunjce_b;
        a = url;
        super();
    }
}
