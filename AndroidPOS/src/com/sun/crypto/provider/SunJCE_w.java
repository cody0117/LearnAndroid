// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.sun.crypto.provider;

import java.security.InvalidKeyException;

// Referenced classes of package com.sun.crypto.provider:
//            SunJCE_e, SunJCE_x

class SunJCE_w extends SunJCE_e
    implements SunJCE_x
{

    private static final int a[] = {
        0x410100, 0x10000, 0x40400000, 0x40410100, 0x400000, 0x40010100, 0x40010000, 0x40400000, 0x40010100, 0x410100, 
        0x410000, 0x40000100, 0x40400100, 0x400000, 0, 0x40010000, 0x10000, 0x40000000, 0x400100, 0x10100, 
        0x40410100, 0x410000, 0x40000100, 0x400100, 0x40000000, 256, 0x10100, 0x40410000, 256, 0x40400100, 
        0x40410000, 0, 0, 0x40410100, 0x400100, 0x40010000, 0x410100, 0x10000, 0x40000100, 0x400100, 
        0x40410000, 256, 0x10100, 0x40400000, 0x40010100, 0x40000000, 0x40400000, 0x410000, 0x40410100, 0x10100, 
        0x410000, 0x40400100, 0x400000, 0x40000100, 0x40010000, 0, 0x10000, 0x400000, 0x40400100, 0x410100, 
        0x40000000, 0x40410000, 256, 0x40010100
    };
    private static final int a0[] = {
        0, 256, 0, 256, 1, 257, 1, 257, 0, 256, 
        0, 256, 1, 257, 1, 257
    };
    private static final int a1[] = {
        0, 0, 256, 256, 0, 0, 256, 256, 1, 1, 
        257, 257, 1, 1, 257, 257
    };
    private static final int a2[] = {
        0, 0x1000000, 0, 0x1000000, 0x10000, 0x1010000, 0x10000, 0x1010000, 0, 0x1000000, 
        0, 0x1000000, 0x10000, 0x1010000, 0x10000, 0x1010000
    };
    private static final int a3[] = {
        0, 0, 0x1000000, 0x1000000, 0, 0, 0x1000000, 0x1000000, 0x10000, 0x10000, 
        0x1010000, 0x1010000, 0x10000, 0x10000, 0x1010000, 0x1010000
    };
    private static final int aa[] = {
        0, 0x80000000, 0, 0x80000000, 0x800000, 0x80800000, 0x800000, 0x80800000, 0, 0x80000000, 
        0, 0x80000000, 0x800000, 0x80800000, 0x800000, 0x80800000
    };
    private static final int ab[] = {
        0, 0, 0x80000000, 0x80000000, 0, 0, 0x80000000, 0x80000000, 0x800000, 0x800000, 
        0x80800000, 0x80800000, 0x800000, 0x800000, 0x80800000, 0x80800000
    };
    private static final int ac[] = {
        0, 16384, 0, 16384, 64, 16448, 64, 16448, 0, 16384, 
        0, 16384, 64, 16448, 64, 16448
    };
    private static final int ad[] = {
        0, 0, 16384, 16384, 0, 0, 16384, 16384, 64, 64, 
        16448, 16448, 64, 64, 16448, 16448
    };
    private static final int ae[] = {
        0, 0x40000000, 0, 0x40000000, 0x400000, 0x40400000, 0x400000, 0x40400000, 0, 0x40000000, 
        0, 0x40000000, 0x400000, 0x40400000, 0x400000, 0x40400000
    };
    private static final int af[] = {
        0, 0, 0x40000000, 0x40000000, 0, 0, 0x40000000, 0x40000000, 0x400000, 0x400000, 
        0x40400000, 0x40400000, 0x400000, 0x400000, 0x40400000, 0x40400000
    };
    private static final int ag[] = {
        0, 8192, 0, 8192, 32, 8224, 32, 8224, 0, 8192, 
        0, 8192, 32, 8224, 32, 8224
    };
    private static final int ah[] = {
        0, 0, 8192, 8192, 0, 0, 8192, 8192, 32, 32, 
        8224, 8224, 32, 32, 8224, 8224
    };
    private static final int ai[] = {
        0, 0x20000000, 0, 0x20000000, 0x200000, 0x20200000, 0x200000, 0x20200000, 0, 0x20000000, 
        0, 0x20000000, 0x200000, 0x20200000, 0x200000, 0x20200000
    };
    private static final int aj[] = {
        0, 0, 0x20000000, 0x20000000, 0, 0, 0x20000000, 0x20000000, 0x200000, 0x200000, 
        0x20200000, 0x20200000, 0x200000, 0x200000, 0x20200000, 0x20200000
    };
    private static final int ak[] = {
        0, 4096, 0, 4096, 16, 4112, 16, 4112, 0, 4096, 
        0, 4096, 16, 4112, 16, 4112
    };
    private static final int al[] = {
        0, 0, 4096, 4096, 0, 0, 4096, 4096, 16, 16, 
        4112, 4112, 16, 16, 4112, 4112
    };
    private static final int am[] = {
        0, 0x10000000, 0, 0x10000000, 0x100000, 0x10100000, 0x100000, 0x10100000, 0, 0x10000000, 
        0, 0x10000000, 0x100000, 0x10100000, 0x100000, 0x10100000
    };
    private static final int an[] = {
        0, 0, 0x10000000, 0x10000000, 0, 0, 0x10000000, 0x10000000, 0x100000, 0x100000, 
        0x10100000, 0x10100000, 0x100000, 0x100000, 0x10100000, 0x10100000
    };
    private static final int ao[] = {
        0, 2048, 0, 2048, 8, 2056, 8, 2056, 0, 2048, 
        0, 2048, 8, 2056, 8, 2056
    };
    private static final int ap[] = {
        0, 0, 2048, 2048, 0, 0, 2048, 2048, 8, 8, 
        2056, 2056, 8, 8, 2056, 2056
    };
    private static final int aq[] = {
        0, 0x8000000, 0, 0x8000000, 0x80000, 0x8080000, 0x80000, 0x8080000, 0, 0x8000000, 
        0, 0x8000000, 0x80000, 0x8080000, 0x80000, 0x8080000
    };
    private static final int ar[] = {
        0, 0, 0x8000000, 0x8000000, 0, 0, 0x8000000, 0x8000000, 0x80000, 0x80000, 
        0x8080000, 0x8080000, 0x80000, 0x80000, 0x8080000, 0x8080000
    };
    private static final int as[] = {
        0, 1024, 0, 1024, 4, 1028, 4, 1028, 0, 1024, 
        0, 1024, 4, 1028, 4, 1028
    };
    private static final int at[] = {
        0, 0, 1024, 1024, 0, 0, 1024, 1024, 4, 4, 
        1028, 1028, 4, 4, 1028, 1028
    };
    private static final int au[] = {
        0, 0x4000000, 0, 0x4000000, 0x40000, 0x4040000, 0x40000, 0x4040000, 0, 0x4000000, 
        0, 0x4000000, 0x40000, 0x4040000, 0x40000, 0x4040000
    };
    private static final int av[] = {
        0, 0, 0x4000000, 0x4000000, 0, 0, 0x4000000, 0x4000000, 0x40000, 0x40000, 
        0x4040000, 0x4040000, 0x40000, 0x40000, 0x4040000, 0x4040000
    };
    private static final int aw[] = {
        0, 512, 0, 512, 2, 514, 2, 514, 0, 512, 
        0, 512, 2, 514, 2, 514
    };
    private static final int ax[] = {
        0, 0, 512, 512, 0, 0, 512, 512, 2, 2, 
        514, 514, 2, 2, 514, 514
    };
    private static final int ay[] = {
        0, 0x2000000, 0, 0x2000000, 0x20000, 0x2020000, 0x20000, 0x2020000, 0, 0x2000000, 
        0, 0x2000000, 0x20000, 0x2020000, 0x20000, 0x2020000
    };
    private static final int az[] = {
        0, 0, 0x2000000, 0x2000000, 0, 0, 0x2000000, 0x2000000, 0x20000, 0x20000, 
        0x2020000, 0x2020000, 0x20000, 0x20000, 0x2020000, 0x2020000
    };
    private static final int b[] = {
        0x8021002, 0, 0x21000, 0x8020000, 0x8000002, 4098, 0x8001000, 0x21000, 4096, 0x8020002, 
        2, 0x8001000, 0x20002, 0x8021000, 0x8020000, 2, 0x20000, 0x8001002, 0x8020002, 4096, 
        0x21002, 0x8000000, 0, 0x20002, 0x8001002, 0x21002, 0x8021000, 0x8000002, 0x8000000, 0x20000, 
        4098, 0x8021002, 0x20002, 0x8021000, 0x8001000, 0x21002, 0x8021002, 0x20002, 0x8000002, 0, 
        0x8000000, 4098, 0x20000, 0x8020002, 4096, 0x8000000, 0x21002, 0x8001002, 0x8021000, 4096, 
        0, 0x8000002, 2, 0x8021002, 0x21000, 0x8020000, 0x8020002, 0x20000, 4098, 0x8001000, 
        0x8001002, 2, 0x8020000, 0x21000
    };
    private static final int c[] = {
        0x20800000, 0x808020, 32, 0x20800020, 0x20008000, 0x800000, 0x20800020, 32800, 0x800020, 32768, 
        0x808000, 0x20000000, 0x20808020, 0x20000020, 0x20000000, 0x20808000, 0, 0x20008000, 0x808020, 32, 
        0x20000020, 0x20808020, 32768, 0x20800000, 0x20808000, 0x800020, 0x20008020, 0x808000, 32800, 0, 
        0x800000, 0x20008020, 0x808020, 32, 0x20000000, 32768, 0x20000020, 0x20008000, 0x808000, 0x20800020, 
        0, 0x808020, 32800, 0x20808000, 0x20008000, 0x800000, 0x20808020, 0x20000000, 0x20008020, 0x20800000, 
        0x800000, 0x20808020, 32768, 0x800020, 0x20800020, 32800, 0x800020, 0, 0x20808000, 0x20000020, 
        0x20800000, 0x20008020, 32, 0x808000
    };
    private static final int d[] = {
        0x80201, 0x2000200, 1, 0x2080201, 0, 0x2080000, 0x2000201, 0x80001, 0x2080200, 0x2000001, 
        0x2000000, 513, 0x2000001, 0x80201, 0x80000, 0x2000000, 0x2080001, 0x80200, 512, 1, 
        0x80200, 0x2000201, 0x2080000, 512, 513, 0, 0x80001, 0x2080200, 0x2000200, 0x2080001, 
        0x2080201, 0x80000, 0x2080001, 513, 0x80000, 0x2000001, 0x80200, 0x2000200, 1, 0x2080000, 
        0x2000201, 0, 512, 0x80001, 0, 0x2080001, 0x2080200, 512, 0x2000000, 0x2080201, 
        0x80201, 0x80000, 0x2080201, 1, 0x2000200, 0x80201, 0x80001, 0x80200, 0x2080000, 0x2000201, 
        513, 0x2000000, 0x2000001, 0x2080200
    };
    private static final int e[] = {
        0x1000000, 8192, 128, 0x1002084, 0x1002004, 0x1000080, 8324, 0x1002000, 8192, 4, 
        0x1000004, 8320, 0x1000084, 0x1002004, 0x1002080, 0, 8320, 0x1000000, 8196, 132, 
        0x1000080, 8324, 0, 0x1000004, 4, 0x1000084, 0x1002084, 8196, 0x1002000, 128, 
        132, 0x1002080, 0x1002080, 0x1000084, 8196, 0x1002000, 8192, 4, 0x1000004, 0x1000080, 
        0x1000000, 8320, 0x1002084, 0, 8324, 0x1000000, 128, 8196, 0x1000084, 128, 
        0, 0x1002084, 0x1002004, 0x1002080, 132, 8192, 8320, 0x1002004, 0x1000080, 132, 
        4, 8324, 0x1002000, 0x1000004
    };
    private static final int f[] = {
        0x10000008, 0x40008, 0, 0x10040400, 0x40008, 1024, 0x10000408, 0x40000, 1032, 0x10040408, 
        0x40400, 0x10000000, 0x10000400, 0x10000008, 0x10040000, 0x40408, 0x40000, 0x10000408, 0x10040008, 0, 
        1024, 8, 0x10040400, 0x10040008, 0x10040408, 0x10040000, 0x10000000, 1032, 8, 0x40400, 
        0x40408, 0x10000400, 1032, 0x10000000, 0x10000400, 0x40408, 0x10040400, 0x40008, 0, 0x10000400, 
        0x10000000, 1024, 0x10040008, 0x40000, 0x40008, 0x10040408, 0x40400, 8, 0x10040408, 0x40400, 
        0x40000, 0x10000408, 0x10000008, 0x10040000, 0x40408, 0, 1024, 0x10000008, 0x10000408, 0x10040400, 
        0x10040000, 1032, 8, 0x10040008
    };
    private static final int g[] = {
        2048, 64, 0x200040, 0x80200000, 0x80200840, 0x80000800, 2112, 0, 0x200000, 0x80200040, 
        0x80000040, 0x200800, 0x80000000, 0x200840, 0x200800, 0x80000040, 0x80200040, 2048, 0x80000800, 0x80200840, 
        0, 0x200040, 0x80200000, 2112, 0x80200800, 0x80000840, 0x200840, 0x80000000, 0x80000840, 0x80200800, 
        64, 0x200000, 0x80000840, 0x200800, 0x80200800, 0x80000040, 2048, 64, 0x200000, 0x80200800, 
        0x80200040, 0x80000840, 2112, 0, 64, 0x80200000, 0x80000000, 0x200040, 0, 0x80200040, 
        0x200040, 2112, 0x80000040, 2048, 0x80200840, 0x200000, 0x200840, 0x80000000, 0x80000800, 0x80200840, 
        0x80200000, 0x200840, 0x200800, 0x80000800
    };
    private static final int h[] = {
        0x4100010, 0x4104000, 16400, 0, 0x4004000, 0x100010, 0x4100000, 0x4104010, 16, 0x4000000, 
        0x104000, 16400, 0x104010, 0x4004010, 0x4000010, 0x4100000, 16384, 0x104010, 0x100010, 0x4004000, 
        0x4104010, 0x4000010, 0, 0x104000, 0x4000000, 0x100000, 0x4004010, 0x4100010, 0x100000, 16384, 
        0x4104000, 16, 0x100000, 16384, 0x4000010, 0x4104010, 16400, 0x4000000, 0, 0x104000, 
        0x4100010, 0x4004010, 0x4004000, 0x100010, 0x4104000, 16, 0x100010, 0x4004000, 0x4104010, 0x100000, 
        0x4100000, 0x4000010, 0x104000, 16400, 0x4004010, 0x4100000, 16, 0x4104000, 0x104010, 0, 
        0x4000000, 0x4100010, 16384, 0x104010
    };
    private static final int i[] = {
        0, 0x40000000, 0x400000, 0x40400000, 16384, 0x40004000, 0x404000, 0x40404000, 64, 0x40000040, 
        0x400040, 0x40400040, 16448, 0x40004040, 0x404040, 0x40404040
    };
    private static final int j[] = {
        0, 0x40000000, 0x400000, 0x40400000, 16384, 0x40004000, 0x404000, 0x40404000, 64, 0x40000040, 
        0x400040, 0x40400040, 16448, 0x40004040, 0x404040, 0x40404040
    };
    private static final int k[] = {
        0, 0x10000000, 0x100000, 0x10100000, 4096, 0x10001000, 0x101000, 0x10101000, 16, 0x10000010, 
        0x100010, 0x10100010, 4112, 0x10001010, 0x101010, 0x10101010
    };
    private static final int l[] = {
        0, 0x10000000, 0x100000, 0x10100000, 4096, 0x10001000, 0x101000, 0x10101000, 16, 0x10000010, 
        0x100010, 0x10100010, 4112, 0x10001010, 0x101010, 0x10101010
    };
    private static final int m[] = {
        0, 0x4000000, 0x40000, 0x4040000, 1024, 0x4000400, 0x40400, 0x4040400, 4, 0x4000004, 
        0x40004, 0x4040004, 1028, 0x4000404, 0x40404, 0x4040404
    };
    private static final int n[] = {
        0, 0x4000000, 0x40000, 0x4040000, 1024, 0x4000400, 0x40400, 0x4040400, 4, 0x4000004, 
        0x40004, 0x4040004, 1028, 0x4000404, 0x40404, 0x4040404
    };
    private static final int o[] = {
        0, 0x1000000, 0x10000, 0x1010000, 256, 0x1000100, 0x10100, 0x1010100, 1, 0x1000001, 
        0x10001, 0x1010001, 257, 0x1000101, 0x10101, 0x1010101
    };
    private static final int p[] = {
        0, 0x1000000, 0x10000, 0x1010000, 256, 0x1000100, 0x10100, 0x1010100, 1, 0x1000001, 
        0x10001, 0x1010001, 257, 0x1000101, 0x10101, 0x1010101
    };
    private static final int q[] = {
        0, 0x80000000, 0x800000, 0x80800000, 32768, 0x80008000, 0x808000, 0x80808000, 128, 0x80000080, 
        0x800080, 0x80800080, 32896, 0x80008080, 0x808080, 0x80808080
    };
    private static final int r[] = {
        0, 0x80000000, 0x800000, 0x80800000, 32768, 0x80008000, 0x808000, 0x80808000, 128, 0x80000080, 
        0x800080, 0x80800080, 32896, 0x80008080, 0x808080, 0x80808080
    };
    private static final int s[] = {
        0, 0x20000000, 0x200000, 0x20200000, 8192, 0x20002000, 0x202000, 0x20202000, 32, 0x20000020, 
        0x200020, 0x20200020, 8224, 0x20002020, 0x202020, 0x20202020
    };
    private static final int t[] = {
        0, 0x20000000, 0x200000, 0x20200000, 8192, 0x20002000, 0x202000, 0x20202000, 32, 0x20000020, 
        0x200020, 0x20200020, 8224, 0x20002020, 0x202020, 0x20202020
    };
    private static final int u[] = {
        0, 0x8000000, 0x80000, 0x8080000, 2048, 0x8000800, 0x80800, 0x8080800, 8, 0x8000008, 
        0x80008, 0x8080008, 2056, 0x8000808, 0x80808, 0x8080808
    };
    private static final int v[] = {
        0, 0x8000000, 0x80000, 0x8080000, 2048, 0x8000800, 0x80800, 0x8080800, 8, 0x8000008, 
        0x80008, 0x8080008, 2056, 0x8000808, 0x80808, 0x8080808
    };
    private static final int w[] = {
        0, 0x2000000, 0x20000, 0x2020000, 512, 0x2000200, 0x20200, 0x2020200, 2, 0x2000002, 
        0x20002, 0x2020002, 514, 0x2000202, 0x20202, 0x2020202
    };
    private static final int x[] = {
        0, 0x2000000, 0x20000, 0x2020000, 512, 0x2000200, 0x20200, 0x2020200, 2, 0x2000002, 
        0x20002, 0x2020002, 514, 0x2000202, 0x20202, 0x2020202
    };
    private static final int y[] = {
        0, 32768, 0, 32768, 128, 32896, 128, 32896, 0, 32768, 
        0, 32768, 128, 32896, 128, 32896
    };
    private static final int z[] = {
        0, 0, 32768, 32768, 0, 0, 32768, 32768, 128, 128, 
        32896, 32896, 128, 128, 32896, 32896
    };
    byte a4[];
    boolean a5;

    SunJCE_w()
    {
        a4 = null;
        a5 = false;
    }

    private static int a(byte abyte0[], int i1)
    {
        return aa[0xf & abyte0[i1]] | y[0xf & abyte0[i1] >> 4] | ae[0xf & abyte0[i1 + 1]] | ac[0xf & abyte0[i1 + 1] >> 4] | ai[0xf & abyte0[i1 + 2]] | ag[0xf & abyte0[i1 + 2] >> 4] | am[0xf & abyte0[i1 + 3]] | ak[0xf & abyte0[i1 + 3] >> 4] | aq[0xf & abyte0[i1 + 4]] | ao[0xf & abyte0[i1 + 4] >> 4] | au[0xf & abyte0[i1 + 5]] | as[0xf & abyte0[i1 + 5] >> 4] | ay[0xf & abyte0[i1 + 6]] | aw[0xf & abyte0[i1 + 6] >> 4] | a2[0xf & abyte0[i1 + 7]] | a0[0xf & abyte0[i1 + 7] >> 4];
    }

    private static void a(int i1, int j1, byte abyte0[], int k1)
    {
        int l1 = i[i1 & 0xf];
        int i2 = i1 >> 4;
        int j2 = j[i2 & 0xf];
        int k2 = i2 >> 4;
        int l2 = l1 | k[k2 & 0xf];
        int i3 = k2 >> 4;
        int j3 = j2 | l[i3 & 0xf];
        int k3 = i3 >> 4;
        int l3 = l2 | m[k3 & 0xf];
        int i4 = k3 >> 4;
        int j4 = j3 | n[i4 & 0xf];
        int k4 = i4 >> 4;
        int l4 = l3 | o[k4 & 0xf];
        int i5 = k4 >> 4;
        int j5 = j4 | p[i5 & 0xf];
        int k5 = l4 | q[j1 & 0xf];
        int l5 = j1 >> 4;
        int i6 = j5 | r[l5 & 0xf];
        int j6 = l5 >> 4;
        int k6 = k5 | s[j6 & 0xf];
        int l6 = j6 >> 4;
        int i7 = i6 | t[l6 & 0xf];
        int j7 = l6 >> 4;
        int k7 = k6 | u[j7 & 0xf];
        int l7 = j7 >> 4;
        int i8 = i7 | v[l7 & 0xf];
        int j8 = l7 >> 4;
        int k8 = k7 | w[j8 & 0xf];
        int l8 = j8 >> 4;
        int i9 = i8 | x[l8 & 0xf];
        abyte0[k1 + 0] = (byte)i9;
        abyte0[k1 + 1] = (byte)(i9 >> 8);
        abyte0[k1 + 2] = (byte)(i9 >> 16);
        abyte0[k1 + 3] = (byte)(i9 >> 24);
        abyte0[k1 + 4] = (byte)k8;
        abyte0[k1 + 5] = (byte)(k8 >> 8);
        abyte0[k1 + 6] = (byte)(k8 >> 16);
        abyte0[k1 + 7] = (byte)(k8 >> 24);
    }

    private static int b(byte abyte0[], int i1)
    {
        return ab[0xf & abyte0[i1]] | z[0xf & abyte0[i1] >> 4] | af[0xf & abyte0[i1 + 1]] | ad[0xf & abyte0[i1 + 1] >> 4] | aj[0xf & abyte0[i1 + 2]] | ah[0xf & abyte0[i1 + 2] >> 4] | an[0xf & abyte0[i1 + 3]] | al[0xf & abyte0[i1 + 3] >> 4] | ar[0xf & abyte0[i1 + 4]] | ap[0xf & abyte0[i1 + 4] >> 4] | av[0xf & abyte0[i1 + 5]] | at[0xf & abyte0[i1 + 5] >> 4] | az[0xf & abyte0[i1 + 6]] | ax[0xf & abyte0[i1 + 6] >> 4] | a3[0xf & abyte0[i1 + 7]] | a1[0xf & abyte0[i1 + 7] >> 4];
    }

    int a()
    {
        return 8;
    }

    void a(boolean flag, String s1, byte abyte0[])
    {
        a5 = flag;
        if (!s1.equalsIgnoreCase("DES"))
        {
            throw new InvalidKeyException("Wrong algorithm: DES required");
        }
        if (abyte0.length != 8)
        {
            throw new InvalidKeyException("Wrong key size");
        } else
        {
            a(abyte0);
            return;
        }
    }

    void a(byte abyte0[])
    {
        byte abyte1[] = new byte[128];
        byte byte0 = abyte0[0];
        if ((byte0 & 0x80) != 0)
        {
            abyte1[3] = (byte)(2 | abyte1[3]);
            abyte1[9] = (byte)(8 | abyte1[9]);
            abyte1[18] = (byte)(8 | abyte1[18]);
            abyte1[27] = (byte)(0x20 | abyte1[27]);
            abyte1[33] = (byte)(2 | abyte1[33]);
            abyte1[42] = (byte)(0x10 | abyte1[42]);
            abyte1[48] = (byte)(8 | abyte1[48]);
            abyte1[65] = (byte)(0x10 | abyte1[65]);
            abyte1[74] = (byte)(2 | abyte1[74]);
            abyte1[80] = (byte)(2 | abyte1[80]);
            abyte1[89] = (byte)(4 | abyte1[89]);
            abyte1[99] = (byte)(0x10 | abyte1[99]);
            abyte1[104] = (byte)(4 | abyte1[104]);
            abyte1[122] = (byte)(0x20 | abyte1[122]);
        }
        if ((byte0 & 0x40) != 0)
        {
            abyte1[1] = (byte)(4 | abyte1[1]);
            abyte1[8] = (byte)(1 | abyte1[8]);
            abyte1[18] = (byte)(4 | abyte1[18]);
            abyte1[25] = (byte)(0x20 | abyte1[25]);
            abyte1[34] = (byte)(0x20 | abyte1[34]);
            abyte1[41] = (byte)(8 | abyte1[41]);
            abyte1[50] = (byte)(8 | abyte1[50]);
            abyte1[59] = (byte)(0x20 | abyte1[59]);
            abyte1[64] = (byte)(0x10 | abyte1[64]);
            abyte1[75] = (byte)(4 | abyte1[75]);
            abyte1[90] = (byte)(1 | abyte1[90]);
            abyte1[97] = (byte)(0x10 | abyte1[97]);
            abyte1[106] = (byte)(2 | abyte1[106]);
            abyte1[112] = (byte)(2 | abyte1[112]);
            abyte1[123] = (byte)(1 | abyte1[123]);
        }
        if ((byte0 & 0x20) != 0)
        {
            abyte1[2] = (byte)(1 | abyte1[2]);
            abyte1[19] = (byte)(8 | abyte1[19]);
            abyte1[35] = (byte)(1 | abyte1[35]);
            abyte1[40] = (byte)(1 | abyte1[40]);
            abyte1[50] = (byte)(4 | abyte1[50]);
            abyte1[57] = (byte)(0x20 | abyte1[57]);
            abyte1[75] = (byte)(2 | abyte1[75]);
            abyte1[80] = (byte)(0x20 | abyte1[80]);
            abyte1[89] = (byte)(1 | abyte1[89]);
            abyte1[96] = (byte)(0x10 | abyte1[96]);
            abyte1[107] = (byte)(4 | abyte1[107]);
            abyte1[120] = (byte)(8 | abyte1[120]);
        }
        if ((byte0 & 0x10) != 0)
        {
            abyte1[4] = (byte)(0x20 | abyte1[4]);
            abyte1[20] = (byte)(2 | abyte1[20]);
            abyte1[31] = (byte)(4 | abyte1[31]);
            abyte1[37] = (byte)(0x20 | abyte1[37]);
            abyte1[47] = (byte)(1 | abyte1[47]);
            abyte1[54] = (byte)(1 | abyte1[54]);
            abyte1[63] = (byte)(2 | abyte1[63]);
            abyte1[68] = (byte)(1 | abyte1[68]);
            abyte1[78] = (byte)(4 | abyte1[78]);
            abyte1[84] = (byte)(8 | abyte1[84]);
            abyte1[101] = (byte)(0x10 | abyte1[101]);
            abyte1[108] = (byte)(4 | abyte1[108]);
            abyte1[119] = (byte)(0x10 | abyte1[119]);
            abyte1[126] = (byte)(8 | abyte1[126]);
        }
        if ((byte0 & 8) != 0)
        {
            abyte1[5] = (byte)(4 | abyte1[5]);
            abyte1[15] = (byte)(4 | abyte1[15]);
            abyte1[21] = (byte)(0x20 | abyte1[21]);
            abyte1[31] = (byte)(1 | abyte1[31]);
            abyte1[38] = (byte)(1 | abyte1[38]);
            abyte1[47] = (byte)(2 | abyte1[47]);
            abyte1[53] = (byte)(2 | abyte1[53]);
            abyte1[68] = (byte)(8 | abyte1[68]);
            abyte1[85] = (byte)(0x10 | abyte1[85]);
            abyte1[92] = (byte)(4 | abyte1[92]);
            abyte1[103] = (byte)(0x10 | abyte1[103]);
            abyte1[108] = (byte)(0x20 | abyte1[108]);
            abyte1[118] = (byte)(0x20 | abyte1[118]);
            abyte1[124] = (byte)(2 | abyte1[124]);
        }
        if ((byte0 & 4) != 0)
        {
            abyte1[15] = (byte)(2 | abyte1[15]);
            abyte1[21] = (byte)(2 | abyte1[21]);
            abyte1[39] = (byte)(8 | abyte1[39]);
            abyte1[46] = (byte)(0x10 | abyte1[46]);
            abyte1[55] = (byte)(0x20 | abyte1[55]);
            abyte1[61] = (byte)(1 | abyte1[61]);
            abyte1[71] = (byte)(0x10 | abyte1[71]);
            abyte1[76] = (byte)(0x20 | abyte1[76]);
            abyte1[86] = (byte)(0x20 | abyte1[86]);
            abyte1[93] = (byte)(4 | abyte1[93]);
            abyte1[102] = (byte)(2 | abyte1[102]);
            abyte1[108] = (byte)(0x10 | abyte1[108]);
            abyte1[117] = (byte)(8 | abyte1[117]);
            abyte1[126] = (byte)(1 | abyte1[126]);
        }
        if ((byte0 & 2) != 0)
        {
            abyte1[14] = (byte)(0x10 | abyte1[14]);
            abyte1[23] = (byte)(0x20 | abyte1[23]);
            abyte1[29] = (byte)(1 | abyte1[29]);
            abyte1[38] = (byte)(8 | abyte1[38]);
            abyte1[52] = (byte)(2 | abyte1[52]);
            abyte1[63] = (byte)(4 | abyte1[63]);
            abyte1[70] = (byte)(2 | abyte1[70]);
            abyte1[76] = (byte)(0x10 | abyte1[76]);
            abyte1[85] = (byte)(8 | abyte1[85]);
            abyte1[100] = (byte)(1 | abyte1[100]);
            abyte1[110] = (byte)(4 | abyte1[110]);
            abyte1[116] = (byte)(8 | abyte1[116]);
            abyte1[127] = (byte)(8 | abyte1[127]);
        }
        byte byte1 = abyte0[1];
        if ((byte1 & 0x80) != 0)
        {
            abyte1[1] = (byte)(8 | abyte1[1]);
            abyte1[8] = (byte)(0x20 | abyte1[8]);
            abyte1[17] = (byte)(1 | abyte1[17]);
            abyte1[24] = (byte)(0x10 | abyte1[24]);
            abyte1[35] = (byte)(4 | abyte1[35]);
            abyte1[50] = (byte)(1 | abyte1[50]);
            abyte1[57] = (byte)(0x10 | abyte1[57]);
            abyte1[67] = (byte)(8 | abyte1[67]);
            abyte1[83] = (byte)(1 | abyte1[83]);
            abyte1[88] = (byte)(1 | abyte1[88]);
            abyte1[98] = (byte)(4 | abyte1[98]);
            abyte1[105] = (byte)(0x20 | abyte1[105]);
            abyte1[114] = (byte)(0x20 | abyte1[114]);
            abyte1[123] = (byte)(2 | abyte1[123]);
        }
        if ((byte1 & 0x40) != 0)
        {
            abyte1[0] = (byte)(1 | abyte1[0]);
            abyte1[11] = (byte)(0x10 | abyte1[11]);
            abyte1[16] = (byte)(4 | abyte1[16]);
            abyte1[35] = (byte)(2 | abyte1[35]);
            abyte1[40] = (byte)(0x20 | abyte1[40]);
            abyte1[49] = (byte)(1 | abyte1[49]);
            abyte1[56] = (byte)(0x10 | abyte1[56]);
            abyte1[65] = (byte)(2 | abyte1[65]);
            abyte1[74] = (byte)(0x10 | abyte1[74]);
            abyte1[80] = (byte)(8 | abyte1[80]);
            abyte1[99] = (byte)(8 | abyte1[99]);
            abyte1[115] = (byte)(1 | abyte1[115]);
            abyte1[121] = (byte)(4 | abyte1[121]);
        }
        if ((byte1 & 0x20) != 0)
        {
            abyte1[9] = (byte)(0x10 | abyte1[9]);
            abyte1[18] = (byte)(2 | abyte1[18]);
            abyte1[24] = (byte)(2 | abyte1[24]);
            abyte1[33] = (byte)(4 | abyte1[33]);
            abyte1[43] = (byte)(0x10 | abyte1[43]);
            abyte1[48] = (byte)(4 | abyte1[48]);
            abyte1[66] = (byte)(0x20 | abyte1[66]);
            abyte1[73] = (byte)(8 | abyte1[73]);
            abyte1[82] = (byte)(8 | abyte1[82]);
            abyte1[91] = (byte)(0x20 | abyte1[91]);
            abyte1[97] = (byte)(2 | abyte1[97]);
            abyte1[106] = (byte)(0x10 | abyte1[106]);
            abyte1[112] = (byte)(8 | abyte1[112]);
            abyte1[122] = (byte)(1 | abyte1[122]);
        }
        if ((byte1 & 0x10) != 0)
        {
            abyte1[14] = (byte)(0x20 | abyte1[14]);
            abyte1[21] = (byte)(4 | abyte1[21]);
            abyte1[30] = (byte)(2 | abyte1[30]);
            abyte1[36] = (byte)(0x10 | abyte1[36]);
            abyte1[45] = (byte)(8 | abyte1[45]);
            abyte1[60] = (byte)(1 | abyte1[60]);
            abyte1[69] = (byte)(2 | abyte1[69]);
            abyte1[87] = (byte)(8 | abyte1[87]);
            abyte1[94] = (byte)(0x10 | abyte1[94]);
            abyte1[103] = (byte)(0x20 | abyte1[103]);
            abyte1[109] = (byte)(1 | abyte1[109]);
            abyte1[118] = (byte)(8 | abyte1[118]);
            abyte1[124] = (byte)(0x20 | abyte1[124]);
        }
        if ((byte1 & 8) != 0)
        {
            abyte1[7] = (byte)(4 | abyte1[7]);
            abyte1[14] = (byte)(2 | abyte1[14]);
            abyte1[20] = (byte)(0x10 | abyte1[20]);
            abyte1[29] = (byte)(8 | abyte1[29]);
            abyte1[44] = (byte)(1 | abyte1[44]);
            abyte1[54] = (byte)(4 | abyte1[54]);
            abyte1[60] = (byte)(8 | abyte1[60]);
            abyte1[71] = (byte)(8 | abyte1[71]);
            abyte1[78] = (byte)(0x10 | abyte1[78]);
            abyte1[87] = (byte)(0x20 | abyte1[87]);
            abyte1[93] = (byte)(1 | abyte1[93]);
            abyte1[102] = (byte)(8 | abyte1[102]);
            abyte1[116] = (byte)(2 | abyte1[116]);
            abyte1[125] = (byte)(4 | abyte1[125]);
        }
        if ((byte1 & 4) != 0)
        {
            abyte1[7] = (byte)(2 | abyte1[7]);
            abyte1[12] = (byte)(1 | abyte1[12]);
            abyte1[22] = (byte)(4 | abyte1[22]);
            abyte1[28] = (byte)(8 | abyte1[28]);
            abyte1[45] = (byte)(0x10 | abyte1[45]);
            abyte1[52] = (byte)(4 | abyte1[52]);
            abyte1[63] = (byte)(0x10 | abyte1[63]);
            abyte1[70] = (byte)(8 | abyte1[70]);
            abyte1[84] = (byte)(2 | abyte1[84]);
            abyte1[95] = (byte)(4 | abyte1[95]);
            abyte1[101] = (byte)(0x20 | abyte1[101]);
            abyte1[111] = (byte)(1 | abyte1[111]);
            abyte1[118] = (byte)(1 | abyte1[118]);
        }
        if ((byte1 & 2) != 0)
        {
            abyte1[6] = (byte)(0x10 | abyte1[6]);
            abyte1[13] = (byte)(0x10 | abyte1[13]);
            abyte1[20] = (byte)(4 | abyte1[20]);
            abyte1[31] = (byte)(0x10 | abyte1[31]);
            abyte1[36] = (byte)(0x20 | abyte1[36]);
            abyte1[46] = (byte)(0x20 | abyte1[46]);
            abyte1[53] = (byte)(4 | abyte1[53]);
            abyte1[62] = (byte)(2 | abyte1[62]);
            abyte1[69] = (byte)(0x20 | abyte1[69]);
            abyte1[79] = (byte)(1 | abyte1[79]);
            abyte1[86] = (byte)(1 | abyte1[86]);
            abyte1[95] = (byte)(2 | abyte1[95]);
            abyte1[101] = (byte)(2 | abyte1[101]);
            abyte1[119] = (byte)(8 | abyte1[119]);
        }
        byte byte2 = abyte0[2];
        if ((byte2 & 0x80) != 0)
        {
            abyte1[0] = (byte)(0x20 | abyte1[0]);
            abyte1[10] = (byte)(8 | abyte1[10]);
            abyte1[19] = (byte)(0x20 | abyte1[19]);
            abyte1[25] = (byte)(2 | abyte1[25]);
            abyte1[34] = (byte)(0x10 | abyte1[34]);
            abyte1[40] = (byte)(8 | abyte1[40]);
            abyte1[59] = (byte)(8 | abyte1[59]);
            abyte1[66] = (byte)(2 | abyte1[66]);
            abyte1[72] = (byte)(2 | abyte1[72]);
            abyte1[81] = (byte)(4 | abyte1[81]);
            abyte1[91] = (byte)(0x10 | abyte1[91]);
            abyte1[96] = (byte)(4 | abyte1[96]);
            abyte1[115] = (byte)(2 | abyte1[115]);
            abyte1[121] = (byte)(8 | abyte1[121]);
        }
        if ((byte2 & 0x40) != 0)
        {
            abyte1[3] = (byte)(0x10 | abyte1[3]);
            abyte1[10] = (byte)(4 | abyte1[10]);
            abyte1[17] = (byte)(0x20 | abyte1[17]);
            abyte1[26] = (byte)(0x20 | abyte1[26]);
            abyte1[33] = (byte)(8 | abyte1[33]);
            abyte1[42] = (byte)(8 | abyte1[42]);
            abyte1[51] = (byte)(0x20 | abyte1[51]);
            abyte1[57] = (byte)(2 | abyte1[57]);
            abyte1[67] = (byte)(4 | abyte1[67]);
            abyte1[82] = (byte)(1 | abyte1[82]);
            abyte1[89] = (byte)(0x10 | abyte1[89]);
            abyte1[98] = (byte)(2 | abyte1[98]);
            abyte1[104] = (byte)(2 | abyte1[104]);
            abyte1[113] = (byte)(4 | abyte1[113]);
            abyte1[120] = (byte)(1 | abyte1[120]);
        }
        if ((byte2 & 0x20) != 0)
        {
            abyte1[1] = (byte)(0x10 | abyte1[1]);
            abyte1[11] = (byte)(8 | abyte1[11]);
            abyte1[27] = (byte)(1 | abyte1[27]);
            abyte1[32] = (byte)(1 | abyte1[32]);
            abyte1[42] = (byte)(4 | abyte1[42]);
            abyte1[49] = (byte)(0x20 | abyte1[49]);
            abyte1[58] = (byte)(0x20 | abyte1[58]);
            abyte1[67] = (byte)(2 | abyte1[67]);
            abyte1[72] = (byte)(0x20 | abyte1[72]);
            abyte1[81] = (byte)(1 | abyte1[81]);
            abyte1[88] = (byte)(0x10 | abyte1[88]);
            abyte1[99] = (byte)(4 | abyte1[99]);
            abyte1[114] = (byte)(1 | abyte1[114]);
        }
        if ((byte2 & 0x10) != 0)
        {
            abyte1[6] = (byte)(0x20 | abyte1[6]);
            abyte1[12] = (byte)(2 | abyte1[12]);
            abyte1[23] = (byte)(4 | abyte1[23]);
            abyte1[29] = (byte)(0x20 | abyte1[29]);
            abyte1[39] = (byte)(1 | abyte1[39]);
            abyte1[46] = (byte)(1 | abyte1[46]);
            abyte1[55] = (byte)(2 | abyte1[55]);
            abyte1[61] = (byte)(2 | abyte1[61]);
            abyte1[70] = (byte)(4 | abyte1[70]);
            abyte1[76] = (byte)(8 | abyte1[76]);
            abyte1[93] = (byte)(0x10 | abyte1[93]);
            abyte1[100] = (byte)(4 | abyte1[100]);
            abyte1[111] = (byte)(0x10 | abyte1[111]);
            abyte1[116] = (byte)(0x20 | abyte1[116]);
        }
        if ((byte2 & 8) != 0)
        {
            abyte1[6] = (byte)(2 | abyte1[6]);
            abyte1[13] = (byte)(0x20 | abyte1[13]);
            abyte1[23] = (byte)(1 | abyte1[23]);
            abyte1[30] = (byte)(1 | abyte1[30]);
            abyte1[39] = (byte)(2 | abyte1[39]);
            abyte1[45] = (byte)(2 | abyte1[45]);
            abyte1[63] = (byte)(8 | abyte1[63]);
            abyte1[77] = (byte)(0x10 | abyte1[77]);
            abyte1[84] = (byte)(4 | abyte1[84]);
            abyte1[95] = (byte)(0x10 | abyte1[95]);
            abyte1[100] = (byte)(0x20 | abyte1[100]);
            abyte1[110] = (byte)(0x20 | abyte1[110]);
            abyte1[117] = (byte)(4 | abyte1[117]);
            abyte1[127] = (byte)(4 | abyte1[127]);
        }
        if ((byte2 & 4) != 0)
        {
            abyte1[4] = (byte)(1 | abyte1[4]);
            abyte1[13] = (byte)(2 | abyte1[13]);
            abyte1[31] = (byte)(8 | abyte1[31]);
            abyte1[38] = (byte)(0x10 | abyte1[38]);
            abyte1[47] = (byte)(0x20 | abyte1[47]);
            abyte1[53] = (byte)(1 | abyte1[53]);
            abyte1[62] = (byte)(8 | abyte1[62]);
            abyte1[68] = (byte)(0x20 | abyte1[68]);
            abyte1[78] = (byte)(0x20 | abyte1[78]);
            abyte1[85] = (byte)(4 | abyte1[85]);
            abyte1[94] = (byte)(2 | abyte1[94]);
            abyte1[100] = (byte)(0x10 | abyte1[100]);
            abyte1[109] = (byte)(8 | abyte1[109]);
            abyte1[127] = (byte)(2 | abyte1[127]);
        }
        if ((byte2 & 2) != 0)
        {
            abyte1[5] = (byte)(0x10 | abyte1[5]);
            abyte1[15] = (byte)(0x20 | abyte1[15]);
            abyte1[21] = (byte)(1 | abyte1[21]);
            abyte1[30] = (byte)(8 | abyte1[30]);
            abyte1[44] = (byte)(2 | abyte1[44]);
            abyte1[55] = (byte)(4 | abyte1[55]);
            abyte1[61] = (byte)(0x20 | abyte1[61]);
            abyte1[68] = (byte)(0x10 | abyte1[68]);
            abyte1[77] = (byte)(8 | abyte1[77]);
            abyte1[92] = (byte)(1 | abyte1[92]);
            abyte1[102] = (byte)(4 | abyte1[102]);
            abyte1[108] = (byte)(8 | abyte1[108]);
            abyte1[126] = (byte)(0x10 | abyte1[126]);
        }
        byte byte3 = abyte0[3];
        if ((byte3 & 0x80) != 0)
        {
            abyte1[2] = (byte)(8 | abyte1[2]);
            abyte1[9] = (byte)(1 | abyte1[9]);
            abyte1[16] = (byte)(0x10 | abyte1[16]);
            abyte1[27] = (byte)(4 | abyte1[27]);
            abyte1[42] = (byte)(1 | abyte1[42]);
            abyte1[49] = (byte)(0x10 | abyte1[49]);
            abyte1[58] = (byte)(2 | abyte1[58]);
            abyte1[75] = (byte)(1 | abyte1[75]);
            abyte1[80] = (byte)(1 | abyte1[80]);
            abyte1[90] = (byte)(4 | abyte1[90]);
            abyte1[97] = (byte)(0x20 | abyte1[97]);
            abyte1[106] = (byte)(0x20 | abyte1[106]);
            abyte1[113] = (byte)(8 | abyte1[113]);
            abyte1[120] = (byte)(0x20 | abyte1[120]);
        }
        if ((byte3 & 0x40) != 0)
        {
            abyte1[2] = (byte)(4 | abyte1[2]);
            abyte1[8] = (byte)(4 | abyte1[8]);
            abyte1[27] = (byte)(2 | abyte1[27]);
            abyte1[32] = (byte)(0x20 | abyte1[32]);
            abyte1[41] = (byte)(1 | abyte1[41]);
            abyte1[48] = (byte)(0x10 | abyte1[48]);
            abyte1[59] = (byte)(4 | abyte1[59]);
            abyte1[66] = (byte)(0x10 | abyte1[66]);
            abyte1[72] = (byte)(8 | abyte1[72]);
            abyte1[91] = (byte)(8 | abyte1[91]);
            abyte1[107] = (byte)(1 | abyte1[107]);
            abyte1[112] = (byte)(1 | abyte1[112]);
            abyte1[123] = (byte)(0x10 | abyte1[123]);
        }
        if ((byte3 & 0x20) != 0)
        {
            abyte1[3] = (byte)(8 | abyte1[3]);
            abyte1[10] = (byte)(2 | abyte1[10]);
            abyte1[16] = (byte)(2 | abyte1[16]);
            abyte1[25] = (byte)(4 | abyte1[25]);
            abyte1[35] = (byte)(0x10 | abyte1[35]);
            abyte1[40] = (byte)(4 | abyte1[40]);
            abyte1[59] = (byte)(2 | abyte1[59]);
            abyte1[65] = (byte)(8 | abyte1[65]);
            abyte1[74] = (byte)(8 | abyte1[74]);
            abyte1[83] = (byte)(0x20 | abyte1[83]);
            abyte1[89] = (byte)(2 | abyte1[89]);
            abyte1[98] = (byte)(0x10 | abyte1[98]);
            abyte1[104] = (byte)(8 | abyte1[104]);
            abyte1[121] = (byte)(0x10 | abyte1[121]);
        }
        if ((byte3 & 0x10) != 0)
        {
            abyte1[4] = (byte)(2 | abyte1[4]);
            abyte1[13] = (byte)(4 | abyte1[13]);
            abyte1[22] = (byte)(2 | abyte1[22]);
            abyte1[28] = (byte)(0x10 | abyte1[28]);
            abyte1[37] = (byte)(8 | abyte1[37]);
            abyte1[52] = (byte)(1 | abyte1[52]);
            abyte1[62] = (byte)(4 | abyte1[62]);
            abyte1[79] = (byte)(8 | abyte1[79]);
            abyte1[86] = (byte)(0x10 | abyte1[86]);
            abyte1[95] = (byte)(0x20 | abyte1[95]);
            abyte1[101] = (byte)(1 | abyte1[101]);
            abyte1[110] = (byte)(8 | abyte1[110]);
            abyte1[126] = (byte)(0x20 | abyte1[126]);
        }
        if ((byte3 & 8) != 0)
        {
            abyte1[5] = (byte)(0x20 | abyte1[5]);
            abyte1[12] = (byte)(0x10 | abyte1[12]);
            abyte1[21] = (byte)(8 | abyte1[21]);
            abyte1[36] = (byte)(1 | abyte1[36]);
            abyte1[46] = (byte)(4 | abyte1[46]);
            abyte1[52] = (byte)(8 | abyte1[52]);
            abyte1[70] = (byte)(0x10 | abyte1[70]);
            abyte1[79] = (byte)(0x20 | abyte1[79]);
            abyte1[85] = (byte)(1 | abyte1[85]);
            abyte1[94] = (byte)(8 | abyte1[94]);
            abyte1[108] = (byte)(2 | abyte1[108]);
            abyte1[119] = (byte)(4 | abyte1[119]);
            abyte1[126] = (byte)(2 | abyte1[126]);
        }
        if ((byte3 & 4) != 0)
        {
            abyte1[5] = (byte)(2 | abyte1[5]);
            abyte1[14] = (byte)(4 | abyte1[14]);
            abyte1[20] = (byte)(8 | abyte1[20]);
            abyte1[37] = (byte)(0x10 | abyte1[37]);
            abyte1[44] = (byte)(4 | abyte1[44]);
            abyte1[55] = (byte)(0x10 | abyte1[55]);
            abyte1[60] = (byte)(0x20 | abyte1[60]);
            abyte1[76] = (byte)(2 | abyte1[76]);
            abyte1[87] = (byte)(4 | abyte1[87]);
            abyte1[93] = (byte)(0x20 | abyte1[93]);
            abyte1[103] = (byte)(1 | abyte1[103]);
            abyte1[110] = (byte)(1 | abyte1[110]);
            abyte1[119] = (byte)(2 | abyte1[119]);
            abyte1[124] = (byte)(1 | abyte1[124]);
        }
        if ((byte3 & 2) != 0)
        {
            abyte1[7] = (byte)(0x20 | abyte1[7]);
            abyte1[12] = (byte)(4 | abyte1[12]);
            abyte1[23] = (byte)(0x10 | abyte1[23]);
            abyte1[28] = (byte)(0x20 | abyte1[28]);
            abyte1[38] = (byte)(0x20 | abyte1[38]);
            abyte1[45] = (byte)(4 | abyte1[45]);
            abyte1[54] = (byte)(2 | abyte1[54]);
            abyte1[60] = (byte)(0x10 | abyte1[60]);
            abyte1[71] = (byte)(1 | abyte1[71]);
            abyte1[78] = (byte)(1 | abyte1[78]);
            abyte1[87] = (byte)(2 | abyte1[87]);
            abyte1[93] = (byte)(2 | abyte1[93]);
            abyte1[111] = (byte)(8 | abyte1[111]);
            abyte1[118] = (byte)(0x10 | abyte1[118]);
            abyte1[125] = (byte)(0x10 | abyte1[125]);
        }
        byte byte4 = abyte0[4];
        if ((byte4 & 0x80) != 0)
        {
            abyte1[1] = (byte)(1 | abyte1[1]);
            abyte1[11] = (byte)(0x20 | abyte1[11]);
            abyte1[17] = (byte)(2 | abyte1[17]);
            abyte1[26] = (byte)(0x10 | abyte1[26]);
            abyte1[32] = (byte)(8 | abyte1[32]);
            abyte1[51] = (byte)(8 | abyte1[51]);
            abyte1[64] = (byte)(2 | abyte1[64]);
            abyte1[73] = (byte)(4 | abyte1[73]);
            abyte1[83] = (byte)(0x10 | abyte1[83]);
            abyte1[88] = (byte)(4 | abyte1[88]);
            abyte1[107] = (byte)(2 | abyte1[107]);
            abyte1[112] = (byte)(0x20 | abyte1[112]);
            abyte1[122] = (byte)(8 | abyte1[122]);
        }
        if ((byte4 & 0x40) != 0)
        {
            abyte1[0] = (byte)(4 | abyte1[0]);
            abyte1[9] = (byte)(0x20 | abyte1[9]);
            abyte1[18] = (byte)(0x20 | abyte1[18]);
            abyte1[25] = (byte)(8 | abyte1[25]);
            abyte1[34] = (byte)(8 | abyte1[34]);
            abyte1[43] = (byte)(0x20 | abyte1[43]);
            abyte1[49] = (byte)(2 | abyte1[49]);
            abyte1[58] = (byte)(0x10 | abyte1[58]);
            abyte1[74] = (byte)(1 | abyte1[74]);
            abyte1[81] = (byte)(0x10 | abyte1[81]);
            abyte1[90] = (byte)(2 | abyte1[90]);
            abyte1[96] = (byte)(2 | abyte1[96]);
            abyte1[105] = (byte)(4 | abyte1[105]);
            abyte1[115] = (byte)(0x10 | abyte1[115]);
            abyte1[122] = (byte)(4 | abyte1[122]);
        }
        if ((byte4 & 0x20) != 0)
        {
            abyte1[2] = (byte)(2 | abyte1[2]);
            abyte1[19] = (byte)(1 | abyte1[19]);
            abyte1[24] = (byte)(1 | abyte1[24]);
            abyte1[34] = (byte)(4 | abyte1[34]);
            abyte1[41] = (byte)(0x20 | abyte1[41]);
            abyte1[50] = (byte)(0x20 | abyte1[50]);
            abyte1[57] = (byte)(8 | abyte1[57]);
            abyte1[64] = (byte)(0x20 | abyte1[64]);
            abyte1[73] = (byte)(1 | abyte1[73]);
            abyte1[80] = (byte)(0x10 | abyte1[80]);
            abyte1[91] = (byte)(4 | abyte1[91]);
            abyte1[106] = (byte)(1 | abyte1[106]);
            abyte1[113] = (byte)(0x10 | abyte1[113]);
            abyte1[123] = (byte)(8 | abyte1[123]);
        }
        if ((byte4 & 0x10) != 0)
        {
            abyte1[3] = (byte)(4 | abyte1[3]);
            abyte1[10] = (byte)(0x10 | abyte1[10]);
            abyte1[16] = (byte)(8 | abyte1[16]);
            abyte1[35] = (byte)(8 | abyte1[35]);
            abyte1[51] = (byte)(1 | abyte1[51]);
            abyte1[56] = (byte)(1 | abyte1[56]);
            abyte1[67] = (byte)(0x10 | abyte1[67]);
            abyte1[72] = (byte)(4 | abyte1[72]);
            abyte1[91] = (byte)(2 | abyte1[91]);
            abyte1[96] = (byte)(0x20 | abyte1[96]);
            abyte1[105] = (byte)(1 | abyte1[105]);
            abyte1[112] = (byte)(0x10 | abyte1[112]);
            abyte1[121] = (byte)(2 | abyte1[121]);
        }
        if ((byte4 & 8) != 0)
        {
            abyte1[4] = (byte)(0x10 | abyte1[4]);
            abyte1[15] = (byte)(1 | abyte1[15]);
            abyte1[22] = (byte)(1 | abyte1[22]);
            abyte1[31] = (byte)(2 | abyte1[31]);
            abyte1[37] = (byte)(2 | abyte1[37]);
            abyte1[55] = (byte)(8 | abyte1[55]);
            abyte1[62] = (byte)(0x10 | abyte1[62]);
            abyte1[69] = (byte)(0x10 | abyte1[69]);
            abyte1[76] = (byte)(4 | abyte1[76]);
            abyte1[87] = (byte)(0x10 | abyte1[87]);
            abyte1[92] = (byte)(0x20 | abyte1[92]);
            abyte1[102] = (byte)(0x20 | abyte1[102]);
            abyte1[109] = (byte)(4 | abyte1[109]);
            abyte1[118] = (byte)(2 | abyte1[118]);
            abyte1[125] = (byte)(0x20 | abyte1[125]);
        }
        if ((byte4 & 4) != 0)
        {
            abyte1[6] = (byte)(4 | abyte1[6]);
            abyte1[23] = (byte)(8 | abyte1[23]);
            abyte1[30] = (byte)(0x10 | abyte1[30]);
            abyte1[39] = (byte)(0x20 | abyte1[39]);
            abyte1[45] = (byte)(1 | abyte1[45]);
            abyte1[54] = (byte)(8 | abyte1[54]);
            abyte1[70] = (byte)(0x20 | abyte1[70]);
            abyte1[77] = (byte)(4 | abyte1[77]);
            abyte1[86] = (byte)(2 | abyte1[86]);
            abyte1[92] = (byte)(0x10 | abyte1[92]);
            abyte1[101] = (byte)(8 | abyte1[101]);
            abyte1[116] = (byte)(1 | abyte1[116]);
            abyte1[125] = (byte)(2 | abyte1[125]);
        }
        if ((byte4 & 2) != 0)
        {
            abyte1[4] = (byte)(4 | abyte1[4]);
            abyte1[13] = (byte)(1 | abyte1[13]);
            abyte1[22] = (byte)(8 | abyte1[22]);
            abyte1[36] = (byte)(2 | abyte1[36]);
            abyte1[47] = (byte)(4 | abyte1[47]);
            abyte1[53] = (byte)(0x20 | abyte1[53]);
            abyte1[63] = (byte)(1 | abyte1[63]);
            abyte1[69] = (byte)(8 | abyte1[69]);
            abyte1[84] = (byte)(1 | abyte1[84]);
            abyte1[94] = (byte)(4 | abyte1[94]);
            abyte1[100] = (byte)(8 | abyte1[100]);
            abyte1[117] = (byte)(0x10 | abyte1[117]);
            abyte1[127] = (byte)(0x20 | abyte1[127]);
        }
        byte byte5 = abyte0[5];
        if ((byte5 & 0x80) != 0)
        {
            abyte1[3] = (byte)(0x20 | abyte1[3]);
            abyte1[8] = (byte)(0x10 | abyte1[8]);
            abyte1[19] = (byte)(4 | abyte1[19]);
            abyte1[34] = (byte)(1 | abyte1[34]);
            abyte1[41] = (byte)(0x10 | abyte1[41]);
            abyte1[50] = (byte)(2 | abyte1[50]);
            abyte1[56] = (byte)(2 | abyte1[56]);
            abyte1[67] = (byte)(1 | abyte1[67]);
            abyte1[72] = (byte)(1 | abyte1[72]);
            abyte1[82] = (byte)(4 | abyte1[82]);
            abyte1[89] = (byte)(0x20 | abyte1[89]);
            abyte1[98] = (byte)(0x20 | abyte1[98]);
            abyte1[105] = (byte)(8 | abyte1[105]);
            abyte1[114] = (byte)(8 | abyte1[114]);
            abyte1[121] = (byte)(1 | abyte1[121]);
        }
        if ((byte5 & 0x40) != 0)
        {
            abyte1[1] = (byte)(0x20 | abyte1[1]);
            abyte1[19] = (byte)(2 | abyte1[19]);
            abyte1[24] = (byte)(0x20 | abyte1[24]);
            abyte1[33] = (byte)(1 | abyte1[33]);
            abyte1[40] = (byte)(0x10 | abyte1[40]);
            abyte1[51] = (byte)(4 | abyte1[51]);
            abyte1[64] = (byte)(8 | abyte1[64]);
            abyte1[83] = (byte)(8 | abyte1[83]);
            abyte1[99] = (byte)(1 | abyte1[99]);
            abyte1[104] = (byte)(1 | abyte1[104]);
            abyte1[114] = (byte)(4 | abyte1[114]);
            abyte1[120] = (byte)(4 | abyte1[120]);
        }
        if ((byte5 & 0x20) != 0)
        {
            abyte1[8] = (byte)(2 | abyte1[8]);
            abyte1[17] = (byte)(4 | abyte1[17]);
            abyte1[27] = (byte)(0x10 | abyte1[27]);
            abyte1[32] = (byte)(4 | abyte1[32]);
            abyte1[51] = (byte)(2 | abyte1[51]);
            abyte1[56] = (byte)(0x20 | abyte1[56]);
            abyte1[66] = (byte)(8 | abyte1[66]);
            abyte1[75] = (byte)(0x20 | abyte1[75]);
            abyte1[81] = (byte)(2 | abyte1[81]);
            abyte1[90] = (byte)(0x10 | abyte1[90]);
            abyte1[96] = (byte)(8 | abyte1[96]);
            abyte1[115] = (byte)(8 | abyte1[115]);
            abyte1[122] = (byte)(2 | abyte1[122]);
        }
        if ((byte5 & 0x10) != 0)
        {
            abyte1[2] = (byte)(0x10 | abyte1[2]);
            abyte1[18] = (byte)(1 | abyte1[18]);
            abyte1[25] = (byte)(0x10 | abyte1[25]);
            abyte1[34] = (byte)(2 | abyte1[34]);
            abyte1[40] = (byte)(2 | abyte1[40]);
            abyte1[49] = (byte)(4 | abyte1[49]);
            abyte1[59] = (byte)(0x10 | abyte1[59]);
            abyte1[66] = (byte)(4 | abyte1[66]);
            abyte1[73] = (byte)(0x20 | abyte1[73]);
            abyte1[82] = (byte)(0x20 | abyte1[82]);
            abyte1[89] = (byte)(8 | abyte1[89]);
            abyte1[98] = (byte)(8 | abyte1[98]);
            abyte1[107] = (byte)(0x20 | abyte1[107]);
            abyte1[113] = (byte)(2 | abyte1[113]);
            abyte1[123] = (byte)(4 | abyte1[123]);
        }
        if ((byte5 & 8) != 0)
        {
            abyte1[7] = (byte)(1 | abyte1[7]);
            abyte1[13] = (byte)(8 | abyte1[13]);
            abyte1[28] = (byte)(1 | abyte1[28]);
            abyte1[38] = (byte)(4 | abyte1[38]);
            abyte1[44] = (byte)(8 | abyte1[44]);
            abyte1[61] = (byte)(0x10 | abyte1[61]);
            abyte1[71] = (byte)(0x20 | abyte1[71]);
            abyte1[77] = (byte)(1 | abyte1[77]);
            abyte1[86] = (byte)(8 | abyte1[86]);
            abyte1[100] = (byte)(2 | abyte1[100]);
            abyte1[111] = (byte)(4 | abyte1[111]);
            abyte1[117] = (byte)(0x20 | abyte1[117]);
            abyte1[124] = (byte)(0x10 | abyte1[124]);
        }
        if ((byte5 & 4) != 0)
        {
            abyte1[12] = (byte)(8 | abyte1[12]);
            abyte1[29] = (byte)(0x10 | abyte1[29]);
            abyte1[36] = (byte)(4 | abyte1[36]);
            abyte1[47] = (byte)(0x10 | abyte1[47]);
            abyte1[52] = (byte)(0x20 | abyte1[52]);
            abyte1[62] = (byte)(0x20 | abyte1[62]);
            abyte1[68] = (byte)(2 | abyte1[68]);
            abyte1[79] = (byte)(4 | abyte1[79]);
            abyte1[85] = (byte)(0x20 | abyte1[85]);
            abyte1[95] = (byte)(1 | abyte1[95]);
            abyte1[102] = (byte)(1 | abyte1[102]);
            abyte1[111] = (byte)(2 | abyte1[111]);
            abyte1[117] = (byte)(2 | abyte1[117]);
            abyte1[126] = (byte)(4 | abyte1[126]);
        }
        if ((byte5 & 2) != 0)
        {
            abyte1[5] = (byte)(1 | abyte1[5]);
            abyte1[15] = (byte)(0x10 | abyte1[15]);
            abyte1[20] = (byte)(0x20 | abyte1[20]);
            abyte1[30] = (byte)(0x20 | abyte1[30]);
            abyte1[37] = (byte)(4 | abyte1[37]);
            abyte1[46] = (byte)(2 | abyte1[46]);
            abyte1[52] = (byte)(0x10 | abyte1[52]);
            abyte1[61] = (byte)(8 | abyte1[61]);
            abyte1[70] = (byte)(1 | abyte1[70]);
            abyte1[79] = (byte)(2 | abyte1[79]);
            abyte1[85] = (byte)(2 | abyte1[85]);
            abyte1[103] = (byte)(8 | abyte1[103]);
            abyte1[110] = (byte)(0x10 | abyte1[110]);
            abyte1[119] = (byte)(0x20 | abyte1[119]);
            abyte1[124] = (byte)(4 | abyte1[124]);
        }
        byte byte6 = abyte0[6];
        if ((byte6 & 0x80) != 0)
        {
            abyte1[0] = (byte)(0x10 | abyte1[0]);
            abyte1[9] = (byte)(2 | abyte1[9]);
            abyte1[18] = (byte)(0x10 | abyte1[18]);
            abyte1[24] = (byte)(8 | abyte1[24]);
            abyte1[43] = (byte)(8 | abyte1[43]);
            abyte1[59] = (byte)(1 | abyte1[59]);
            abyte1[65] = (byte)(4 | abyte1[65]);
            abyte1[75] = (byte)(0x10 | abyte1[75]);
            abyte1[80] = (byte)(4 | abyte1[80]);
            abyte1[99] = (byte)(2 | abyte1[99]);
            abyte1[104] = (byte)(0x20 | abyte1[104]);
            abyte1[113] = (byte)(1 | abyte1[113]);
            abyte1[123] = (byte)(0x20 | abyte1[123]);
        }
        if ((byte6 & 0x40) != 0)
        {
            abyte1[10] = (byte)(0x20 | abyte1[10]);
            abyte1[17] = (byte)(8 | abyte1[17]);
            abyte1[26] = (byte)(8 | abyte1[26]);
            abyte1[35] = (byte)(0x20 | abyte1[35]);
            abyte1[41] = (byte)(2 | abyte1[41]);
            abyte1[50] = (byte)(0x10 | abyte1[50]);
            abyte1[56] = (byte)(8 | abyte1[56]);
            abyte1[66] = (byte)(1 | abyte1[66]);
            abyte1[73] = (byte)(0x10 | abyte1[73]);
            abyte1[82] = (byte)(2 | abyte1[82]);
            abyte1[88] = (byte)(2 | abyte1[88]);
            abyte1[97] = (byte)(4 | abyte1[97]);
            abyte1[107] = (byte)(0x10 | abyte1[107]);
            abyte1[112] = (byte)(4 | abyte1[112]);
            abyte1[121] = (byte)(0x20 | abyte1[121]);
        }
        if ((byte6 & 0x20) != 0)
        {
            abyte1[0] = (byte)(2 | abyte1[0]);
            abyte1[11] = (byte)(1 | abyte1[11]);
            abyte1[16] = (byte)(1 | abyte1[16]);
            abyte1[26] = (byte)(4 | abyte1[26]);
            abyte1[33] = (byte)(0x20 | abyte1[33]);
            abyte1[42] = (byte)(0x20 | abyte1[42]);
            abyte1[49] = (byte)(8 | abyte1[49]);
            abyte1[58] = (byte)(8 | abyte1[58]);
            abyte1[65] = (byte)(1 | abyte1[65]);
            abyte1[72] = (byte)(0x10 | abyte1[72]);
            abyte1[83] = (byte)(4 | abyte1[83]);
            abyte1[98] = (byte)(1 | abyte1[98]);
            abyte1[105] = (byte)(0x10 | abyte1[105]);
            abyte1[114] = (byte)(2 | abyte1[114]);
        }
        if ((byte6 & 0x10) != 0)
        {
            abyte1[8] = (byte)(8 | abyte1[8]);
            abyte1[27] = (byte)(8 | abyte1[27]);
            abyte1[43] = (byte)(1 | abyte1[43]);
            abyte1[48] = (byte)(1 | abyte1[48]);
            abyte1[58] = (byte)(4 | abyte1[58]);
            abyte1[64] = (byte)(4 | abyte1[64]);
            abyte1[83] = (byte)(2 | abyte1[83]);
            abyte1[88] = (byte)(0x20 | abyte1[88]);
            abyte1[97] = (byte)(1 | abyte1[97]);
            abyte1[104] = (byte)(0x10 | abyte1[104]);
            abyte1[115] = (byte)(4 | abyte1[115]);
            abyte1[122] = (byte)(0x10 | abyte1[122]);
        }
        if ((byte6 & 8) != 0)
        {
            abyte1[5] = (byte)(8 | abyte1[5]);
            abyte1[14] = (byte)(1 | abyte1[14]);
            abyte1[23] = (byte)(2 | abyte1[23]);
            abyte1[29] = (byte)(2 | abyte1[29]);
            abyte1[47] = (byte)(8 | abyte1[47]);
            abyte1[54] = (byte)(0x10 | abyte1[54]);
            abyte1[63] = (byte)(0x20 | abyte1[63]);
            abyte1[68] = (byte)(4 | abyte1[68]);
            abyte1[79] = (byte)(0x10 | abyte1[79]);
            abyte1[84] = (byte)(0x20 | abyte1[84]);
            abyte1[94] = (byte)(0x20 | abyte1[94]);
            abyte1[101] = (byte)(4 | abyte1[101]);
            abyte1[110] = (byte)(2 | abyte1[110]);
            abyte1[116] = (byte)(0x10 | abyte1[116]);
            abyte1[127] = (byte)(1 | abyte1[127]);
        }
        if ((byte6 & 4) != 0)
        {
            abyte1[4] = (byte)(8 | abyte1[4]);
            abyte1[15] = (byte)(8 | abyte1[15]);
            abyte1[22] = (byte)(0x10 | abyte1[22]);
            abyte1[31] = (byte)(0x20 | abyte1[31]);
            abyte1[37] = (byte)(1 | abyte1[37]);
            abyte1[46] = (byte)(8 | abyte1[46]);
            abyte1[60] = (byte)(2 | abyte1[60]);
            abyte1[69] = (byte)(4 | abyte1[69]);
            abyte1[78] = (byte)(2 | abyte1[78]);
            abyte1[84] = (byte)(0x10 | abyte1[84]);
            abyte1[93] = (byte)(8 | abyte1[93]);
            abyte1[108] = (byte)(1 | abyte1[108]);
            abyte1[118] = (byte)(4 | abyte1[118]);
        }
        if ((byte6 & 2) != 0)
        {
            abyte1[7] = (byte)(0x10 | abyte1[7]);
            abyte1[14] = (byte)(8 | abyte1[14]);
            abyte1[28] = (byte)(2 | abyte1[28]);
            abyte1[39] = (byte)(4 | abyte1[39]);
            abyte1[45] = (byte)(0x20 | abyte1[45]);
            abyte1[55] = (byte)(1 | abyte1[55]);
            abyte1[62] = (byte)(1 | abyte1[62]);
            abyte1[76] = (byte)(1 | abyte1[76]);
            abyte1[86] = (byte)(4 | abyte1[86]);
            abyte1[92] = (byte)(8 | abyte1[92]);
            abyte1[109] = (byte)(0x10 | abyte1[109]);
            abyte1[116] = (byte)(4 | abyte1[116]);
            abyte1[125] = (byte)(1 | abyte1[125]);
        }
        byte byte7 = abyte0[7];
        if ((byte7 & 0x80) != 0)
        {
            abyte1[1] = (byte)(2 | abyte1[1]);
            abyte1[11] = (byte)(4 | abyte1[11]);
            abyte1[26] = (byte)(1 | abyte1[26]);
            abyte1[33] = (byte)(0x10 | abyte1[33]);
            abyte1[42] = (byte)(2 | abyte1[42]);
            abyte1[48] = (byte)(2 | abyte1[48]);
            abyte1[57] = (byte)(4 | abyte1[57]);
            abyte1[64] = (byte)(1 | abyte1[64]);
            abyte1[74] = (byte)(4 | abyte1[74]);
            abyte1[81] = (byte)(0x20 | abyte1[81]);
            abyte1[90] = (byte)(0x20 | abyte1[90]);
            abyte1[97] = (byte)(8 | abyte1[97]);
            abyte1[106] = (byte)(8 | abyte1[106]);
            abyte1[115] = (byte)(0x20 | abyte1[115]);
            abyte1[120] = (byte)(0x10 | abyte1[120]);
        }
        if ((byte7 & 0x40) != 0)
        {
            abyte1[2] = (byte)(0x20 | abyte1[2]);
            abyte1[11] = (byte)(2 | abyte1[11]);
            abyte1[16] = (byte)(0x20 | abyte1[16]);
            abyte1[25] = (byte)(1 | abyte1[25]);
            abyte1[32] = (byte)(0x10 | abyte1[32]);
            abyte1[43] = (byte)(4 | abyte1[43]);
            abyte1[58] = (byte)(1 | abyte1[58]);
            abyte1[75] = (byte)(8 | abyte1[75]);
            abyte1[91] = (byte)(1 | abyte1[91]);
            abyte1[96] = (byte)(1 | abyte1[96]);
            abyte1[106] = (byte)(4 | abyte1[106]);
            abyte1[113] = (byte)(0x20 | abyte1[113]);
        }
        if ((byte7 & 0x20) != 0)
        {
            abyte1[3] = (byte)(1 | abyte1[3]);
            abyte1[9] = (byte)(4 | abyte1[9]);
            abyte1[19] = (byte)(0x10 | abyte1[19]);
            abyte1[24] = (byte)(4 | abyte1[24]);
            abyte1[43] = (byte)(2 | abyte1[43]);
            abyte1[48] = (byte)(0x20 | abyte1[48]);
            abyte1[57] = (byte)(1 | abyte1[57]);
            abyte1[67] = (byte)(0x20 | abyte1[67]);
            abyte1[73] = (byte)(2 | abyte1[73]);
            abyte1[82] = (byte)(0x10 | abyte1[82]);
            abyte1[88] = (byte)(8 | abyte1[88]);
            abyte1[107] = (byte)(8 | abyte1[107]);
            abyte1[120] = (byte)(2 | abyte1[120]);
        }
        if ((byte7 & 0x10) != 0)
        {
            abyte1[0] = (byte)(8 | abyte1[0]);
            abyte1[10] = (byte)(1 | abyte1[10]);
            abyte1[17] = (byte)(0x10 | abyte1[17]);
            abyte1[26] = (byte)(2 | abyte1[26]);
            abyte1[32] = (byte)(2 | abyte1[32]);
            abyte1[41] = (byte)(4 | abyte1[41]);
            abyte1[51] = (byte)(0x10 | abyte1[51]);
            abyte1[56] = (byte)(4 | abyte1[56]);
            abyte1[65] = (byte)(0x20 | abyte1[65]);
            abyte1[74] = (byte)(0x20 | abyte1[74]);
            abyte1[81] = (byte)(8 | abyte1[81]);
            abyte1[90] = (byte)(8 | abyte1[90]);
            abyte1[99] = (byte)(0x20 | abyte1[99]);
            abyte1[105] = (byte)(2 | abyte1[105]);
            abyte1[114] = (byte)(0x10 | abyte1[114]);
        }
        if ((byte7 & 8) != 0)
        {
            abyte1[6] = (byte)(1 | abyte1[6]);
            abyte1[20] = (byte)(1 | abyte1[20]);
            abyte1[30] = (byte)(4 | abyte1[30]);
            abyte1[36] = (byte)(8 | abyte1[36]);
            abyte1[53] = (byte)(0x10 | abyte1[53]);
            abyte1[60] = (byte)(4 | abyte1[60]);
            abyte1[69] = (byte)(1 | abyte1[69]);
            abyte1[78] = (byte)(8 | abyte1[78]);
            abyte1[92] = (byte)(2 | abyte1[92]);
            abyte1[103] = (byte)(4 | abyte1[103]);
            abyte1[109] = (byte)(0x20 | abyte1[109]);
            abyte1[119] = (byte)(1 | abyte1[119]);
            abyte1[125] = (byte)(8 | abyte1[125]);
        }
        if ((byte7 & 4) != 0)
        {
            abyte1[7] = (byte)(8 | abyte1[7]);
            abyte1[21] = (byte)(0x10 | abyte1[21]);
            abyte1[28] = (byte)(4 | abyte1[28]);
            abyte1[39] = (byte)(0x10 | abyte1[39]);
            abyte1[44] = (byte)(0x20 | abyte1[44]);
            abyte1[54] = (byte)(0x20 | abyte1[54]);
            abyte1[61] = (byte)(4 | abyte1[61]);
            abyte1[71] = (byte)(4 | abyte1[71]);
            abyte1[77] = (byte)(0x20 | abyte1[77]);
            abyte1[87] = (byte)(1 | abyte1[87]);
            abyte1[94] = (byte)(1 | abyte1[94]);
            abyte1[103] = (byte)(2 | abyte1[103]);
            abyte1[109] = (byte)(2 | abyte1[109]);
            abyte1[124] = (byte)(8 | abyte1[124]);
        }
        if ((byte7 & 2) != 0)
        {
            abyte1[6] = (byte)(8 | abyte1[6]);
            abyte1[12] = (byte)(0x20 | abyte1[12]);
            abyte1[22] = (byte)(0x20 | abyte1[22]);
            abyte1[29] = (byte)(4 | abyte1[29]);
            abyte1[38] = (byte)(2 | abyte1[38]);
            abyte1[44] = (byte)(0x10 | abyte1[44]);
            abyte1[53] = (byte)(8 | abyte1[53]);
            abyte1[71] = (byte)(2 | abyte1[71]);
            abyte1[77] = (byte)(2 | abyte1[77]);
            abyte1[95] = (byte)(8 | abyte1[95]);
            abyte1[102] = (byte)(0x10 | abyte1[102]);
            abyte1[111] = (byte)(0x20 | abyte1[111]);
            abyte1[117] = (byte)(1 | abyte1[117]);
            abyte1[127] = (byte)(0x10 | abyte1[127]);
        }
        a4 = abyte1;
    }

    void a(byte abyte0[], int i1, byte abyte1[], int j1)
    {
        c(abyte0, i1, abyte1, j1);
    }

    void b(byte abyte0[], int i1, byte abyte1[], int j1)
    {
        c(abyte0, i1, abyte1, j1);
    }

    void c(byte abyte0[], int i1, byte abyte1[], int j1)
    {
        int k1 = a(abyte0, i1);
        int l1 = b(abyte0, i1);
        byte abyte2[] = a4;
        byte byte0;
        byte byte1;
        int i2;
        int j2;
        int k2;
        int l2;
        if (a5)
        {
            byte0 = 8;
            byte1 = 120;
        } else
        {
            byte0 = -8;
            byte1 = 0;
        }
        i2 = 0;
        j2 = k1;
        k2 = byte1;
        int l3;
        for (l2 = l1; i2 < 16; l2 = l3)
        {
            int i3 = l2 << 1 | 1 & l2 >> 31;
            int j3 = j2 ^ (a[i3 & 0x3f ^ abyte2[k2 + 0]] ^ b[0x3f & i3 >> 4 ^ abyte2[k2 + 1]] ^ c[0x3f & i3 >> 8 ^ abyte2[k2 + 2]] ^ d[0x3f & i3 >> 12 ^ abyte2[k2 + 3]] ^ e[0x3f & i3 >> 16 ^ abyte2[k2 + 4]] ^ f[0x3f & i3 >> 20 ^ abyte2[k2 + 5]] ^ g[0x3f & i3 >> 24 ^ abyte2[k2 + 6]]);
            int k3 = (l2 & 1) << 5 | 0x1f & l2 >> 27;
            l3 = j3 ^ h[k3 ^ abyte2[k2 + 7]];
            k2 -= byte0;
            i2++;
            j2 = l2;
        }

        a(l2, j2, abyte1, j1);
    }

}
