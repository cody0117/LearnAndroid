// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import java.security.MessageDigest;

// Referenced classes of package com.google.android.gms.internal:
//            ai, al

public final class am extends ai
{

    private MessageDigest b;

    public am()
    {
    }

    public final byte[] a(String s)
    {
        byte abyte0[];
label0:
        {
            int i = 0;
            String as[] = s.split(" ");
            abyte0 = new byte[as.length];
            for (; i < as.length; i++)
            {
                int k = al.a(as[i]);
                abyte0[i] = (byte)(k & 0xff ^ (0xff00 & k) >> 8 ^ (0xff0000 & k) >> 16 ^ (k & 0xff000000) >> 24);
            }

            b = a();
            byte abyte1[];
            synchronized (a)
            {
                if (b != null)
                {
                    break label0;
                }
                abyte1 = new byte[0];
            }
            return abyte1;
        }
        byte abyte2[];
        b.reset();
        b.update(abyte0);
        abyte2 = b.digest();
        if (abyte2.length <= 4)
        {
            break MISSING_BLOCK_LABEL_175;
        }
        int j = 4;
_L1:
        byte abyte3[];
        abyte3 = new byte[j];
        System.arraycopy(abyte2, 0, abyte3, 0, abyte3.length);
        obj;
        JVM INSTR monitorexit ;
        return abyte3;
        exception;
        throw exception;
        j = abyte2.length;
          goto _L1
    }
}
