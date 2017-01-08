// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.a.a.a;


// Referenced classes of package com.google.android.a.a.a:
//            b

public class a
{

    static final boolean a;
    private static final byte b[] = {
        65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 
        75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 
        85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 
        101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 
        111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 
        121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 
        56, 57, 43, 47
    };
    private static final byte c[] = {
        65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 
        75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 
        85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 
        101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 
        111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 
        121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 
        56, 57, 45, 95
    };
    private static final byte d[];
    private static final byte e[];

    private a()
    {
    }

    private static int a(byte abyte0[], byte abyte1[], int i, byte abyte2[])
    {
        if (abyte0[2] == 61)
        {
            abyte1[i] = (byte)(((abyte2[abyte0[0]] << 24) >>> 6 | (abyte2[abyte0[1]] << 24) >>> 12) >>> 16);
            return 1;
        }
        if (abyte0[3] == 61)
        {
            int k = (abyte2[abyte0[0]] << 24) >>> 6 | (abyte2[abyte0[1]] << 24) >>> 12 | (abyte2[abyte0[2]] << 24) >>> 18;
            abyte1[i] = (byte)(k >>> 16);
            abyte1[i + 1] = (byte)(k >>> 8);
            return 2;
        } else
        {
            int j = (abyte2[abyte0[0]] << 24) >>> 6 | (abyte2[abyte0[1]] << 24) >>> 12 | (abyte2[abyte0[2]] << 24) >>> 18 | (abyte2[abyte0[3]] << 24) >>> 24;
            abyte1[i] = (byte)(j >> 16);
            abyte1[i + 1] = (byte)(j >> 8);
            abyte1[i + 2] = (byte)j;
            return 3;
        }
    }

    public static String a(byte abyte0[])
    {
        int i;
        byte abyte1[];
        byte abyte2[];
        int k;
        int l;
        int i1;
        int j1;
        i = abyte0.length;
        abyte1 = b;
        int j = 4 * ((i + 2) / 3);
        abyte2 = new byte[j + j / 0x7fffffff];
        k = i - 2;
        l = 0;
        i1 = 0;
        j1 = 0;
_L9:
        if (j1 < k) goto _L2; else goto _L1
_L1:
        if (j1 >= i) goto _L4; else goto _L3
_L3:
        int k3;
        int i2 = j1 + 0;
        int j2 = i - j1;
        int k1;
        int l1;
        int k2;
        int l2;
        int i3;
        int j3;
        if (j2 > 0)
        {
            k2 = (abyte0[i2] << 24) >>> 8;
        } else
        {
            k2 = 0;
        }
        if (j2 > 1)
        {
            l2 = (abyte0[i2 + 1] << 24) >>> 16;
        } else
        {
            l2 = 0;
        }
        i3 = k2 | l2;
        if (j2 > 2)
        {
            j3 = (abyte0[i2 + 2] << 24) >>> 24;
        } else
        {
            j3 = 0;
        }
        k3 = j3 | i3;
        j2;
        JVM INSTR tableswitch 1 3: default 164
    //                   1 494
    //                   2 436
    //                   3 373;
           goto _L5 _L6 _L7 _L8
_L5:
        break; /* Loop/switch isn't completed */
_L6:
        break MISSING_BLOCK_LABEL_494;
_L10:
        if (l + 4 == 0x7fffffff)
        {
            abyte2[i1 + 4] = 10;
            i1++;
        }
        i1 += 4;
_L4:
        if (!a && i1 != abyte2.length)
        {
            throw new AssertionError();
        } else
        {
            return new String(abyte2, 0, abyte2.length);
        }
_L2:
        k1 = (abyte0[j1 + 0] << 24) >>> 8 | (abyte0[0 + (j1 + 1)] << 24) >>> 16 | (abyte0[0 + (j1 + 2)] << 24) >>> 24;
        abyte2[i1] = abyte1[k1 >>> 18];
        abyte2[i1 + 1] = abyte1[0x3f & k1 >>> 12];
        abyte2[i1 + 2] = abyte1[0x3f & k1 >>> 6];
        abyte2[i1 + 3] = abyte1[k1 & 0x3f];
        l1 = l + 4;
        if (l1 == 0x7fffffff)
        {
            abyte2[i1 + 4] = 10;
            i1++;
            l1 = 0;
        }
        j1 += 3;
        i1 += 4;
        l = l1;
          goto _L9
_L8:
        abyte2[i1] = abyte1[k3 >>> 18];
        abyte2[i1 + 1] = abyte1[0x3f & k3 >>> 12];
        abyte2[i1 + 2] = abyte1[0x3f & k3 >>> 6];
        abyte2[i1 + 3] = abyte1[k3 & 0x3f];
          goto _L10
_L7:
        abyte2[i1] = abyte1[k3 >>> 18];
        abyte2[i1 + 1] = abyte1[0x3f & k3 >>> 12];
        abyte2[i1 + 2] = abyte1[0x3f & k3 >>> 6];
        abyte2[i1 + 3] = 61;
          goto _L10
        abyte2[i1] = abyte1[k3 >>> 18];
        abyte2[i1 + 1] = abyte1[0x3f & k3 >>> 12];
        abyte2[i1 + 2] = 61;
        abyte2[i1 + 3] = 61;
          goto _L10
    }

    public static byte[] a(String s)
    {
        byte abyte0[];
        int i;
        byte abyte1[];
        byte abyte2[];
        byte abyte3[];
        int j;
        int k;
        int l;
        abyte0 = s.getBytes();
        i = abyte0.length;
        abyte1 = d;
        abyte2 = new byte[2 + (i * 3) / 4];
        abyte3 = new byte[4];
        j = 0;
        k = 0;
        l = 0;
        break MISSING_BLOCK_LABEL_37;
        i1 = k + 1;
        abyte3[k] = byte0;
        byte abyte4[];
        if (i1 == 4)
        {
            j1 = l + a(abyte3, abyte2, l, abyte1);
            i1 = 0;
        } else
        {
            j1 = l;
        }
_L1:
        j++;
        l = j1;
        k = i1;
        int i1;
        int j1;
label0:
        {
            if (j < i)
            {
                byte byte0 = (byte)(0x7f & abyte0[j + 0]);
                byte byte1 = abyte1[byte0];
                if (byte1 >= -5)
                {
label1:
                    {
                        if (byte1 < -1)
                        {
                            break label0;
                        }
                        if (byte0 != 61)
                        {
                            break label1;
                        }
                        int k1 = i - j;
                        byte byte2 = (byte)(0x7f & abyte0[0 + (i - 1)]);
                        if (k == 0 || k == 1)
                        {
                            throw new b((new StringBuilder("invalid padding byte '=' at byte offset ")).append(j).toString());
                        }
                        if (k == 3 && k1 > 2 || k == 4 && k1 > 1)
                        {
                            throw new b((new StringBuilder("padding byte '=' falsely signals end of encoded value at offset ")).append(j).toString());
                        }
                        if (byte2 != 61 && byte2 != 10)
                        {
                            throw new b("encoded value has invalid trailing byte");
                        }
                    }
                } else
                {
                    throw new b((new StringBuilder("Bad Base64 input character at ")).append(j).append(": ").append(abyte0[j + 0]).append("(decimal)").toString());
                }
            }
            if (k != 0)
            {
                if (k == 1)
                {
                    throw new b((new StringBuilder("single trailing character at offset ")).append(i - 1).toString());
                }
                abyte3[k] = 61;
                l += a(abyte3, abyte2, l, abyte1);
            }
            abyte4 = new byte[l];
            System.arraycopy(abyte2, 0, abyte4, 0, l);
            return abyte4;
        }
        i1 = k;
        j1 = l;
          goto _L1
    }

    static 
    {
        boolean flag;
        byte abyte0[];
        byte abyte1[];
        if (!com/google/android/a/a/a/a.desiredAssertionStatus())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        a = flag;
        abyte0 = new byte[128];
        abyte0[0] = -9;
        abyte0[1] = -9;
        abyte0[2] = -9;
        abyte0[3] = -9;
        abyte0[4] = -9;
        abyte0[5] = -9;
        abyte0[6] = -9;
        abyte0[7] = -9;
        abyte0[8] = -9;
        abyte0[9] = -5;
        abyte0[10] = -5;
        abyte0[11] = -9;
        abyte0[12] = -9;
        abyte0[13] = -5;
        abyte0[14] = -9;
        abyte0[15] = -9;
        abyte0[16] = -9;
        abyte0[17] = -9;
        abyte0[18] = -9;
        abyte0[19] = -9;
        abyte0[20] = -9;
        abyte0[21] = -9;
        abyte0[22] = -9;
        abyte0[23] = -9;
        abyte0[24] = -9;
        abyte0[25] = -9;
        abyte0[26] = -9;
        abyte0[27] = -9;
        abyte0[28] = -9;
        abyte0[29] = -9;
        abyte0[30] = -9;
        abyte0[31] = -9;
        abyte0[32] = -5;
        abyte0[33] = -9;
        abyte0[34] = -9;
        abyte0[35] = -9;
        abyte0[36] = -9;
        abyte0[37] = -9;
        abyte0[38] = -9;
        abyte0[39] = -9;
        abyte0[40] = -9;
        abyte0[41] = -9;
        abyte0[42] = -9;
        abyte0[43] = 62;
        abyte0[44] = -9;
        abyte0[45] = -9;
        abyte0[46] = -9;
        abyte0[47] = 63;
        abyte0[48] = 52;
        abyte0[49] = 53;
        abyte0[50] = 54;
        abyte0[51] = 55;
        abyte0[52] = 56;
        abyte0[53] = 57;
        abyte0[54] = 58;
        abyte0[55] = 59;
        abyte0[56] = 60;
        abyte0[57] = 61;
        abyte0[58] = -9;
        abyte0[59] = -9;
        abyte0[60] = -9;
        abyte0[61] = -1;
        abyte0[62] = -9;
        abyte0[63] = -9;
        abyte0[64] = -9;
        abyte0[66] = 1;
        abyte0[67] = 2;
        abyte0[68] = 3;
        abyte0[69] = 4;
        abyte0[70] = 5;
        abyte0[71] = 6;
        abyte0[72] = 7;
        abyte0[73] = 8;
        abyte0[74] = 9;
        abyte0[75] = 10;
        abyte0[76] = 11;
        abyte0[77] = 12;
        abyte0[78] = 13;
        abyte0[79] = 14;
        abyte0[80] = 15;
        abyte0[81] = 16;
        abyte0[82] = 17;
        abyte0[83] = 18;
        abyte0[84] = 19;
        abyte0[85] = 20;
        abyte0[86] = 21;
        abyte0[87] = 22;
        abyte0[88] = 23;
        abyte0[89] = 24;
        abyte0[90] = 25;
        abyte0[91] = -9;
        abyte0[92] = -9;
        abyte0[93] = -9;
        abyte0[94] = -9;
        abyte0[95] = -9;
        abyte0[96] = -9;
        abyte0[97] = 26;
        abyte0[98] = 27;
        abyte0[99] = 28;
        abyte0[100] = 29;
        abyte0[101] = 30;
        abyte0[102] = 31;
        abyte0[103] = 32;
        abyte0[104] = 33;
        abyte0[105] = 34;
        abyte0[106] = 35;
        abyte0[107] = 36;
        abyte0[108] = 37;
        abyte0[109] = 38;
        abyte0[110] = 39;
        abyte0[111] = 40;
        abyte0[112] = 41;
        abyte0[113] = 42;
        abyte0[114] = 43;
        abyte0[115] = 44;
        abyte0[116] = 45;
        abyte0[117] = 46;
        abyte0[118] = 47;
        abyte0[119] = 48;
        abyte0[120] = 49;
        abyte0[121] = 50;
        abyte0[122] = 51;
        abyte0[123] = -9;
        abyte0[124] = -9;
        abyte0[125] = -9;
        abyte0[126] = -9;
        abyte0[127] = -9;
        d = abyte0;
        abyte1 = new byte[128];
        abyte1[0] = -9;
        abyte1[1] = -9;
        abyte1[2] = -9;
        abyte1[3] = -9;
        abyte1[4] = -9;
        abyte1[5] = -9;
        abyte1[6] = -9;
        abyte1[7] = -9;
        abyte1[8] = -9;
        abyte1[9] = -5;
        abyte1[10] = -5;
        abyte1[11] = -9;
        abyte1[12] = -9;
        abyte1[13] = -5;
        abyte1[14] = -9;
        abyte1[15] = -9;
        abyte1[16] = -9;
        abyte1[17] = -9;
        abyte1[18] = -9;
        abyte1[19] = -9;
        abyte1[20] = -9;
        abyte1[21] = -9;
        abyte1[22] = -9;
        abyte1[23] = -9;
        abyte1[24] = -9;
        abyte1[25] = -9;
        abyte1[26] = -9;
        abyte1[27] = -9;
        abyte1[28] = -9;
        abyte1[29] = -9;
        abyte1[30] = -9;
        abyte1[31] = -9;
        abyte1[32] = -5;
        abyte1[33] = -9;
        abyte1[34] = -9;
        abyte1[35] = -9;
        abyte1[36] = -9;
        abyte1[37] = -9;
        abyte1[38] = -9;
        abyte1[39] = -9;
        abyte1[40] = -9;
        abyte1[41] = -9;
        abyte1[42] = -9;
        abyte1[43] = -9;
        abyte1[44] = -9;
        abyte1[45] = 62;
        abyte1[46] = -9;
        abyte1[47] = -9;
        abyte1[48] = 52;
        abyte1[49] = 53;
        abyte1[50] = 54;
        abyte1[51] = 55;
        abyte1[52] = 56;
        abyte1[53] = 57;
        abyte1[54] = 58;
        abyte1[55] = 59;
        abyte1[56] = 60;
        abyte1[57] = 61;
        abyte1[58] = -9;
        abyte1[59] = -9;
        abyte1[60] = -9;
        abyte1[61] = -1;
        abyte1[62] = -9;
        abyte1[63] = -9;
        abyte1[64] = -9;
        abyte1[66] = 1;
        abyte1[67] = 2;
        abyte1[68] = 3;
        abyte1[69] = 4;
        abyte1[70] = 5;
        abyte1[71] = 6;
        abyte1[72] = 7;
        abyte1[73] = 8;
        abyte1[74] = 9;
        abyte1[75] = 10;
        abyte1[76] = 11;
        abyte1[77] = 12;
        abyte1[78] = 13;
        abyte1[79] = 14;
        abyte1[80] = 15;
        abyte1[81] = 16;
        abyte1[82] = 17;
        abyte1[83] = 18;
        abyte1[84] = 19;
        abyte1[85] = 20;
        abyte1[86] = 21;
        abyte1[87] = 22;
        abyte1[88] = 23;
        abyte1[89] = 24;
        abyte1[90] = 25;
        abyte1[91] = -9;
        abyte1[92] = -9;
        abyte1[93] = -9;
        abyte1[94] = -9;
        abyte1[95] = 63;
        abyte1[96] = -9;
        abyte1[97] = 26;
        abyte1[98] = 27;
        abyte1[99] = 28;
        abyte1[100] = 29;
        abyte1[101] = 30;
        abyte1[102] = 31;
        abyte1[103] = 32;
        abyte1[104] = 33;
        abyte1[105] = 34;
        abyte1[106] = 35;
        abyte1[107] = 36;
        abyte1[108] = 37;
        abyte1[109] = 38;
        abyte1[110] = 39;
        abyte1[111] = 40;
        abyte1[112] = 41;
        abyte1[113] = 42;
        abyte1[114] = 43;
        abyte1[115] = 44;
        abyte1[116] = 45;
        abyte1[117] = 46;
        abyte1[118] = 47;
        abyte1[119] = 48;
        abyte1[120] = 49;
        abyte1[121] = 50;
        abyte1[122] = 51;
        abyte1[123] = -9;
        abyte1[124] = -9;
        abyte1[125] = -9;
        abyte1[126] = -9;
        abyte1[127] = -9;
        e = abyte1;
    }
}
