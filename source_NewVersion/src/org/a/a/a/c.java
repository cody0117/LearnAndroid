// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.a.a.a;

import java.io.Reader;

// Referenced classes of package org.a.a.a:
//            d, b

final class c
{

    private static final int a[];
    private static final char b[];
    private static final int c[];
    private static final int d[];
    private static final int e[];
    private static final String f[];
    private static final int g[];
    private Reader h;
    private int i;
    private int j;
    private char k[];
    private int l;
    private int m;
    private int n;
    private int o;
    private int p;
    private int q;
    private int r;
    private boolean s;
    private boolean t;
    private StringBuffer u;

    c()
    {
        j = 0;
        k = new char[16384];
        s = true;
        u = new StringBuffer();
        h = null;
    }

    private String c()
    {
        return new String(k, n, l - n);
    }

    final int a()
    {
        return q;
    }

    public final void a(Reader reader)
    {
        h = reader;
        s = true;
        t = false;
        n = 0;
        o = 0;
        l = 0;
        m = 0;
        r = 0;
        q = 0;
        p = 0;
        j = 0;
    }

    public final d b()
    {
        int i1;
        char ac[];
        char ac1[];
        int ai[];
        int ai1[];
        int ai2[];
        i1 = o;
        ac = k;
        ac1 = b;
        ai = e;
        ai1 = d;
        ai2 = g;
_L5:
        int j1;
        int k1;
        int l1;
        j1 = l;
        q = q + (j1 - n);
        k1 = -1;
        n = j1;
        m = j1;
        i = a[j];
        l1 = j1;
_L11:
        if (l1 < i1) goto _L2; else goto _L1
_L1:
        if (!t) goto _L4; else goto _L3
_L3:
        char c1 = '\uFFFF';
_L6:
        int i2;
        int l2;
        int i3;
        l = j1;
        if (k1 >= 0)
        {
            k1 = c[k1];
        }
        switch (k1)
        {
        default:
            int j2;
            int k2;
            Exception exception;
            int j3;
            int k3;
            boolean flag;
            int l3;
            int i4;
            char ac2[];
            int j4;
            int k4;
            char ac3[];
            int l4;
            char ac4[];
            if (c1 == -1 && n == m)
            {
                t = true;
                return null;
            }
            String s1;
            try
            {
                s1 = f[1];
            }
            catch (ArrayIndexOutOfBoundsException arrayindexoutofboundsexception)
            {
                s1 = f[0];
            }
            throw new Error(s1);

        case 11: // '\013'
            u.append(c());
            break;

        case 4: // '\004'
            u.delete(0, u.length());
            j = 2;
            break;

        case 16: // '\020'
            u.append('\b');
            break;

        case 6: // '\006'
            return new d(2, null);

        case 23: // '\027'
            return new d(0, Boolean.valueOf(c()));

        case 22: // '\026'
            return new d(0, null);

        case 13: // '\r'
            j = 0;
            return new d(0, u.toString());

        case 12: // '\f'
            u.append('\\');
            break;

        case 21: // '\025'
            return new d(0, Double.valueOf(c()));

        case 1: // '\001'
            throw new b(q, 0, new Character(k[0 + n]));

        case 8: // '\b'
            return new d(4, null);

        case 19: // '\023'
            u.append('\r');
            break;

        case 15: // '\017'
            u.append('/');
            break;

        case 10: // '\n'
            return new d(6, null);

        case 14: // '\016'
            u.append('"');
            break;

        case 5: // '\005'
            return new d(1, null);

        case 17: // '\021'
            u.append('\f');
            break;

        case 24: // '\030'
            try
            {
                j3 = Integer.parseInt(c().substring(2), 16);
                u.append((char)j3);
            }
            // Misplaced declaration of an exception variable
            catch (Exception exception)
            {
                throw new b(q, 2, exception);
            }
            break;

        case 20: // '\024'
            u.append('\t');
            break;

        case 7: // '\007'
            return new d(3, null);

        case 2: // '\002'
            return new d(0, Long.valueOf(c()));

        case 18: // '\022'
            u.append('\n');
            break;

        case 9: // '\t'
            return new d(5, null);

        case 3: // '\003'
        case 25: // '\031'
        case 26: // '\032'
        case 27: // '\033'
        case 28: // '\034'
        case 29: // '\035'
        case 30: // '\036'
        case 31: // '\037'
        case 32: // ' '
        case 33: // '!'
        case 34: // '"'
        case 35: // '#'
        case 36: // '$'
        case 37: // '%'
        case 38: // '&'
        case 39: // '\''
        case 40: // '('
        case 41: // ')'
        case 42: // '*'
        case 43: // '+'
        case 44: // ','
        case 45: // '-'
        case 46: // '.'
        case 47: // '/'
        case 48: // '0'
            break;
        }
          goto _L5
_L4:
        m = l1;
        l = j1;
        if (n > 0)
        {
            System.arraycopy(k, n, k, 0, o - n);
            o = o - n;
            m = m - n;
            l = l - n;
            n = 0;
        }
        if (m >= k.length)
        {
            ac4 = new char[2 * m];
            System.arraycopy(k, 0, ac4, 0, k.length);
            k = ac4;
        }
        k3 = h.read(k, o, k.length - o);
        if (k3 > 0)
        {
            o = k3 + o;
            flag = false;
        } else
        {
label0:
            {
                if (k3 != 0)
                {
                    break label0;
                }
                k4 = h.read();
                if (k4 == -1)
                {
                    break label0;
                }
                ac3 = k;
                l4 = o;
                o = l4 + 1;
                ac3[l4] = (char)k4;
                flag = false;
            }
        }
_L7:
        l3 = m;
        i4 = l;
        ac2 = k;
        j4 = o;
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_623;
        }
        i1 = j4;
        j1 = i4;
        c1 = '\uFFFF';
        ac = ac2;
          goto _L6
        flag = true;
          goto _L7
        ac = ac2;
        i1 = j4;
        j1 = i4;
        l1 = l3;
_L2:
        i2 = l1 + 1;
        c1 = ac[l1];
        j2 = ai[ai1[i] + ac1[c1]];
        if (j2 == -1) goto _L6; else goto _L8
_L8:
        i = j2;
        k2 = ai2[i];
        if ((k2 & 1) != 1)
        {
            break MISSING_BLOCK_LABEL_1141;
        }
        i3 = i;
        if ((k2 & 8) == 8) goto _L10; else goto _L9
_L9:
        l2 = i3;
        j1 = i2;
_L12:
        k1 = l2;
        l1 = i2;
          goto _L11
_L10:
        k1 = i3;
        j1 = i2;
          goto _L6
        l2 = k1;
          goto _L12
    }

    static 
    {
        int i1;
        char ac[];
        int j1;
        int k1;
        i1 = 0;
        a = (new int[] {
            0, 0, 1, 1
        });
        ac = new char[0x10000];
        j1 = 0;
        k1 = 0;
_L2:
        int l6;
        int i7;
        char c3;
        if (k1 >= 90)
        {
            break; /* Loop/switch isn't completed */
        }
        int k6 = k1 + 1;
        l6 = "\t\000\001\007\001\007\002\000\001\007\022\000\001\007\001\000\001\t\b\000\001\006\001\031\001\002\001\004\001\n\n\003\001\032\006\000\004\001\001\005\001\001\024\000\001\027\001\b\001\030\003\000\001\022\001\013\002\001\001\021\001\f\005\000\001\023\001\000\001\r\003\000\001\016\001\024\001\017\001\020\005\000\001\025\001\000\001\026\uFF82\0".charAt(k1);
        i7 = k6 + 1;
        c3 = "\t\000\001\007\001\007\002\000\001\007\022\000\001\007\001\000\001\t\b\000\001\006\001\031\001\002\001\004\001\n\n\003\001\032\006\000\004\001\001\005\001\001\024\000\001\027\001\b\001\030\003\000\001\022\001\013\002\001\001\021\001\f\005\000\001\023\001\000\001\r\003\000\001\016\001\024\001\017\001\020\005\000\001\025\001\000\001\026\uFF82\0".charAt(k6);
_L9:
        int j7;
        j7 = j1 + 1;
        ac[j1] = c3;
        if (--l6 > 0)
        {
            break MISSING_BLOCK_LABEL_4440;
        }
        j1 = j7;
        k1 = i7;
        if (true) goto _L2; else goto _L1
_L1:
        int ai[];
        int l1;
        int i2;
        int j2;
        b = ac;
        ai = new int[45];
        l1 = "\002\000\002\001\001\002\001\003\001\004\003\001\001\005\001\006\001\007\001\b\001\t\001\n\001\013\001\f\001\r\005\000\001\f\001\016\001\017\001\020\001\021\001\022\001\023\001\024\001\000\001\025\001\000\001\025\004\000\001\026\001\027\002\000\001\030".length();
        i2 = 0;
        j2 = 0;
_L4:
        int l5;
        int i6;
        char c2;
        if (j2 >= l1)
        {
            break; /* Loop/switch isn't completed */
        }
        int k5 = j2 + 1;
        l5 = "\002\000\002\001\001\002\001\003\001\004\003\001\001\005\001\006\001\007\001\b\001\t\001\n\001\013\001\f\001\r\005\000\001\f\001\016\001\017\001\020\001\021\001\022\001\023\001\024\001\000\001\025\001\000\001\025\004\000\001\026\001\027\002\000\001\030".charAt(j2);
        i6 = k5 + 1;
        c2 = "\002\000\002\001\001\002\001\003\001\004\003\001\001\005\001\006\001\007\001\b\001\t\001\n\001\013\001\f\001\r\005\000\001\f\001\016\001\017\001\020\001\021\001\022\001\023\001\024\001\000\001\025\001\000\001\025\004\000\001\026\001\027\002\000\001\030".charAt(k5);
_L8:
        int j6;
        j6 = i2 + 1;
        ai[i2] = c2;
        if (--l5 > 0)
        {
            break MISSING_BLOCK_LABEL_4433;
        }
        i2 = j6;
        j2 = i6;
        if (true) goto _L4; else goto _L3
_L3:
        int ai2[];
        int j3;
        int k3;
        c = ai;
        int ai1[] = new int[45];
        int k2 = "\000\000\000\033\0006\000Q\000l\000\207\0006\000\242\000\275\000\330\0006\0006\0006\0006\0006\0006\000\363\000\u010E\0006\000\u0129\000\u0144\000\u015F\000\u017A\000\u0195\0006\0006\0006\0006\0006\0006\0006\0006\000\u01B0\000\u01CB\000\u01E6\000\u01E6\000\u0201\000\u021C\000\u0237\000\u0252\0006\0006\000\u026D\000\u0288\0006".length();
        int l2 = 0;
        int j5;
        for (int i3 = 0; i3 < k2; i3 = j5)
        {
            int k4 = i3 + 1;
            int l4 = "\000\000\000\033\0006\000Q\000l\000\207\0006\000\242\000\275\000\330\0006\0006\0006\0006\0006\0006\000\363\000\u010E\0006\000\u0129\000\u0144\000\u015F\000\u017A\000\u0195\0006\0006\0006\0006\0006\0006\0006\0006\000\u01B0\000\u01CB\000\u01E6\000\u01E6\000\u0201\000\u021C\000\u0237\000\u0252\0006\0006\000\u026D\000\u0288\0006".charAt(i3) << 16;
            int i5 = l2 + 1;
            j5 = k4 + 1;
            ai1[l2] = l4 | "\000\000\000\033\0006\000Q\000l\000\207\0006\000\242\000\275\000\330\0006\0006\0006\0006\0006\0006\000\363\000\u010E\0006\000\u0129\000\u0144\000\u015F\000\u017A\000\u0195\0006\0006\0006\0006\0006\0006\0006\0006\000\u01B0\000\u01CB\000\u01E6\000\u01E6\000\u0201\000\u021C\000\u0237\000\u0252\0006\0006\000\u026D\000\u0288\0006".charAt(k4);
            l2 = i5;
        }

        d = ai1;
        e = (new int[] {
            2, 2, 3, 4, 2, 2, 2, 5, 2, 6, 
            2, 2, 7, 8, 2, 9, 2, 2, 2, 2, 
            2, 10, 11, 12, 13, 14, 15, 16, 16, 16, 
            16, 16, 16, 16, 16, 17, 18, 16, 16, 16, 
            16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 
            16, 16, 16, 16, -1, -1, -1, -1, -1, -1, 
            -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
            -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
            -1, -1, -1, -1, 4, -1, -1, -1, -1, -1, 
            -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
            -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
            -1, 4, 19, 20, -1, -1, -1, -1, -1, -1, 
            -1, -1, -1, -1, -1, 20, -1, -1, -1, -1, 
            -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
            -1, -1, 5, -1, -1, -1, -1, -1, -1, -1, 
            -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
            -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
            -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
            21, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
            -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
            -1, -1, -1, -1, -1, 22, -1, -1, -1, -1, 
            -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
            -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
            23, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
            -1, -1, -1, 16, 16, 16, 16, 16, 16, 16, 
            16, -1, -1, 16, 16, 16, 16, 16, 16, 16, 
            16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 
            -1, -1, -1, -1, -1, -1, -1, -1, 24, 25, 
            26, 27, 28, 29, 30, 31, 32, -1, -1, -1, 
            -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
            33, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
            -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
            -1, -1, -1, -1, -1, -1, 34, 35, -1, -1, 
            34, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
            -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
            -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
            -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
            36, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
            -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
            -1, -1, -1, -1, -1, -1, -1, 37, -1, -1, 
            -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
            -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
            -1, 38, -1, -1, -1, -1, -1, -1, -1, -1, 
            -1, -1, -1, 39, -1, 39, -1, 39, -1, -1, 
            -1, -1, -1, 39, 39, -1, -1, -1, -1, 39, 
            39, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
            -1, -1, 33, -1, 20, -1, -1, -1, -1, -1, 
            -1, -1, -1, -1, -1, -1, 20, -1, -1, -1, 
            -1, -1, -1, -1, -1, -1, -1, -1, -1, 35, 
            -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
            -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
            -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
            -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
            -1, -1, -1, 38, -1, -1, -1, -1, -1, -1, 
            -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
            -1, -1, -1, -1, -1, -1, -1, -1, -1, 40, 
            -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
            -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
            -1, -1, -1, -1, 41, -1, -1, -1, -1, -1, 
            -1, -1, -1, -1, -1, 42, -1, 42, -1, 42, 
            -1, -1, -1, -1, -1, 42, 42, -1, -1, -1, 
            -1, 42, 42, -1, -1, -1, -1, -1, -1, -1, 
            -1, -1, 43, -1, 43, -1, 43, -1, -1, -1, 
            -1, -1, 43, 43, -1, -1, -1, -1, 43, 43, 
            -1, -1, -1, -1, -1, -1, -1, -1, -1, 44, 
            -1, 44, -1, 44, -1, -1, -1, -1, -1, 44, 
            44, -1, -1, -1, -1, 44, 44, -1, -1, -1, 
            -1, -1, -1, -1, -1
        });
        f = (new String[] {
            "Unkown internal scanner error", "Error: could not match input", "Error: pushback value was too large"
        });
        ai2 = new int[45];
        j3 = "\002\000\001\t\003\001\001\t\003\001\006\t\002\001\001\t\005\000\b\t\001\000\001\001\001\000\001\001\004\000\002\t\002\000\001\t".length();
        k3 = 0;
_L6:
        int i4;
        char c1;
        if (i1 >= j3)
        {
            break; /* Loop/switch isn't completed */
        }
        int l3 = i1 + 1;
        i4 = "\002\000\001\t\003\001\001\t\003\001\006\t\002\001\001\t\005\000\b\t\001\000\001\001\001\000\001\001\004\000\002\t\002\000\001\t".charAt(i1);
        i1 = l3 + 1;
        c1 = "\002\000\001\t\003\001\001\t\003\001\006\t\002\001\001\t\005\000\b\t\001\000\001\001\001\000\001\001\004\000\002\t\002\000\001\t".charAt(l3);
_L7:
        int j4;
        j4 = k3 + 1;
        ai2[k3] = c1;
        if (--i4 > 0)
        {
            break MISSING_BLOCK_LABEL_4426;
        }
        k3 = j4;
        if (true) goto _L6; else goto _L5
_L5:
        g = ai2;
        return;
        k3 = j4;
          goto _L7
        i2 = j6;
          goto _L8
        j1 = j7;
          goto _L9
    }
}
