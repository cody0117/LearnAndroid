// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.sun.crypto.provider;

import javax.crypto.ShortBufferException;

// Referenced classes of package com.sun.crypto.provider:
//            SunJCE_j

final class SunJCE_i
    implements SunJCE_j
{

    private int a;

    SunJCE_i(int i)
    {
        a = i;
    }

    public final int a(int i)
    {
        return a - i % a;
    }

    public final void a(byte abyte0[], int i, int j)
    {
        if (abyte0 != null)
        {
            if (i + j > abyte0.length)
            {
                throw new ShortBufferException("Buffer too small to hold padding");
            }
            byte byte0 = (byte)(j & 0xff);
            int k = 0;
            while (k < j) 
            {
                abyte0[k + i] = byte0;
                k++;
            }
        }
    }

    public final int b(byte abyte0[], int i, int j)
    {
        byte byte0 = -1;
        if (abyte0 != null && j != 0) goto _L2; else goto _L1
_L1:
        byte0 = 0;
_L4:
        return byte0;
_L2:
        int l;
        byte byte1 = abyte0[-1 + (i + j)];
        int k = byte1 & 0xff;
        if (k > 0 && k <= a)
        {
            l = (i + j) - k;
            int i1 = 0;
            if (l >= i)
            {
label0:
                do
                {
label1:
                    {
                        if (i1 >= k)
                        {
                            break label1;
                        }
                        if (abyte0[l + i1] != byte1)
                        {
                            break label0;
                        }
                        i1++;
                    }
                } while (true);
            }
        }
        if (true) goto _L4; else goto _L3
_L3:
        return l;
    }
}
