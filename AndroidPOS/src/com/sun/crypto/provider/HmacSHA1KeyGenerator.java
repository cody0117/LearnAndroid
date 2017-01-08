// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.sun.crypto.provider;

import java.security.InvalidAlgorithmParameterException;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import javax.crypto.KeyGeneratorSpi;
import javax.crypto.SecretKey;
import javax.crypto.spec.SecretKeySpec;

// Referenced classes of package com.sun.crypto.provider:
//            SunJCE

public final class HmacSHA1KeyGenerator extends KeyGeneratorSpi
{

    private SecureRandom a;
    private int b;

    public HmacSHA1KeyGenerator()
    {
        a = null;
        b = 64;
        if (!SunJCE.b(getClass()))
        {
            throw new SecurityException("The SunJCE provider may have been tampered.");
        } else
        {
            return;
        }
    }

    protected final SecretKey engineGenerateKey()
    {
        if (a == null)
        {
            a = SunJCE.h;
        }
        byte abyte0[] = new byte[b];
        a.nextBytes(abyte0);
        return new SecretKeySpec(abyte0, "HmacSHA1");
    }

    protected final void engineInit(int i, SecureRandom securerandom)
    {
        b = (i + 7) / 8;
        a = securerandom;
    }

    protected final void engineInit(SecureRandom securerandom)
    {
        a = securerandom;
    }

    protected final void engineInit(AlgorithmParameterSpec algorithmparameterspec, SecureRandom securerandom)
    {
        throw new InvalidAlgorithmParameterException("HMAC-SHA1 key generation does not take any parameters");
    }
}
