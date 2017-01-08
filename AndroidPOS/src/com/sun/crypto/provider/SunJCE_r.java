// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.sun.crypto.provider;

import java.security.InvalidKeyException;

// Referenced classes of package com.sun.crypto.provider:
//            SunJCE_e

final class SunJCE_r extends SunJCE_e
{

    private static final int a[] = {
        217, 120, 249, 196, 25, 221, 181, 237, 40, 233, 
        253, 121, 74, 160, 216, 157, 198, 126, 55, 131, 
        43, 118, 83, 142, 98, 76, 100, 136, 68, 139, 
        251, 162, 23, 154, 89, 245, 135, 179, 79, 19, 
        97, 69, 109, 141, 9, 129, 125, 50, 189, 143, 
        64, 235, 134, 183, 123, 11, 240, 149, 33, 34, 
        92, 107, 78, 130, 84, 214, 101, 147, 206, 96, 
        178, 28, 115, 86, 192, 20, 167, 140, 241, 220, 
        18, 117, 202, 31, 59, 190, 228, 209, 66, 61, 
        212, 48, 163, 60, 182, 38, 111, 191, 14, 218, 
        70, 105, 7, 87, 39, 242, 29, 155, 188, 148, 
        67, 3, 248, 17, 199, 246, 144, 239, 62, 231, 
        6, 195, 213, 47, 200, 102, 30, 215, 8, 232, 
        234, 222, 128, 82, 238, 247, 132, 170, 114, 172, 
        53, 77, 106, 42, 150, 26, 210, 113, 90, 21, 
        73, 116, 75, 159, 208, 94, 4, 24, 164, 236, 
        194, 224, 65, 110, 15, 81, 203, 204, 36, 145, 
        175, 80, 161, 244, 112, 57, 153, 124, 58, 133, 
        35, 184, 180, 122, 252, 2, 54, 91, 37, 85, 
        151, 49, 45, 93, 250, 152, 227, 138, 146, 174, 
        5, 223, 41, 16, 103, 108, 186, 201, 211, 0, 
        230, 207, 225, 158, 168, 44, 99, 22, 1, 63, 
        88, 226, 137, 169, 13, 56, 52, 27, 171, 51, 
        255, 176, 187, 72, 12, 95, 185, 177, 205, 46, 
        197, 243, 219, 71, 229, 165, 156, 119, 10, 166, 
        32, 104, 254, 127, 193, 173
    };
    private final int b[] = new int[64];
    private int c;

    SunJCE_r()
    {
    }

    static void a(String s, int i)
    {
        if (!s.equals("RC2"))
        {
            throw new InvalidKeyException("Key algorithm must be RC2");
        }
        if (i < 5 || i > 128)
        {
            throw new InvalidKeyException("RC2 key length must be between 40 and 1024 bit");
        } else
        {
            return;
        }
    }

    final int a()
    {
        return 8;
    }

    final void a(int i)
    {
        c = i;
    }

    final void a(boolean flag, String s, byte abyte0[])
    {
        int i = 0;
        int j = abyte0.length;
        if (c == 0)
        {
            c = j << 3;
        }
        a(s, j);
        byte abyte1[] = new byte[128];
        System.arraycopy(abyte0, 0, abyte1, 0, j);
        int k = abyte1[j - 1];
        for (int l = j; l < 128; l++)
        {
            k = a[0xff & k + abyte1[l - j]];
            abyte1[l] = (byte)k;
        }

        int i1 = 7 + c >> 3;
        int j1 = 255 >> (7 & -c);
        int k1 = a[j1 & abyte1[128 - i1]];
        abyte1[128 - i1] = (byte)k1;
        for (int l1 = 127 - i1; l1 >= 0; l1--)
        {
            k1 = a[k1 ^ 0xff & abyte1[l1 + i1]];
            abyte1[l1] = (byte)k1;
        }

        for (int i2 = 0; i2 < 64;)
        {
            int j2 = (0xff & abyte1[i]) + ((0xff & abyte1[i + 1]) << 8);
            b[i2] = j2;
            i2++;
            i += 2;
        }

    }

    final void a(byte abyte0[], int i, byte abyte1[], int j)
    {
        int k = 44;
        int l = 20;
        int i1 = (0xff & abyte0[i]) + ((0xff & abyte0[i + 1]) << 8);
        int j1 = (0xff & abyte0[i + 2]) + ((0xff & abyte0[i + 3]) << 8);
        int k1 = (0xff & abyte0[i + 4]) + ((0xff & abyte0[i + 5]) << 8);
        int l1 = (0xff & abyte0[i + 6]) + ((0xff & abyte0[i + 7]) << 8);
        for (int i2 = 0; i2 < l; i2 += 4)
        {
            int j6 = 0xffff & i1 + b[i2] + (l1 & k1) + (j1 & ~l1);
            i1 = j6 << 1 | j6 >>> 15;
            int k6 = 0xffff & j1 + b[i2 + 1] + (i1 & l1) + (k1 & ~i1);
            j1 = k6 << 2 | k6 >>> 14;
            int l6 = 0xffff & k1 + b[i2 + 2] + (j1 & i1) + (l1 & ~j1);
            k1 = l6 << 3 | l6 >>> 13;
            int i7 = 0xffff & l1 + b[i2 + 3] + (k1 & j1) + (i1 & ~k1);
            l1 = i7 << 5 | i7 >>> 11;
        }

        int j2 = i1 + b[l1 & 0x3f];
        int k2 = j1 + b[j2 & 0x3f];
        int l2 = k1 + b[k2 & 0x3f];
        int i3 = l1 + b[l2 & 0x3f];
        for (; l < k; l += 4)
        {
            int j5 = 0xffff & j2 + b[l] + (i3 & l2) + (k2 & ~i3);
            j2 = j5 << 1 | j5 >>> 15;
            int k5 = 0xffff & k2 + b[l + 1] + (j2 & i3) + (l2 & ~j2);
            k2 = k5 << 2 | k5 >>> 14;
            int l5 = 0xffff & l2 + b[l + 2] + (k2 & j2) + (i3 & ~k2);
            l2 = l5 << 3 | l5 >>> 13;
            int i6 = 0xffff & i3 + b[l + 3] + (l2 & k2) + (j2 & ~l2);
            i3 = i6 << 5 | i6 >>> 11;
        }

        int j3 = j2 + b[i3 & 0x3f];
        int k3 = k2 + b[j3 & 0x3f];
        int l3 = l2 + b[k3 & 0x3f];
        int i4 = i3 + b[l3 & 0x3f];
        for (; k < 64; k += 4)
        {
            int j4 = 0xffff & j3 + b[k] + (i4 & l3) + (k3 & ~i4);
            j3 = j4 << 1 | j4 >>> 15;
            int k4 = 0xffff & k3 + b[k + 1] + (j3 & i4) + (l3 & ~j3);
            k3 = k4 << 2 | k4 >>> 14;
            int l4 = 0xffff & l3 + b[k + 2] + (k3 & j3) + (i4 & ~k3);
            l3 = l4 << 3 | l4 >>> 13;
            int i5 = 0xffff & i4 + b[k + 3] + (l3 & k3) + (j3 & ~l3);
            i4 = i5 << 5 | i5 >>> 11;
        }

        abyte1[j] = (byte)j3;
        abyte1[j + 1] = (byte)(j3 >> 8);
        abyte1[j + 2] = (byte)k3;
        abyte1[j + 3] = (byte)(k3 >> 8);
        abyte1[j + 4] = (byte)l3;
        abyte1[j + 5] = (byte)(l3 >> 8);
        abyte1[j + 6] = (byte)i4;
        abyte1[j + 7] = (byte)(i4 >> 8);
    }

    final int b()
    {
        return c;
    }

    final void b(byte abyte0[], int i, byte abyte1[], int j)
    {
        int k = 44;
        int l = 20;
        int i1 = (0xff & abyte0[i]) + ((0xff & abyte0[i + 1]) << 8);
        int j1 = (0xff & abyte0[i + 2]) + ((0xff & abyte0[i + 3]) << 8);
        int k1 = (0xff & abyte0[i + 4]) + ((0xff & abyte0[i + 5]) << 8);
        int l1 = (0xff & abyte0[i + 6]) + ((0xff & abyte0[i + 7]) << 8);
        for (int i2 = 64; i2 > k; i2 -= 4)
        {
            l1 = 0xffff & (0xffff & (l1 << 11 | l1 >>> 5)) - b[i2 - 1] - (k1 & j1) - (i1 & ~k1);
            k1 = 0xffff & (0xffff & (k1 << 13 | k1 >>> 3)) - b[i2 - 2] - (j1 & i1) - (l1 & ~j1);
            j1 = 0xffff & (0xffff & (j1 << 14 | j1 >>> 2)) - b[i2 - 3] - (i1 & l1) - (k1 & ~i1);
            i1 = 0xffff & (0xffff & (i1 << 15 | i1 >>> 1)) - b[i2 - 4] - (l1 & k1) - (j1 & ~l1);
        }

        int j2 = 0xffff & l1 - b[k1 & 0x3f];
        int k2 = 0xffff & k1 - b[j1 & 0x3f];
        int l2 = 0xffff & j1 - b[i1 & 0x3f];
        int i3 = 0xffff & i1 - b[j2 & 0x3f];
        for (; k > l; k -= 4)
        {
            j2 = 0xffff & (0xffff & (j2 << 11 | j2 >>> 5)) - b[k - 1] - (k2 & l2) - (i3 & ~k2);
            k2 = 0xffff & (0xffff & (k2 << 13 | k2 >>> 3)) - b[k - 2] - (l2 & i3) - (j2 & ~l2);
            l2 = 0xffff & (0xffff & (l2 << 14 | l2 >>> 2)) - b[k - 3] - (i3 & j2) - (k2 & ~i3);
            i3 = 0xffff & (0xffff & (i3 << 15 | i3 >>> 1)) - b[k - 4] - (j2 & k2) - (l2 & ~j2);
        }

        int j3 = 0xffff & j2 - b[k2 & 0x3f];
        int k3 = 0xffff & k2 - b[l2 & 0x3f];
        int l3 = 0xffff & l2 - b[i3 & 0x3f];
        int i4 = 0xffff & i3 - b[j3 & 0x3f];
        for (; l > 0; l -= 4)
        {
            j3 = 0xffff & (0xffff & (j3 << 11 | j3 >>> 5)) - b[l - 1] - (k3 & l3) - (i4 & ~k3);
            k3 = 0xffff & (0xffff & (k3 << 13 | k3 >>> 3)) - b[l - 2] - (l3 & i4) - (j3 & ~l3);
            l3 = 0xffff & (0xffff & (l3 << 14 | l3 >>> 2)) - b[l - 3] - (i4 & j3) - (k3 & ~i4);
            i4 = 0xffff & (0xffff & (i4 << 15 | i4 >>> 1)) - b[l - 4] - (j3 & k3) - (l3 & ~j3);
        }

        abyte1[j] = (byte)i4;
        abyte1[j + 1] = (byte)(i4 >> 8);
        abyte1[j + 2] = (byte)l3;
        abyte1[j + 3] = (byte)(l3 >> 8);
        abyte1[j + 4] = (byte)k3;
        abyte1[j + 5] = (byte)(k3 >> 8);
        abyte1[j + 6] = (byte)j3;
        abyte1[j + 7] = (byte)(j3 >> 8);
    }

}
