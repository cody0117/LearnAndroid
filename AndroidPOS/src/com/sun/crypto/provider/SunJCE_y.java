// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.sun.crypto.provider;

import java.security.InvalidKeyException;

// Referenced classes of package com.sun.crypto.provider:
//            SunJCE_w, SunJCE_x

final class SunJCE_y extends SunJCE_w
    implements SunJCE_x
{

    private byte a[];
    private byte b[];
    private byte c[];
    private byte d[];
    private byte e[];

    SunJCE_y()
    {
        a = null;
        b = null;
        c = null;
        d = new byte[8];
        e = new byte[8];
    }

    private boolean a(byte abyte0[], int i, byte abyte1[], int j, int k)
    {
        for (int l = 0; l < k; l++)
        {
            if (abyte0[l + i] != abyte1[l + j])
            {
                return false;
            }
        }

        return true;
    }

    final void a(boolean flag, String s, byte abyte0[])
    {
        if (!s.equalsIgnoreCase("DESede") && !s.equalsIgnoreCase("TripleDES"))
        {
            throw new InvalidKeyException("Wrong algorithm: DESede or TripleDES required");
        }
        if (abyte0.length != 24)
        {
            throw new InvalidKeyException("Wrong key size");
        }
        byte abyte1[] = new byte[8];
        a = new byte[128];
        System.arraycopy(abyte0, 0, abyte1, 0, 8);
        a(abyte1);
        System.arraycopy(super.a4, 0, a, 0, 128);
        if (a(abyte1, 0, abyte0, 16, 8))
        {
            c = a;
        } else
        {
            c = new byte[128];
            System.arraycopy(abyte0, 16, abyte1, 0, 8);
            a(abyte1);
            System.arraycopy(super.a4, 0, c, 0, 128);
        }
        b = new byte[128];
        System.arraycopy(abyte0, 8, abyte1, 0, 8);
        a(abyte1);
        System.arraycopy(super.a4, 0, b, 0, 128);
    }

    final void a(byte abyte0[], int i, byte abyte1[], int j)
    {
        super.a4 = a;
        super.a5 = false;
        c(abyte0, i, d, 0);
        super.a4 = b;
        super.a5 = true;
        c(d, 0, e, 0);
        super.a4 = c;
        super.a5 = false;
        c(e, 0, abyte1, j);
    }

    final void b(byte abyte0[], int i, byte abyte1[], int j)
    {
        super.a4 = c;
        super.a5 = true;
        c(abyte0, i, d, 0);
        super.a4 = b;
        super.a5 = false;
        c(d, 0, e, 0);
        super.a4 = a;
        super.a5 = true;
        c(e, 0, abyte1, j);
    }
}
