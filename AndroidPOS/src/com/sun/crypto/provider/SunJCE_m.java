// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.sun.crypto.provider;

import java.security.InvalidKeyException;

// Referenced classes of package com.sun.crypto.provider:
//            SunJCE_h, SunJCE_e

final class SunJCE_m extends SunJCE_h
{

    private final byte a[];
    private final byte b[];
    private int c;
    private byte d[];
    private byte e[];
    private int f;

    SunJCE_m(SunJCE_e sunjce_e)
    {
        super(sunjce_e);
        d = null;
        e = null;
        f = 0;
        a = new byte[super.b];
        b = new byte[super.b];
    }

    private static void a(byte abyte0[])
    {
        int i = -1 + abyte0.length;
        do
        {
            if (i < 0)
            {
                break;
            }
            byte byte0 = (byte)(1 + abyte0[i]);
            abyte0[i] = byte0;
            if (byte0 != 0)
            {
                break;
            }
            i--;
        } while (true);
    }

    private void e(byte abyte0[], int i, int j, byte abyte1[], int k)
    {
        do
        {
            int l = j - 1;
            if (j > 0)
            {
                if (c >= super.b)
                {
                    super.a.a(a, 0, b, 0);
                    a(a);
                    c = 0;
                }
                int i1 = k + 1;
                int j1 = i + 1;
                byte byte0 = abyte0[i];
                byte abyte2[] = b;
                int k1 = c;
                c = k1 + 1;
                abyte1[k] = (byte)(byte0 ^ abyte2[k1]);
                k = i1;
                j = l;
                i = j1;
            } else
            {
                return;
            }
        } while (true);
    }

    final String a()
    {
        return "CTR";
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
        e(abyte0, i, j, abyte1, k);
    }

    final void b()
    {
        System.arraycopy(super.c, 0, a, 0, super.b);
        c = super.b;
    }

    final void b(byte abyte0[], int i, int j, byte abyte1[], int k)
    {
        e(abyte0, i, j, abyte1, k);
    }

    final void c()
    {
        if (d == null)
        {
            d = new byte[super.b];
            e = new byte[super.b];
        }
        System.arraycopy(a, 0, d, 0, super.b);
        System.arraycopy(b, 0, e, 0, super.b);
        f = c;
    }

    final void d()
    {
        System.arraycopy(d, 0, a, 0, super.b);
        System.arraycopy(e, 0, b, 0, super.b);
        c = f;
    }
}
