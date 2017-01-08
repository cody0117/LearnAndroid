// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.sun.crypto.provider;

import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidParameterException;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import javax.crypto.SecretKey;
import javax.crypto.spec.SecretKeySpec;

// Referenced classes of package com.sun.crypto.provider:
//            SunJCE

final class KeyGeneratorCore
{

    private final String a;
    private final int b;
    private int c;
    private SecureRandom d;

    KeyGeneratorCore(String s, int i)
    {
        a = s;
        b = i;
        a(null);
    }

    final SecretKey a()
    {
        if (d == null)
        {
            d = SunJCE.h;
        }
        byte abyte0[] = new byte[7 + c >> 3];
        d.nextBytes(abyte0);
        return new SecretKeySpec(abyte0, a);
    }

    final void a(int i, SecureRandom securerandom)
    {
        if (i < 40)
        {
            throw new InvalidParameterException("Key length must be at least 40 bits");
        } else
        {
            c = i;
            d = securerandom;
            return;
        }
    }

    final void a(SecureRandom securerandom)
    {
        c = b;
        d = securerandom;
    }

    final void a(AlgorithmParameterSpec algorithmparameterspec, SecureRandom securerandom)
    {
        throw new InvalidAlgorithmParameterException((new StringBuilder()).append(a).append(" key generation does not take any parameters").toString());
    }
}
