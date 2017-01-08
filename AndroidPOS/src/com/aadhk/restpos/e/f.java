// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.e;


public final class f
{

    public static int a(Throwable throwable)
    {
        int i = 0;
        do
        {
            throwable = throwable.getCause();
            if (throwable != null && i < 5)
            {
                i++;
                String s = throwable.toString();
                if (s.contains("No route to host"))
                {
                    return 0x7f08023b;
                }
                if (s.contains("Network is unreachable"))
                {
                    return 0x7f08023c;
                }
                if (s.contains("Connection reset by peer"))
                {
                    return 0x7f08023e;
                }
                if (s.contains("Connection refused"))
                {
                    return 0x7f08023d;
                }
                if (s.contains("ConnectTimeoutException"))
                {
                    return 0x7f08023f;
                }
                if (s.contains("SocketTimeoutException"))
                {
                    return 0x7f080240;
                }
                if (s.contains("SocketTimeoutException"))
                {
                    return 0x7f080199;
                }
            } else
            {
                return 0x7f08023a;
            }
        } while (true);
    }
}
