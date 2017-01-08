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
//            SunJCE

public final class BlowfishKeyGenerator extends KeyGeneratorSpi
{

    private SecureRandom a;
    private int b;

    public BlowfishKeyGenerator()
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
        return new SecretKeySpec(abyte0, "Blowfish");
    }

    protected final void engineInit(int i, SecureRandom securerandom)
    {
        if (i % 8 != 0 || i < 32 || i > 448)
        {
            throw new InvalidParameterException("Keysize must be multiple of 8, and can only range from 32 to 448 (inclusive)");
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
        throw new InvalidAlgorithmParameterException("Blowfish key generation does not take any parameters");
    }
}
