// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.sun.crypto.provider;

import java.security.InvalidKeyException;

// Referenced classes of package com.sun.crypto.provider:
//            SunJCE_h, SunJCE_e

class SunJCE_k extends SunJCE_h
{

    protected byte a[];
    private byte b[];
    private byte c[];

    SunJCE_k(SunJCE_e sunjce_e)
    {
        super(sunjce_e);
        c = null;
        b = new byte[super.b];
        a = new byte[super.b];
    }

    String a()
    {
        return "CBC";
    }

    void a(boolean flag, String s, byte abyte0[], byte abyte1[])
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

    void a(byte abyte0[], int i, int j, byte abyte1[], int k)
    {
        for (int l = i + j; i < l;)
        {
            for (int i1 = 0; i1 < super.b; i1++)
            {
                b[i1] = (byte)(abyte0[i1 + i] ^ a[i1]);
            }

            super.a.a(b, 0, abyte1, k);
            System.arraycopy(abyte1, k, a, 0, super.b);
            i += super.b;
            k += super.b;
        }

    }

    void b()
    {
        System.arraycopy(super.c, 0, a, 0, super.b);
    }

    void b(byte abyte0[], int i, int j, byte abyte1[], int k)
    {
        int l = i + j;
        byte abyte2[];
        if (abyte0 == abyte1 && i >= k && i - k < super.b)
        {
            abyte2 = (byte[])abyte0.clone();
        } else
        {
            abyte2 = null;
        }
        while (i < l) 
        {
            super.a.b(abyte0, i, b, 0);
            for (int i1 = 0; i1 < super.b; i1++)
            {
                abyte1[i1 + k] = (byte)(b[i1] ^ a[i1]);
            }

            if (abyte2 == null)
            {
                System.arraycopy(abyte0, i, a, 0, super.b);
            } else
            {
                System.arraycopy(abyte2, i, a, 0, super.b);
            }
            i += super.b;
            k += super.b;
        }
    }

    void c()
    {
        if (c == null)
        {
            c = new byte[super.b];
        }
        System.arraycopy(a, 0, c, 0, super.b);
    }

    void d()
    {
        System.arraycopy(c, 0, a, 0, super.b);
    }
}
