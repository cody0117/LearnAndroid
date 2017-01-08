// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.sun.crypto.provider;

import java.security.InvalidKeyException;

// Referenced classes of package com.sun.crypto.provider:
//            SunJCE_h, SunJCE_e

final class SunJCE_g extends SunJCE_h
{

    SunJCE_g(SunJCE_e sunjce_e)
    {
        super(sunjce_e);
    }

    final String a()
    {
        return "ECB";
    }

    final void a(boolean flag, String s, byte abyte0[], byte abyte1[])
    {
        if (abyte0 == null || abyte1 != null)
        {
            throw new InvalidKeyException("Internal error");
        } else
        {
            super.a.a(flag, s, abyte0);
            return;
        }
    }

    final void a(byte abyte0[], int i, int j, byte abyte1[], int k)
    {
        while (j >= super.b) 
        {
            super.a.a(abyte0, i, abyte1, k);
            j -= super.b;
            i += super.b;
            k += super.b;
        }
    }

    final void b()
    {
    }

    final void b(byte abyte0[], int i, int j, byte abyte1[], int k)
    {
        while (j >= super.b) 
        {
            super.a.b(abyte0, i, abyte1, k);
            j -= super.b;
            i += super.b;
            k += super.b;
        }
    }

    final void c()
    {
    }

    final void d()
    {
    }
}
