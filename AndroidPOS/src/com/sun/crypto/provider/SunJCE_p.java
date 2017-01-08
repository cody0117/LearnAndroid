// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.sun.crypto.provider;

import java.security.InvalidKeyException;

// Referenced classes of package com.sun.crypto.provider:
//            SunJCE_h, SunJCE_e

final class SunJCE_p extends SunJCE_h
{

    private final byte a[];
    private byte b[];

    SunJCE_p(SunJCE_e sunjce_e)
    {
        super(sunjce_e);
        b = null;
        a = new byte[super.b];
    }

    final String a()
    {
        return "PCBC";
    }

    final void a(boolean flag, String s, byte abyte0[], byte abyte1[])
    {
        if (abyte0 == null || abyte1 == null || abyte1.length != super.b)
        {
            throw new InvalidKeyException("Internal error");
        } else
        {
            super.c = abyte1;
            b();
            super.a.a(flag, s, abyte0);
            return;
        }
    }

    final void a(byte abyte0[], int i, int j, byte abyte1[], int k)
    {
        for (int l = i + j; i < l;)
        {
            for (int i1 = 0; i1 < super.b; i1++)
            {
                byte abyte2[] = a;
                abyte2[i1] = (byte)(abyte2[i1] ^ abyte0[i1 + i]);
            }

            super.a.a(a, 0, abyte1, k);
            for (int j1 = 0; j1 < super.b; j1++)
            {
                a[j1] = (byte)(abyte0[j1 + i] ^ abyte1[j1 + k]);
            }

            i += super.b;
            k += super.b;
        }

    }

    final void b()
    {
        System.arraycopy(super.c, 0, a, 0, super.b);
    }

    final void b(byte abyte0[], int i, int j, byte abyte1[], int k)
    {
        for (int l = i + j; i < l; i += super.b)
        {
            super.a.b(abyte0, i, abyte1, k);
            for (int i1 = 0; i1 < super.b; i1++)
            {
                int k1 = i1 + k;
                abyte1[k1] = (byte)(abyte1[k1] ^ a[i1]);
            }

            for (int j1 = 0; j1 < super.b; j1++)
            {
                a[j1] = (byte)(abyte1[j1 + k] ^ abyte0[j1 + i]);
            }

            k += super.b;
        }

    }

    final void c()
    {
        if (b == null)
        {
            b = new byte[super.b];
        }
        System.arraycopy(a, 0, b, 0, super.b);
    }

    final void d()
    {
        System.arraycopy(b, 0, a, 0, super.b);
    }
}
