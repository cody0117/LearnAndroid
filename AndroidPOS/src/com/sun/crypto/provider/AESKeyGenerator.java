// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.sun.crypto.provider;

import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidParameterException;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import javax.crypto.KeyGeneratorSpi;
import javax.crypto.SecretKey;
import javax.crypto.spec.SecretKeySpec;

// Referenced classes of package com.sun.crypto.provider:
//            SunJCE, SunJCE_c

public final class AESKeyGenerator extends KeyGeneratorSpi
{

    private SecureRandom a;
    private int b;

    public AESKeyGenerator()
    {
        a = null;
        b = 16;
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
        return new SecretKeySpec(abyte0, "AES");
    }

    protected final void engineInit(int i, SecureRandom securerandom)
    {
        if (i % 8 != 0 || !SunJCE_c.a(i / 8))
        {
            throw new InvalidParameterException("Wrong keysize: must be equal to 128, 192 or 256");
        } else
        {
            b = i / 8;
            engineInit(securerandom);
            return;
        }
    }

    protected final void engineInit(SecureRandom securerandom)
    {
        a = securerandom;
    }

    protected final void engineInit(AlgorithmParameterSpec algorithmparameterspec, SecureRandom securerandom)
    {
        throw new InvalidAlgorithmParameterException("AES key generation does not take any parameters");
    }
}
