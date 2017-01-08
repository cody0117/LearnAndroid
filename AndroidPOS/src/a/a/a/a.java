// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package a.a.a;


public final class a
{

    private static final String a = System.getProperty("line.separator");
    private static final char b[];
    private static final byte c[];

    public static byte[] a(String s)
    {
        int i = 0;
        char ac[] = s.toCharArray();
        int j = ac.length;
        if (j % 4 != 0)
        {
            throw new IllegalArgumentException("Length of Base64 encoded input string is not a multiple of 4.");
        }
        for (; j > 0 && ac[-1 + (j + 0)] == '='; j--) { }
        int k = (j * 3) / 4;
        byte abyte0[] = new byte[k];
        int l = j + 0;
        int i1 = 0;
        while (i < l) 
        {
            int j1 = i + 1;
            char c1 = ac[i];
            int k1 = j1 + 1;
            char c2 = ac[j1];
            char c3;
            int l1;
            char c4;
            if (k1 < l)
            {
                int l3 = k1 + 1;
                c3 = ac[k1];
                k1 = l3;
            } else
            {
                c3 = 'A';
            }
            if (k1 < l)
            {
                int k3 = k1 + 1;
                c4 = ac[k1];
                l1 = k3;
            } else
            {
                l1 = k1;
                c4 = 'A';
            }
            if (c1 > '\177' || c2 > '\177' || c3 > '\177' || c4 > '\177')
            {
                throw new IllegalArgumentException("Illegal character in Base64 encoded data.");
            }
            byte byte0 = c[c1];
            byte byte1 = c[c2];
            byte byte2 = c[c3];
            byte byte3 = c[c4];
            if (byte0 < 0 || byte1 < 0 || byte2 < 0 || byte3 < 0)
            {
                throw new IllegalArgumentException("Illegal character in Base64 encoded data.");
            }
            int i2 = byte0 << 2 | byte1 >>> 4;
            int j2 = (byte1 & 0xf) << 4 | byte2 >>> 2;
            int k2 = byte3 | (byte2 & 3) << 6;
            int l2 = i1 + 1;
            abyte0[i1] = (byte)i2;
            int i3;
            int j3;
            if (l2 < k)
            {
                i3 = l2 + 1;
                abyte0[l2] = (byte)j2;
            } else
            {
                i3 = l2;
            }
            if (i3 < k)
            {
                j3 = i3 + 1;
                abyte0[i3] = (byte)k2;
            } else
            {
                j3 = i3;
            }
            i1 = j3;
            i = l1;
        }
        return abyte0;
    }

    static 
    {
        b = new char[64];
        char c1 = 'A';
        int i;
        int l1;
        for (i = 0; c1 <= 'Z'; i = l1)
        {
            char ac3[] = b;
            l1 = i + 1;
            ac3[i] = c1;
            c1++;
        }

        for (char c2 = 'a'; c2 <= 'z';)
        {
            char ac2[] = b;
            int k1 = i + 1;
            ac2[i] = c2;
            c2++;
            i = k1;
        }

        for (char c3 = '0'; c3 <= '9';)
        {
            char ac1[] = b;
            int j1 = i + 1;
            ac1[i] = c3;
            c3++;
            i = j1;
        }

        char ac[] = b;
        int j = i + 1;
        ac[i] = '+';
        b[j] = '/';
        c = new byte[128];
        int k = 0;
        int i1;
        do
        {
            int l = c.length;
            i1 = 0;
            if (k >= l)
            {
                break;
            }
            c[k] = -1;
            k++;
        } while (true);
        for (; i1 < 64; i1++)
        {
            c[b[i1]] = (byte)i1;
        }

    }
}
