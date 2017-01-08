// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.sun.crypto.provider;

import java.security.InvalidKeyException;

// Referenced classes of package com.sun.crypto.provider:
//            SunJCE_h, SunJCE_e

final class SunJCE_n extends SunJCE_h
{

    private final byte a[];
    private final byte b[];
    private int c;
    private byte d[];

    SunJCE_n(SunJCE_e sunjce_e, int i)
    {
        super(sunjce_e);
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
        return "CFB";
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
        int k1;
        l = 0;
        i1 = super.b - c;
        j1 = j / c;
        k1 = j % c;
        if (i1 != 0)
        {
            break MISSING_BLOCK_LABEL_457;
        }
        for (int j3 = j1; j3 > 0; j3--)
        {
            super.a.a(b, 0, a, 0);
            for (int l3 = 0; l3 < super.b; l3++)
            {
                byte abyte5[] = b;
                int i4 = l3 + k;
                byte byte3 = (byte)(a[l3] ^ abyte0[l3 + i]);
                abyte1[i4] = byte3;
                abyte5[l3] = byte3;
            }

            i += c;
            k += c;
        }

        if (k1 > 0)
        {
            super.a.a(b, 0, a, 0);
            for (; l < k1; l++)
            {
                byte abyte4[] = b;
                int k3 = l + k;
                byte byte2 = (byte)(a[l] ^ abyte0[l + i]);
                abyte1[k3] = byte2;
                abyte4[l] = byte2;
            }

        }
        break MISSING_BLOCK_LABEL_456;
        while (true) 
        {
label0:
            {
                i += c;
                k += c;
                int l1;
                byte abyte2[];
                int i2;
                int j2;
                byte byte0;
                int k2;
                byte abyte3[];
                int l2;
                int i3;
                byte byte1;
                for (l1--; l1 <= 0; l1 = j1)
                {
                    break label0;
                }

                super.a.a(b, 0, a, 0);
                System.arraycopy(b, c, b, 0, i1);
                k2 = 0;
                while (k2 < c) 
                {
                    abyte3 = b;
                    l2 = k2 + i1;
                    i3 = k2 + k;
                    byte1 = (byte)(a[k2] ^ abyte0[k2 + i]);
                    abyte1[i3] = byte1;
                    abyte3[l2] = byte1;
                    k2++;
                }
            }
        }
        if (k1 != 0)
        {
            super.a.a(b, 0, a, 0);
            System.arraycopy(b, c, b, 0, i1);
            for (; l < k1; l++)
            {
                abyte2 = b;
                i2 = l + i1;
                j2 = l + k;
                byte0 = (byte)(a[l] ^ abyte0[l + i]);
                abyte1[j2] = byte0;
                abyte2[i2] = byte0;
            }

        }
    }

    final void b()
    {
        System.arraycopy(super.c, 0, b, 0, super.b);
    }

    final void b(byte abyte0[], int i, int j, byte abyte1[], int k)
    {
        int l;
        int i1;
        int j1;
        int k1;
        l = 0;
        i1 = super.b - c;
        j1 = j / c;
        k1 = j % c;
        if (i1 != 0)
        {
            break MISSING_BLOCK_LABEL_417;
        }
        for (int j2 = j1; j2 > 0; j2--)
        {
            super.a.a(b, 0, a, 0);
            for (int k2 = 0; k2 < super.b; k2++)
            {
                b[k2] = abyte0[k2 + i];
                abyte1[k2 + k] = (byte)(abyte0[k2 + i] ^ a[k2]);
            }

            k += c;
            i += c;
        }

        if (k1 > 0)
        {
            super.a.a(b, 0, a, 0);
            for (; l < k1; l++)
            {
                b[l] = abyte0[l + i];
                abyte1[l + k] = (byte)(abyte0[l + i] ^ a[l]);
            }

        }
        break MISSING_BLOCK_LABEL_416;
        while (true) 
        {
label0:
            {
                k += c;
                i += c;
                int l1;
                int i2;
                for (l1--; l1 <= 0; l1 = j1)
                {
                    break label0;
                }

                super.a.a(b, 0, a, 0);
                System.arraycopy(b, c, b, 0, i1);
                i2 = 0;
                while (i2 < c) 
                {
                    b[i2 + i1] = abyte0[i2 + i];
                    abyte1[i2 + k] = (byte)(abyte0[i2 + i] ^ a[i2]);
                    i2++;
                }
            }
        }
        if (k1 != 0)
        {
            super.a.a(b, 0, a, 0);
            System.arraycopy(b, c, b, 0, i1);
            for (; l < k1; l++)
            {
                b[l + i1] = abyte0[l + i];
                abyte1[l + k] = (byte)(abyte0[l + i] ^ a[l]);
            }

        }
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
