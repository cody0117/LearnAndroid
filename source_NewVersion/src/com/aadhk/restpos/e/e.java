// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.e;


public final class e
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
                    return 0x7f0901fd;
                }
                if (s.contains("Network is unreachable"))
                {
                    return 0x7f0901fe;
                }
                if (s.contains("Connection reset by peer"))
                {
                    return 0x7f090200;
                }
                if (s.contains("Connection refused"))
                {
                    return 0x7f0901ff;
                }
                if (s.contains("ConnectTimeoutException"))
                {
                    return 0x7f090201;
                }
                if (s.contains("SocketTimeoutException"))
                {
                    return 0x7f090202;
                }
                if (s.contains("SocketTimeoutException"))
                {
                    return 0x7f09016a;
                }
            } else
            {
                return 0x7f0901fc;
            }
        } while (true);
    }
}
