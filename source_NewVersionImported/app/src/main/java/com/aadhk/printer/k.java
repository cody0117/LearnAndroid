// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.printer;

import android.text.TextUtils;
import java.io.ByteArrayOutputStream;
import java.util.BitSet;
import java.util.StringTokenizer;

// Referenced classes of package com.aadhk.printer:
//            a, PrinterSetting, d

public final class k
{

    public static byte[] a(a a1, PrinterSetting printersetting)
    {
        ByteArrayOutputStream bytearrayoutputstream;
        BitSet bitset;
        String s1;
        String s2;
        String s3;
        byte abyte0[];
        int i;
        bytearrayoutputstream = new ByteArrayOutputStream();
        bitset = a1.a();
        byte byte0 = (byte)a1.c();
        byte byte1 = (byte)(a1.c() >> 8);
        String s = b(printersetting.getCommInitial());
        s1 = b(printersetting.getCommCut());
        s2 = b(printersetting.getCommBeep());
        s3 = b(printersetting.getCommDrawer());
        abyte0 = (new byte[] {
            27, 42, 33, byte0, byte1
        });
        bytearrayoutputstream.write(s.getBytes());
        bytearrayoutputstream.write(d.k);
        i = 0;
_L2:
        int j;
        if (i >= a1.b())
        {
            bytearrayoutputstream.write(d.b);
            bytearrayoutputstream.write(d.b);
            bytearrayoutputstream.write(d.b);
            bytearrayoutputstream.write(d.l);
            if (!TextUtils.isEmpty(s1))
            {
                bytearrayoutputstream.write(s1.getBytes());
            }
            if (!TextUtils.isEmpty(s2) && printersetting.isEnableBeep())
            {
                bytearrayoutputstream.write(s2.getBytes());
            }
            if (!TextUtils.isEmpty(s3) && printersetting.isOpenDrawer())
            {
                bytearrayoutputstream.write(s3.getBytes());
            }
            byte abyte1[] = bytearrayoutputstream.toByteArray();
            bytearrayoutputstream.close();
            return abyte1;
        }
        bytearrayoutputstream.write(abyte0);
        j = 0;
_L3:
label0:
        {
            if (j < a1.c())
            {
                break label0;
            }
            int i2 = i + 24;
            bytearrayoutputstream.write(d.b);
            i = i2;
        }
        if (true) goto _L2; else goto _L1
_L1:
        int l = 0;
_L4:
label1:
        {
            if (l < 3)
            {
                break label1;
            }
            j++;
        }
          goto _L3
        byte byte2;
        int i1;
        byte2 = 0;
        i1 = 0;
_L5:
label2:
        {
            if (i1 < 8)
            {
                break label2;
            }
            bytearrayoutputstream.write(byte2);
            l++;
        }
          goto _L4
        int j1 = j + (i1 + 8 * (l + i / 8)) * a1.c();
        int k1 = bitset.length();
        boolean flag = false;
        if (j1 < k1)
        {
            flag = bitset.get(j1);
        }
        int l1;
        if (flag)
        {
            l1 = 1;
        } else
        {
            l1 = 0;
        }
        byte2 |= (byte)(l1 << 7 - i1);
        i1++;
          goto _L5
    }

    public static byte[] a(String s)
    {
        return b(s).getBytes();
    }

    private static String b(String s)
    {
        StringTokenizer stringtokenizer = new StringTokenizer(s, ",");
        String s1 = "";
        do
        {
            if (!stringtokenizer.hasMoreTokens())
            {
                return s1;
            }
            char c = (char)Integer.parseInt(stringtokenizer.nextToken(), 16);
            s1 = (new StringBuilder(String.valueOf(s1))).append(String.valueOf(c)).toString();
        } while (true);
    }
}
