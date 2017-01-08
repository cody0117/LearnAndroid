// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.sun.crypto.provider;

import java.security.InvalidKeyException;

// Referenced classes of package com.sun.crypto.provider:
//            SunJCE_h, SunJCE_e

final class SunJCE_o extends SunJCE_h
{

    private byte a[];
    private byte b[];
    private int c;
    private byte d[];

    SunJCE_o(SunJCE_e sunjce_e, int i)
    {
        super(sunjce_e);
        a = null;
        b = null;
        d = null;
        if (i > super.b)
        {
            i = super.b;
        }
        c = i;
        a = new byte[super.b];
        b = new byte[super.b];
    }

    final String a()
    {
        return "OFB";
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
            super.a.a(false, s, abyte0);
            return;
        }
    }

    final void a(byte abyte0[], int i, int j, byte abyte1[], int k)
    {
        int l;
        int i1;
        int j1;
        l = super.b - c;
        i1 = j / c;
        j1 = j % c;
        if (l != 0)
        {
            break MISSING_BLOCK_LABEL_433;
        }
        for (int j2 = i1; j2 > 0; j2--)
        {
            super.a.a(b, 0, a, 0);
            for (int l2 = 0; l2 < c; l2++)
            {
                abyte1[l2 + k] = (byte)(a[l2] ^ abyte0[l2 + i]);
            }

            System.arraycopy(a, 0, b, 0, c);
            i += c;
            k += c;
        }

        if (j1 > 0)
        {
            super.a.a(b, 0, a, 0);
            for (int k2 = 0; k2 < j1; k2++)
            {
                abyte1[k2 + k] = (byte)(a[k2] ^ abyte0[k2 + i]);
            }

            System.arraycopy(a, 0, b, 0, c);
        }
_L4:
        return;
_L2:
        int k1;
        System.arraycopy(b, c, b, 0, l);
        System.arraycopy(a, 0, b, l, c);
        i += c;
        k += c;
        k1--;
_L5:
        if (k1 <= 0)
        {
            continue; /* Loop/switch isn't completed */
        }
        super.a.a(b, 0, a, 0);
        int i2 = 0;
        while (i2 < c) 
        {
            abyte1[i2 + k] = (byte)(a[i2] ^ abyte0[i2 + i]);
            i2++;
        }
        if (true) goto _L2; else goto _L1
_L1:
        if (j1 <= 0) goto _L4; else goto _L3
_L3:
        super.a.a(b, 0, a, 0);
        for (int l1 = 0; l1 < j1; l1++)
        {
            abyte1[l1 + k] = (byte)(a[l1] ^ abyte0[l1 + i]);
        }

        System.arraycopy(b, c, b, 0, l);
        System.arraycopy(a, 0, b, l, c);
        return;
        k1 = i1;
          goto _L5
    }

    final void b()
    {
        System.arraycopy(super.c, 0, b, 0, super.b);
    }

    final void b(byte abyte0[], int i, int j, byte abyte1[], int k)
    {
        a(abyte0, i, j, abyte1, k);
    }

    final void c()
    {
        if (d == null)
        {
            d = new byte[super.b];
        }
        System.arraycopy(b, 0, d, 0, super.b);
    }

    final void d()
    {
        System.arraycopy(d, 0, b, 0, super.b);
    }
}
