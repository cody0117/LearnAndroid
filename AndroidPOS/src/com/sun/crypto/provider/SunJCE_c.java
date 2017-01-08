// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.sun.crypto.provider;

import java.lang.reflect.Array;
import java.security.InvalidKeyException;

// Referenced classes of package com.sun.crypto.provider:
//            SunJCE_e, SunJCE_d

final class SunJCE_c extends SunJCE_e
    implements SunJCE_d
{

    private static int f[];
    private static int g[];
    private static final byte h[];
    private static final byte i[];
    private static final int j[];
    private static final int k[];
    private static final int l[];
    private static final int m[];
    private static final int n[];
    private static final int o[];
    private static final int p[];
    private static final int q[];
    private static final int r[];
    private static final int s[];
    private static final int t[];
    private static final int u[];
    private static final byte v[];
    private boolean a;
    private boolean b;
    private Object c[];
    private int d[];
    private int e;

    SunJCE_c()
    {
        a = false;
        b = false;
        c = null;
        d = null;
        e = 0;
    }

    private static final int a(int i1, int j1)
    {
        if (i1 != 0 && j1 != 0)
        {
            return f[(g[i1 & 0xff] + g[j1 & 0xff]) % 255];
        } else
        {
            return 0;
        }
    }

    private static final int a(int i1, byte abyte0[])
    {
        if (i1 == 0)
        {
            return 0;
        }
        int j1 = g[i1 & 0xff];
        int k1;
        int l1;
        int i2;
        byte byte0;
        int j2;
        if (abyte0[0] != 0)
        {
            k1 = 0xff & f[(j1 + g[0xff & abyte0[0]]) % 255];
        } else
        {
            k1 = 0;
        }
        if (abyte0[1] != 0)
        {
            l1 = 0xff & f[(j1 + g[0xff & abyte0[1]]) % 255];
        } else
        {
            l1 = 0;
        }
        if (abyte0[2] != 0)
        {
            i2 = 0xff & f[(j1 + g[0xff & abyte0[2]]) % 255];
        } else
        {
            i2 = 0;
        }
        byte0 = abyte0[3];
        j2 = 0;
        if (byte0 != 0)
        {
            j2 = 0xff & f[(j1 + g[0xff & abyte0[3]]) % 255];
        }
        return j2 | (k1 << 24 | l1 << 16 | i2 << 8);
    }

    private void a(boolean flag)
    {
        boolean flag1 = true;
        Object aobj[] = c;
        int i1;
        int ai[][];
        int j1;
        if (flag)
        {
            i1 = ((flag1) ? 1 : 0);
        } else
        {
            i1 = 0;
        }
        ai = (int[][])aobj[i1];
        j1 = ai.length;
        d = new int[j1 * 4];
        for (int k1 = 0; k1 < j1; k1++)
        {
            for (int i3 = 0; i3 < 4; i3++)
            {
                d[i3 + k1 * 4] = ai[k1][i3];
            }

        }

        if (flag)
        {
            int l1 = d[-4 + d.length];
            int i2 = d[-3 + d.length];
            int j2 = d[-2 + d.length];
            int k2 = d[-1 + d.length];
            for (int l2 = -1 + d.length; l2 > 3; l2--)
            {
                d[l2] = d[l2 - 4];
            }

            d[0] = l1;
            d[flag1] = i2;
            d[2] = j2;
            d[3] = k2;
        }
        boolean flag2;
        if (j1 >= 13)
        {
            flag2 = flag1;
        } else
        {
            flag2 = false;
        }
        a = flag2;
        if (j1 != 15)
        {
            flag1 = false;
        }
        b = flag1;
        e = 4 * (j1 - 1);
    }

    static final boolean a(int i1)
    {
        int j1 = 0;
        do
        {
label0:
            {
                int k1 = SunJCE_d.b.length;
                boolean flag = false;
                if (j1 < k1)
                {
                    if (i1 != SunJCE_d.b[j1])
                    {
                        break label0;
                    }
                    flag = true;
                }
                return flag;
            }
            j1++;
        } while (true);
    }

    private static Object[] a(byte abyte0[])
    {
        if (abyte0 == null)
        {
            throw new InvalidKeyException("Empty key");
        }
        if (!a(abyte0.length))
        {
            throw new InvalidKeyException((new StringBuilder("Invalid AES key length: ")).append(abyte0.length).append(" bytes").toString());
        }
        int i1 = b(abyte0.length);
        int j1 = 4 * (i1 + 1);
        int ai[] = {
            i1 + 1, 4
        };
        int ai1[][] = (int[][])Array.newInstance(Integer.TYPE, ai);
        int ai2[] = {
            i1 + 1, 4
        };
        int ai3[][] = (int[][])Array.newInstance(Integer.TYPE, ai2);
        int k1 = abyte0.length / 4;
        int ai4[] = new int[k1];
        int l1 = 0;
        for (int i2 = 0; l1 < k1; i2 += 4)
        {
            ai4[l1] = abyte0[i2] << 24 | (0xff & abyte0[i2 + 1]) << 16 | (0xff & abyte0[i2 + 2]) << 8 | 0xff & abyte0[i2 + 3];
            l1++;
        }

        int j2 = 0;
        for (int k2 = 0; k2 < k1 && j2 < j1; j2++)
        {
            ai1[j2 / 4][j2 % 4] = ai4[k2];
            ai3[i1 - j2 / 4][j2 % 4] = ai4[k2];
            k2++;
        }

        int l2 = 0;
        int i3 = j2;
        do
        {
            int l4;
            int l6;
            if (i3 < j1)
            {
                int i4 = ai4[k1 - 1];
                int j4 = ai4[0];
                int k4 = h[0xff & i4 >>> 16] << 24 ^ (0xff & h[0xff & i4 >>> 8]) << 16 ^ (0xff & h[i4 & 0xff]) << 8 ^ 0xff & h[i4 >>> 24];
                byte abyte1[] = v;
                l4 = l2 + 1;
                ai4[0] = j4 ^ (k4 ^ abyte1[l2] << 24);
                if (k1 != 8)
                {
                    int i7 = 1;
                    for (int j7 = 0; i7 < k1; j7++)
                    {
                        ai4[i7] = ai4[i7] ^ ai4[j7];
                        i7++;
                    }

                } else
                {
                    int i5 = 1;
                    for (int j5 = 0; i5 < k1 / 2; j5++)
                    {
                        ai4[i5] = ai4[i5] ^ ai4[j5];
                        i5++;
                    }

                    int k5 = ai4[-1 + k1 / 2];
                    int l5 = k1 / 2;
                    ai4[l5] = ai4[l5] ^ (0xff & h[k5 & 0xff] ^ (0xff & h[0xff & k5 >>> 8]) << 8 ^ (0xff & h[0xff & k5 >>> 16]) << 16 ^ h[k5 >>> 24] << 24);
                    int i6 = k1 / 2;
                    for (int j6 = i6 + 1; j6 < k1;)
                    {
                        ai4[j6] = ai4[j6] ^ ai4[i6];
                        j6++;
                        i6++;
                    }

                }
                int k6 = 0;
                for (l6 = i3; k6 < k1 && l6 < j1; l6++)
                {
                    ai1[l6 / 4][l6 % 4] = ai4[k6];
                    ai3[i1 - l6 / 4][l6 % 4] = ai4[k6];
                    k6++;
                }

            } else
            {
                for (int j3 = 1; j3 < i1; j3++)
                {
                    for (int k3 = 0; k3 < 4; k3++)
                    {
                        int l3 = ai3[j3][k3];
                        ai3[j3][k3] = r[0xff & l3 >>> 24] ^ s[0xff & l3 >>> 16] ^ t[0xff & l3 >>> 8] ^ u[l3 & 0xff];
                    }

                }

                return (new Object[] {
                    ai1, ai3
                });
            }
            l2 = l4;
            i3 = l6;
        } while (true);
    }

    private static int b(int i1)
    {
        return 6 + (i1 >> 2);
    }

    final int a()
    {
        return 16;
    }

    final void a(boolean flag, String s1, byte abyte0[])
    {
        if (!s1.equalsIgnoreCase("AES") && !s1.equalsIgnoreCase("Rijndael"))
        {
            throw new InvalidKeyException("Wrong algorithm: AES or Rijndael required");
        }
        if (!a(abyte0.length))
        {
            throw new InvalidKeyException((new StringBuilder("Invalid AES key length: ")).append(abyte0.length).append(" bytes").toString());
        } else
        {
            c = a(abyte0);
            a(flag);
            return;
        }
    }

    final void a(byte abyte0[], int i1, byte abyte1[], int j1)
    {
        int k1 = i1 + 1;
        int l1 = abyte0[i1] << 24;
        int i2 = k1 + 1;
        int j2 = l1 | (0xff & abyte0[k1]) << 16;
        int k2 = i2 + 1;
        int l2 = j2 | (0xff & abyte0[i2]) << 8;
        int i3 = k2 + 1;
        int j3 = (l2 | 0xff & abyte0[k2]) ^ d[0];
        int k3 = i3 + 1;
        int l3 = abyte0[i3] << 24;
        int i4 = k3 + 1;
        int j4 = l3 | (0xff & abyte0[k3]) << 16;
        int k4 = i4 + 1;
        int l4 = j4 | (0xff & abyte0[i4]) << 8;
        int i5 = k4 + 1;
        int j5 = (l4 | 0xff & abyte0[k4]) ^ d[1];
        int k5 = i5 + 1;
        int l5 = abyte0[i5] << 24;
        int i6 = k5 + 1;
        int j6 = l5 | (0xff & abyte0[k5]) << 16;
        int k6 = i6 + 1;
        int l6 = j6 | (0xff & abyte0[i6]) << 8;
        int i7 = k6 + 1;
        int j7 = (l6 | 0xff & abyte0[k6]) ^ d[2];
        int k7 = i7 + 1;
        int l7 = abyte0[i7] << 24;
        int i8 = k7 + 1;
        int j8 = l7 | (0xff & abyte0[k7]) << 16;
        int k8 = i8 + 1;
        int l8 = (j8 | (0xff & abyte0[i8]) << 8 | 0xff & abyte0[k8]) ^ d[3];
        int i9 = j3;
        int j9 = j5;
        int k9;
        int l17;
        for (k9 = 4; k9 < e; k9 = l17)
        {
            int j15 = j[i9 >>> 24] ^ k[0xff & j9 >>> 16] ^ l[0xff & j7 >>> 8] ^ m[l8 & 0xff];
            int ai3[] = d;
            int k15 = k9 + 1;
            int l15 = j15 ^ ai3[k9];
            int i16 = j[j9 >>> 24] ^ k[0xff & j7 >>> 16] ^ l[0xff & l8 >>> 8] ^ m[i9 & 0xff];
            int ai4[] = d;
            int j16 = k15 + 1;
            int k16 = i16 ^ ai4[k15];
            int l16 = j[j7 >>> 24] ^ k[0xff & l8 >>> 16] ^ l[0xff & i9 >>> 8] ^ m[j9 & 0xff];
            int ai5[] = d;
            int i17 = j16 + 1;
            int j17 = l16 ^ ai5[j16];
            int k17 = j[l8 >>> 24] ^ k[0xff & i9 >>> 16] ^ l[0xff & j9 >>> 8] ^ m[j7 & 0xff];
            int ai6[] = d;
            l17 = i17 + 1;
            int i18 = k17 ^ ai6[i17];
            i9 = l15;
            l8 = i18;
            j9 = k16;
            j7 = j17;
        }

        int ai[] = d;
        int l9 = k9 + 1;
        int i10 = ai[k9];
        int j10 = j1 + 1;
        abyte1[j1] = (byte)(h[i9 >>> 24] ^ i10 >>> 24);
        int k10 = j10 + 1;
        abyte1[j10] = (byte)(h[0xff & j9 >>> 16] ^ i10 >>> 16);
        int l10 = k10 + 1;
        abyte1[k10] = (byte)(h[0xff & j7 >>> 8] ^ i10 >>> 8);
        int i11 = l10 + 1;
        abyte1[l10] = (byte)(i10 ^ h[l8 & 0xff]);
        int ai1[] = d;
        int j11 = l9 + 1;
        int k11 = ai1[l9];
        int l11 = i11 + 1;
        abyte1[i11] = (byte)(h[j9 >>> 24] ^ k11 >>> 24);
        int i12 = l11 + 1;
        abyte1[l11] = (byte)(h[0xff & j7 >>> 16] ^ k11 >>> 16);
        int j12 = i12 + 1;
        abyte1[i12] = (byte)(h[0xff & l8 >>> 8] ^ k11 >>> 8);
        int k12 = j12 + 1;
        abyte1[j12] = (byte)(k11 ^ h[i9 & 0xff]);
        int ai2[] = d;
        int l12 = j11 + 1;
        int i13 = ai2[j11];
        int j13 = k12 + 1;
        abyte1[k12] = (byte)(h[j7 >>> 24] ^ i13 >>> 24);
        int k13 = j13 + 1;
        abyte1[j13] = (byte)(h[0xff & l8 >>> 16] ^ i13 >>> 16);
        int l13 = k13 + 1;
        abyte1[k13] = (byte)(h[0xff & i9 >>> 8] ^ i13 >>> 8);
        int i14 = l13 + 1;
        abyte1[l13] = (byte)(i13 ^ h[j9 & 0xff]);
        int j14 = d[l12];
        int k14 = i14 + 1;
        abyte1[i14] = (byte)(h[l8 >>> 24] ^ j14 >>> 24);
        int l14 = k14 + 1;
        abyte1[k14] = (byte)(h[0xff & i9 >>> 16] ^ j14 >>> 16);
        int i15 = l14 + 1;
        abyte1[l14] = (byte)(h[0xff & j9 >>> 8] ^ j14 >>> 8);
        abyte1[i15] = (byte)(j14 ^ h[j7 & 0xff]);
    }

    final void b(byte abyte0[], int i1, byte abyte1[], int j1)
    {
        byte byte0 = 16;
        int k1 = i1 + 1;
        int l1 = abyte0[i1] << 24;
        int i2 = k1 + 1;
        int j2 = l1 | (0xff & abyte0[k1]) << 16;
        int k2 = i2 + 1;
        int l2 = j2 | (0xff & abyte0[i2]) << 8;
        int i3 = k2 + 1;
        int j3 = (l2 | 0xff & abyte0[k2]) ^ d[4];
        int k3 = i3 + 1;
        int l3 = abyte0[i3] << 24;
        int i4 = k3 + 1;
        int j4 = l3 | (0xff & abyte0[k3]) << 16;
        int k4 = i4 + 1;
        int l4 = j4 | (0xff & abyte0[i4]) << 8;
        int i5 = k4 + 1;
        int j5 = (l4 | 0xff & abyte0[k4]) ^ d[5];
        int k5 = i5 + 1;
        int l5 = abyte0[i5] << 24;
        int i6 = k5 + 1;
        int j6 = l5 | (0xff & abyte0[k5]) << 16;
        int k6 = i6 + 1;
        int l6 = j6 | (0xff & abyte0[i6]) << 8;
        int i7 = k6 + 1;
        int j7 = (l6 | 0xff & abyte0[k6]) ^ d[6];
        int k7 = i7 + 1;
        int l7 = abyte0[i7] << 24;
        int i8 = k7 + 1;
        int j8 = l7 | (0xff & abyte0[k7]) << 16;
        int k8 = i8 + 1;
        int l8 = (j8 | (0xff & abyte0[i8]) << 8 | 0xff & abyte0[k8]) ^ d[7];
        int i9;
        int j9;
        int ai[];
        int k9;
        int l9;
        int i10;
        int ai1[];
        int j10;
        int k10;
        int l10;
        int ai2[];
        int i11;
        int j11;
        int k11;
        int ai3[];
        int l11;
        int i12;
        int j12;
        int ai4[];
        int k12;
        int l12;
        int i13;
        int ai5[];
        int j13;
        int k13;
        int l13;
        int ai6[];
        int i14;
        int j14;
        int k14;
        int ai7[];
        int l14;
        int i15;
        int j15;
        int ai8[];
        int k15;
        int l15;
        int i16;
        int ai9[];
        int j16;
        int k16;
        int l16;
        int ai10[];
        int i17;
        int j17;
        int k17;
        int ai11[];
        int l17;
        int i18;
        int j18;
        int ai12[];
        int k18;
        int l18;
        int i19;
        int ai13[];
        int j19;
        int k19;
        int l19;
        int ai14[];
        int i20;
        int j20;
        int k20;
        int ai15[];
        int l20;
        int i21;
        int j21;
        int ai16[];
        int k21;
        int l21;
        int i22;
        int ai17[];
        int j22;
        int k22;
        int l22;
        int ai18[];
        int i23;
        int j23;
        int k23;
        int ai19[];
        int l23;
        int i24;
        int j24;
        int ai20[];
        int k24;
        int l24;
        int i25;
        int ai21[];
        int j25;
        int k25;
        int l25;
        int ai22[];
        int i26;
        int j26;
        int k26;
        int ai23[];
        int l26;
        int i27;
        int j27;
        int ai24[];
        int k27;
        int l27;
        int i28;
        int ai25[];
        int j28;
        int k28;
        int l28;
        int ai26[];
        int i29;
        int j29;
        int k29;
        int ai27[];
        int l29;
        int i30;
        int j30;
        int ai28[];
        int k30;
        int l30;
        int i31;
        int ai29[];
        int j31;
        int k31;
        int l31;
        int ai30[];
        int i32;
        int j32;
        int k32;
        int ai31[];
        int l32;
        int i33;
        int j33;
        int ai32[];
        int k33;
        int l33;
        int i34;
        int ai33[];
        int j34;
        int k34;
        int l34;
        int ai34[];
        int i35;
        int j35;
        int k35;
        int l35;
        int i36;
        int j36;
        int k36;
        int l36;
        int i37;
        int j37;
        int k37;
        int l37;
        int i38;
        int j38;
        int k38;
        int l38;
        int i39;
        int j39;
        int k39;
        int l39;
        int i40;
        int j40;
        if (a)
        {
            int k40 = n[j3 >>> 24] ^ o[0xff & l8 >>> 16] ^ p[0xff & j7 >>> 8] ^ q[j5 & 0xff] ^ d[8];
            int l40 = n[j5 >>> 24] ^ o[0xff & j3 >>> 16] ^ p[0xff & l8 >>> 8] ^ q[j7 & 0xff] ^ d[9];
            int i41 = n[j7 >>> 24] ^ o[0xff & j5 >>> 16] ^ p[0xff & j3 >>> 8] ^ q[l8 & 0xff] ^ d[10];
            int j41 = n[l8 >>> 24] ^ o[0xff & j7 >>> 16] ^ p[0xff & j5 >>> 8] ^ q[j3 & 0xff] ^ d[11];
            j3 = n[k40 >>> 24] ^ o[0xff & j41 >>> 16] ^ p[0xff & i41 >>> 8] ^ q[l40 & 0xff] ^ d[12];
            j5 = n[l40 >>> 24] ^ o[0xff & k40 >>> 16] ^ p[0xff & j41 >>> 8] ^ q[i41 & 0xff] ^ d[13];
            j7 = n[i41 >>> 24] ^ o[0xff & l40 >>> 16] ^ p[0xff & k40 >>> 8] ^ q[j41 & 0xff] ^ d[14];
            i9 = n[j41 >>> 24] ^ o[0xff & i41 >>> 16] ^ p[0xff & l40 >>> 8] ^ q[k40 & 0xff] ^ d[15];
            if (b)
            {
                int k41 = n[j3 >>> 24] ^ o[0xff & i9 >>> 16] ^ p[0xff & j7 >>> 8] ^ q[j5 & 0xff] ^ d[byte0];
                int l41 = n[j5 >>> 24] ^ o[0xff & j3 >>> 16] ^ p[0xff & i9 >>> 8] ^ q[j7 & 0xff] ^ d[17];
                int i42 = n[j7 >>> 24] ^ o[0xff & j5 >>> 16] ^ p[0xff & j3 >>> 8] ^ q[i9 & 0xff] ^ d[18];
                int j42 = n[i9 >>> 24] ^ o[0xff & j7 >>> 16] ^ p[0xff & j5 >>> 8] ^ q[j3 & 0xff] ^ d[19];
                j3 = n[k41 >>> 24] ^ o[0xff & j42 >>> 16] ^ p[0xff & i42 >>> 8] ^ q[l41 & 0xff] ^ d[20];
                j5 = n[l41 >>> 24] ^ o[0xff & k41 >>> 16] ^ p[0xff & j42 >>> 8] ^ q[i42 & 0xff] ^ d[21];
                j7 = n[i42 >>> 24] ^ o[0xff & l41 >>> 16] ^ p[0xff & k41 >>> 8] ^ q[j42 & 0xff] ^ d[22];
                int k42 = n[j42 >>> 24] ^ o[0xff & i42 >>> 16] ^ p[0xff & l41 >>> 8] ^ q[k41 & 0xff];
                int ai35[] = d;
                byte0 = 24;
                i9 = k42 ^ ai35[23];
            }
        } else
        {
            byte0 = 8;
            i9 = l8;
        }
        j9 = n[j3 >>> 24] ^ o[0xff & i9 >>> 16] ^ p[0xff & j7 >>> 8] ^ q[j5 & 0xff];
        ai = d;
        k9 = byte0 + 1;
        l9 = j9 ^ ai[byte0];
        i10 = n[j5 >>> 24] ^ o[0xff & j3 >>> 16] ^ p[0xff & i9 >>> 8] ^ q[j7 & 0xff];
        ai1 = d;
        j10 = k9 + 1;
        k10 = i10 ^ ai1[k9];
        l10 = n[j7 >>> 24] ^ o[0xff & j5 >>> 16] ^ p[0xff & j3 >>> 8] ^ q[i9 & 0xff];
        ai2 = d;
        i11 = j10 + 1;
        j11 = l10 ^ ai2[j10];
        k11 = n[i9 >>> 24] ^ o[0xff & j7 >>> 16] ^ p[0xff & j5 >>> 8] ^ q[j3 & 0xff];
        ai3 = d;
        l11 = i11 + 1;
        i12 = k11 ^ ai3[i11];
        j12 = n[l9 >>> 24] ^ o[0xff & i12 >>> 16] ^ p[0xff & j11 >>> 8] ^ q[k10 & 0xff];
        ai4 = d;
        k12 = l11 + 1;
        l12 = j12 ^ ai4[l11];
        i13 = n[k10 >>> 24] ^ o[0xff & l9 >>> 16] ^ p[0xff & i12 >>> 8] ^ q[j11 & 0xff];
        ai5 = d;
        j13 = k12 + 1;
        k13 = i13 ^ ai5[k12];
        l13 = n[j11 >>> 24] ^ o[0xff & k10 >>> 16] ^ p[0xff & l9 >>> 8] ^ q[i12 & 0xff];
        ai6 = d;
        i14 = j13 + 1;
        j14 = l13 ^ ai6[j13];
        k14 = n[i12 >>> 24] ^ o[0xff & j11 >>> 16] ^ p[0xff & k10 >>> 8] ^ q[l9 & 0xff];
        ai7 = d;
        l14 = i14 + 1;
        i15 = k14 ^ ai7[i14];
        j15 = n[l12 >>> 24] ^ o[0xff & i15 >>> 16] ^ p[0xff & j14 >>> 8] ^ q[k13 & 0xff];
        ai8 = d;
        k15 = l14 + 1;
        l15 = j15 ^ ai8[l14];
        i16 = n[k13 >>> 24] ^ o[0xff & l12 >>> 16] ^ p[0xff & i15 >>> 8] ^ q[j14 & 0xff];
        ai9 = d;
        j16 = k15 + 1;
        k16 = i16 ^ ai9[k15];
        l16 = n[j14 >>> 24] ^ o[0xff & k13 >>> 16] ^ p[0xff & l12 >>> 8] ^ q[i15 & 0xff];
        ai10 = d;
        i17 = j16 + 1;
        j17 = l16 ^ ai10[j16];
        k17 = n[i15 >>> 24] ^ o[0xff & j14 >>> 16] ^ p[0xff & k13 >>> 8] ^ q[l12 & 0xff];
        ai11 = d;
        l17 = i17 + 1;
        i18 = k17 ^ ai11[i17];
        j18 = n[l15 >>> 24] ^ o[0xff & i18 >>> 16] ^ p[0xff & j17 >>> 8] ^ q[k16 & 0xff];
        ai12 = d;
        k18 = l17 + 1;
        l18 = j18 ^ ai12[l17];
        i19 = n[k16 >>> 24] ^ o[0xff & l15 >>> 16] ^ p[0xff & i18 >>> 8] ^ q[j17 & 0xff];
        ai13 = d;
        j19 = k18 + 1;
        k19 = i19 ^ ai13[k18];
        l19 = n[j17 >>> 24] ^ o[0xff & k16 >>> 16] ^ p[0xff & l15 >>> 8] ^ q[i18 & 0xff];
        ai14 = d;
        i20 = j19 + 1;
        j20 = l19 ^ ai14[j19];
        k20 = n[i18 >>> 24] ^ o[0xff & j17 >>> 16] ^ p[0xff & k16 >>> 8] ^ q[l15 & 0xff];
        ai15 = d;
        l20 = i20 + 1;
        i21 = k20 ^ ai15[i20];
        j21 = n[l18 >>> 24] ^ o[0xff & i21 >>> 16] ^ p[0xff & j20 >>> 8] ^ q[k19 & 0xff];
        ai16 = d;
        k21 = l20 + 1;
        l21 = j21 ^ ai16[l20];
        i22 = n[k19 >>> 24] ^ o[0xff & l18 >>> 16] ^ p[0xff & i21 >>> 8] ^ q[j20 & 0xff];
        ai17 = d;
        j22 = k21 + 1;
        k22 = i22 ^ ai17[k21];
        l22 = n[j20 >>> 24] ^ o[0xff & k19 >>> 16] ^ p[0xff & l18 >>> 8] ^ q[i21 & 0xff];
        ai18 = d;
        i23 = j22 + 1;
        j23 = l22 ^ ai18[j22];
        k23 = n[i21 >>> 24] ^ o[0xff & j20 >>> 16] ^ p[0xff & k19 >>> 8] ^ q[l18 & 0xff];
        ai19 = d;
        l23 = i23 + 1;
        i24 = k23 ^ ai19[i23];
        j24 = n[l21 >>> 24] ^ o[0xff & i24 >>> 16] ^ p[0xff & j23 >>> 8] ^ q[k22 & 0xff];
        ai20 = d;
        k24 = l23 + 1;
        l24 = j24 ^ ai20[l23];
        i25 = n[k22 >>> 24] ^ o[0xff & l21 >>> 16] ^ p[0xff & i24 >>> 8] ^ q[j23 & 0xff];
        ai21 = d;
        j25 = k24 + 1;
        k25 = i25 ^ ai21[k24];
        l25 = n[j23 >>> 24] ^ o[0xff & k22 >>> 16] ^ p[0xff & l21 >>> 8] ^ q[i24 & 0xff];
        ai22 = d;
        i26 = j25 + 1;
        j26 = l25 ^ ai22[j25];
        k26 = n[i24 >>> 24] ^ o[0xff & j23 >>> 16] ^ p[0xff & k22 >>> 8] ^ q[l21 & 0xff];
        ai23 = d;
        l26 = i26 + 1;
        i27 = k26 ^ ai23[i26];
        j27 = n[l24 >>> 24] ^ o[0xff & i27 >>> 16] ^ p[0xff & j26 >>> 8] ^ q[k25 & 0xff];
        ai24 = d;
        k27 = l26 + 1;
        l27 = j27 ^ ai24[l26];
        i28 = n[k25 >>> 24] ^ o[0xff & l24 >>> 16] ^ p[0xff & i27 >>> 8] ^ q[j26 & 0xff];
        ai25 = d;
        j28 = k27 + 1;
        k28 = i28 ^ ai25[k27];
        l28 = n[j26 >>> 24] ^ o[0xff & k25 >>> 16] ^ p[0xff & l24 >>> 8] ^ q[i27 & 0xff];
        ai26 = d;
        i29 = j28 + 1;
        j29 = l28 ^ ai26[j28];
        k29 = n[i27 >>> 24] ^ o[0xff & j26 >>> 16] ^ p[0xff & k25 >>> 8] ^ q[l24 & 0xff];
        ai27 = d;
        l29 = i29 + 1;
        i30 = k29 ^ ai27[i29];
        j30 = n[l27 >>> 24] ^ o[0xff & i30 >>> 16] ^ p[0xff & j29 >>> 8] ^ q[k28 & 0xff];
        ai28 = d;
        k30 = l29 + 1;
        l30 = j30 ^ ai28[l29];
        i31 = n[k28 >>> 24] ^ o[0xff & l27 >>> 16] ^ p[0xff & i30 >>> 8] ^ q[j29 & 0xff];
        ai29 = d;
        j31 = k30 + 1;
        k31 = i31 ^ ai29[k30];
        l31 = n[j29 >>> 24] ^ o[0xff & k28 >>> 16] ^ p[0xff & l27 >>> 8] ^ q[i30 & 0xff];
        ai30 = d;
        i32 = j31 + 1;
        j32 = l31 ^ ai30[j31];
        k32 = n[i30 >>> 24] ^ o[0xff & j29 >>> 16] ^ p[0xff & k28 >>> 8] ^ q[l27 & 0xff];
        ai31 = d;
        l32 = i32 + 1;
        i33 = k32 ^ ai31[i32];
        j33 = n[l30 >>> 24] ^ o[0xff & i33 >>> 16] ^ p[0xff & j32 >>> 8] ^ q[k31 & 0xff];
        ai32 = d;
        k33 = l32 + 1;
        l33 = j33 ^ ai32[l32];
        i34 = n[k31 >>> 24] ^ o[0xff & l30 >>> 16] ^ p[0xff & i33 >>> 8] ^ q[j32 & 0xff];
        ai33 = d;
        j34 = k33 + 1;
        k34 = i34 ^ ai33[k33];
        l34 = n[j32 >>> 24] ^ o[0xff & k31 >>> 16] ^ p[0xff & l30 >>> 8] ^ q[i33 & 0xff];
        ai34 = d;
        i35 = j34 + 1;
        j35 = l34 ^ ai34[j34];
        k35 = n[i33 >>> 24] ^ o[0xff & j32 >>> 16] ^ p[0xff & k31 >>> 8] ^ q[l30 & 0xff] ^ d[i35];
        l35 = d[0];
        i36 = j1 + 1;
        abyte1[j1] = (byte)(i[l33 >>> 24] ^ l35 >>> 24);
        j36 = i36 + 1;
        abyte1[i36] = (byte)(i[0xff & k35 >>> 16] ^ l35 >>> 16);
        k36 = j36 + 1;
        abyte1[j36] = (byte)(i[0xff & j35 >>> 8] ^ l35 >>> 8);
        l36 = k36 + 1;
        abyte1[k36] = (byte)(l35 ^ i[k34 & 0xff]);
        i37 = d[1];
        j37 = l36 + 1;
        abyte1[l36] = (byte)(i[k34 >>> 24] ^ i37 >>> 24);
        k37 = j37 + 1;
        abyte1[j37] = (byte)(i[0xff & l33 >>> 16] ^ i37 >>> 16);
        l37 = k37 + 1;
        abyte1[k37] = (byte)(i[0xff & k35 >>> 8] ^ i37 >>> 8);
        i38 = l37 + 1;
        abyte1[l37] = (byte)(i37 ^ i[j35 & 0xff]);
        j38 = d[2];
        k38 = i38 + 1;
        abyte1[i38] = (byte)(i[j35 >>> 24] ^ j38 >>> 24);
        l38 = k38 + 1;
        abyte1[k38] = (byte)(i[0xff & k34 >>> 16] ^ j38 >>> 16);
        i39 = l38 + 1;
        abyte1[l38] = (byte)(i[0xff & l33 >>> 8] ^ j38 >>> 8);
        j39 = i39 + 1;
        abyte1[i39] = (byte)(j38 ^ i[k35 & 0xff]);
        k39 = d[3];
        l39 = j39 + 1;
        abyte1[j39] = (byte)(i[k35 >>> 24] ^ k39 >>> 24);
        i40 = l39 + 1;
        abyte1[l39] = (byte)(i[0xff & j35 >>> 16] ^ k39 >>> 16);
        j40 = i40 + 1;
        abyte1[i40] = (byte)(i[0xff & k34 >>> 8] ^ k39 >>> 8);
        abyte1[j40] = (byte)(k39 ^ i[l33 & 0xff]);
    }

    static 
    {
        int i1 = 1;
        f = new int[256];
        g = new int[256];
        h = new byte[256];
        i = new byte[256];
        j = new int[256];
        k = new int[256];
        l = new int[256];
        m = new int[256];
        n = new int[256];
        o = new int[256];
        p = new int[256];
        q = new int[256];
        r = new int[256];
        s = new int[256];
        t = new int[256];
        u = new int[256];
        v = new byte[30];
        f[0] = i1;
        for (int j1 = i1; j1 < 256; j1++)
        {
            int l6 = f[j1 - 1] << 1 ^ f[j1 - 1];
            if ((l6 & 0x100) != 0)
            {
                l6 ^= 0x11b;
            }
            f[j1] = l6;
        }

        for (int k1 = i1; k1 < 255; k1++)
        {
            g[f[k1]] = k1;
        }

        byte abyte0[][] = new byte[8][];
        abyte0[0] = (new byte[] {
            1, 1, 1, 1, 1, 0, 0, 0
        });
        abyte0[i1] = (new byte[] {
            0, 1, 1, 1, 1, 1, 0, 0
        });
        abyte0[2] = (new byte[] {
            0, 0, 1, 1, 1, 1, 1, 0
        });
        abyte0[3] = (new byte[] {
            0, 0, 0, 1, 1, 1, 1, 1
        });
        abyte0[4] = (new byte[] {
            1, 0, 0, 0, 1, 1, 1, 1
        });
        abyte0[5] = (new byte[] {
            1, 1, 0, 0, 0, 1, 1, 1
        });
        abyte0[6] = (new byte[] {
            1, 1, 1, 0, 0, 0, 1, 1
        });
        abyte0[7] = (new byte[] {
            1, 1, 1, 1, 0, 0, 0, 1
        });
        byte abyte1[] = {
            0, 1, 1, 0, 0, 0, 1, 1
        };
        int ai[] = {
            256, 8
        };
        byte abyte2[][] = (byte[][])Array.newInstance(Byte.TYPE, ai);
        abyte2[i1][7] = (byte)i1;
        for (int l1 = 2; l1 < 256; l1++)
        {
            int j6 = f[255 - g[l1]];
            for (int k6 = 0; k6 < 8; k6++)
            {
                abyte2[l1][k6] = (byte)(1 & j6 >>> 7 - k6);
            }

        }

        int ai1[] = {
            256, 8
        };
        byte abyte3[][] = (byte[][])Array.newInstance(Byte.TYPE, ai1);
        for (int i2 = 0; i2 < 256; i2++)
        {
            for (int l5 = 0; l5 < 8; l5++)
            {
                abyte3[i2][l5] = abyte1[l5];
                for (int i6 = 0; i6 < 8; i6++)
                {
                    byte abyte9[] = abyte3[i2];
                    abyte9[l5] = (byte)(abyte9[l5] ^ abyte0[l5][i6] * abyte2[i2][i6]);
                }

            }

        }

        for (int j2 = 0; j2 < 256; j2++)
        {
            h[j2] = (byte)(abyte3[j2][0] << 7);
            for (int k5 = i1; k5 < 8; k5++)
            {
                byte abyte8[] = h;
                abyte8[j2] = (byte)(abyte8[j2] ^ abyte3[j2][k5] << 7 - k5);
            }

            i[0xff & h[j2]] = (byte)j2;
        }

        byte abyte4[][] = new byte[4][];
        abyte4[0] = (new byte[] {
            2, 1, 1, 3
        });
        abyte4[i1] = (new byte[] {
            3, 2, 1, 1
        });
        abyte4[2] = (new byte[] {
            1, 3, 2, 1
        });
        abyte4[3] = (new byte[] {
            1, 1, 3, 2
        });
        int ai2[] = {
            4, 8
        };
        byte abyte5[][] = (byte[][])Array.newInstance(Byte.TYPE, ai2);
        for (int k2 = 0; k2 < 4; k2++)
        {
            for (int j5 = 0; j5 < 4; j5++)
            {
                abyte5[k2][j5] = abyte4[k2][j5];
            }

            abyte5[k2][k2 + 4] = (byte)i1;
        }

        int ai3[] = {
            4, 4
        };
        byte abyte6[][] = (byte[][])Array.newInstance(Byte.TYPE, ai3);
        for (int l2 = 0; l2 < 4; l2++)
        {
            byte byte2 = abyte5[l2][l2];
            if (byte2 == 0)
            {
                int l4;
                for (l4 = l2 + 1; abyte5[l4][l2] == 0 && l4 < 4; l4++) { }
                if (l4 == 4)
                {
                    throw new RuntimeException("G matrix is not invertible");
                }
                for (int i5 = 0; i5 < 8; i5++)
                {
                    byte byte3 = abyte5[l2][i5];
                    abyte5[l2][i5] = abyte5[l4][i5];
                    abyte5[l4][i5] = byte3;
                }

                byte2 = abyte5[l2][l2];
            }
            for (int i4 = 0; i4 < 8; i4++)
            {
                if (abyte5[l2][i4] != 0)
                {
                    abyte5[l2][i4] = (byte)f[((255 + g[0xff & abyte5[l2][i4]]) - g[byte2 & 0xff]) % 255];
                }
            }

            for (int j4 = 0; j4 < 4; j4++)
            {
                if (l2 == j4)
                {
                    continue;
                }
                for (int k4 = l2 + 1; k4 < 8; k4++)
                {
                    byte abyte7[] = abyte5[j4];
                    abyte7[k4] = (byte)(abyte7[k4] ^ a(abyte5[l2][k4], abyte5[j4][l2]));
                }

                abyte5[j4][l2] = 0;
            }

        }

        for (int i3 = 0; i3 < 4; i3++)
        {
            for (int l3 = 0; l3 < 4; l3++)
            {
                abyte6[i3][l3] = abyte5[i3][l3 + 4];
            }

        }

        for (int j3 = 0; j3 < 256; j3++)
        {
            byte byte0 = h[j3];
            j[j3] = a(byte0, abyte4[0]);
            k[j3] = a(byte0, abyte4[i1]);
            l[j3] = a(byte0, abyte4[2]);
            m[j3] = a(byte0, abyte4[3]);
            byte byte1 = i[j3];
            n[j3] = a(byte1, abyte6[0]);
            o[j3] = a(byte1, abyte6[i1]);
            p[j3] = a(byte1, abyte6[2]);
            q[j3] = a(byte1, abyte6[3]);
            r[j3] = a(j3, abyte6[0]);
            s[j3] = a(j3, abyte6[i1]);
            t[j3] = a(j3, abyte6[2]);
            u[j3] = a(j3, abyte6[3]);
        }

        v[0] = (byte)i1;
        for (int k3 = i1; k3 < 30; k3++)
        {
            i1 = a(2, i1);
            v[k3] = (byte)i1;
        }

        g = null;
        f = null;
    }
}
