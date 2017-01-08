// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.sun.crypto.provider;

import java.security.SecureRandom;
import javax.crypto.ShortBufferException;

// Referenced classes of package com.sun.crypto.provider:
//            SunJCE_j, SunJCE

final class SunJCE_q
    implements SunJCE_j
{

    private int a;

    SunJCE_q(int i)
    {
        a = i;
    }

    public final int a(int i)
    {
        return a - i % a;
    }

    public final void a(byte abyte0[], int i, int j)
    {
        if (abyte0 == null)
        {
            return;
        }
        if (i + j > abyte0.length)
        {
            throw new ShortBufferException("Buffer too small to hold padding");
        } else
        {
            byte byte0 = (byte)(j & 0xff);
            byte abyte1[] = new byte[j];
            SunJCE.h.nextBytes(abyte1);
            abyte1[j - 1] = byte0;
            System.arraycopy(abyte1, 0, abyte0, i, j);
            return;
        }
    }

    public final int b(byte abyte0[], int i, int j)
    {
        byte byte0 = -1;
        if (abyte0 == null || j == 0)
        {
            byte0 = 0;
        } else
        {
            int k = 0xff & abyte0[-1 + (i + j)];
            if (k > 0 && k <= a)
            {
                int l = (i + j) - k;
                if (l >= i)
                {
                    return l;
                }
            }
        }
        return byte0;
    }
}
