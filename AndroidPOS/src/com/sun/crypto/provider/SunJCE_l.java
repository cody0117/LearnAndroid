// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.sun.crypto.provider;

import javax.crypto.IllegalBlockSizeException;

// Referenced classes of package com.sun.crypto.provider:
//            SunJCE_k, SunJCE_h, SunJCE_e

final class SunJCE_l extends SunJCE_k
{

    SunJCE_l(SunJCE_e sunjce_e)
    {
        super(sunjce_e);
    }

    final String a()
    {
        return "CTS";
    }

    final void c(byte abyte0[], int i, int j, byte abyte1[], int k)
    {
        if (j < super.b)
        {
            throw new IllegalBlockSizeException("input is too short!");
        }
        if (j == super.b)
        {
            a(abyte0, i, j, abyte1, k);
            return;
        }
        int l = j % super.b;
        if (l == 0)
        {
            a(abyte0, i, j, abyte1, k);
            int l1 = (k + j) - super.b;
            int i2 = l1 - super.b;
            byte abyte4[] = new byte[super.b];
            System.arraycopy(abyte1, l1, abyte4, 0, super.b);
            System.arraycopy(abyte1, i2, abyte1, l1, super.b);
            System.arraycopy(abyte4, 0, abyte1, i2, super.b);
            return;
        }
        int i1 = j - (l + super.b);
        if (i1 > 0)
        {
            a(abyte0, i, i1, abyte1, k);
            i += i1;
            k += i1;
        }
        byte abyte2[] = new byte[super.b];
        for (int j1 = 0; j1 < super.b; j1++)
        {
            abyte2[j1] = (byte)(abyte0[i + j1] ^ super.a[j1]);
        }

        byte abyte3[] = new byte[super.b];
        super.a.a(abyte2, 0, abyte3, 0);
        System.arraycopy(abyte3, 0, abyte1, k + super.b, l);
        for (int k1 = 0; k1 < l; k1++)
        {
            abyte3[k1] = (byte)(abyte0[k1 + (i + super.b)] ^ abyte3[k1]);
        }

        super.a.a(abyte3, 0, abyte1, k);
    }

    final void d(byte abyte0[], int i, int j, byte abyte1[], int k)
    {
        if (j < super.b)
        {
            throw new IllegalBlockSizeException("input is too short!");
        }
        if (j == super.b)
        {
            b(abyte0, i, j, abyte1, k);
        } else
        {
            int l = j % super.b;
            if (l == 0)
            {
                int l1 = (i + j) - super.b;
                int i2 = (i + j) - 2 * super.b;
                byte abyte3[] = new byte[2 * super.b];
                System.arraycopy(abyte0, l1, abyte3, 0, super.b);
                System.arraycopy(abyte0, i2, abyte3, super.b, super.b);
                int j2 = j - 2 * super.b;
                b(abyte0, i, j2, abyte1, k);
                b(abyte3, 0, 2 * super.b, abyte1, k + j2);
                return;
            }
            int i1 = j - (l + super.b);
            if (i1 > 0)
            {
                b(abyte0, i, i1, abyte1, k);
                i += i1;
                k += i1;
            }
            byte abyte2[] = new byte[super.b];
            super.a.b(abyte0, i, abyte2, 0);
            for (int j1 = 0; j1 < l; j1++)
            {
                abyte1[j1 + (k + super.b)] = (byte)(abyte0[j1 + (i + super.b)] ^ abyte2[j1]);
            }

            System.arraycopy(abyte0, i + super.b, abyte2, 0, l);
            super.a.b(abyte2, 0, abyte1, k);
            int k1 = 0;
            while (k1 < super.b) 
            {
                abyte1[k + k1] = (byte)(abyte1[k + k1] ^ super.a[k1]);
                k1++;
            }
        }
    }
}
