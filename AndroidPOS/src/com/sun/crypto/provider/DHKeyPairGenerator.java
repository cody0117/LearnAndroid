// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.sun.crypto.provider;

import java.math.BigInteger;
import java.security.GeneralSecurityException;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidParameterException;
import java.security.KeyPair;
import java.security.KeyPairGeneratorSpi;
import java.security.ProviderException;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import javax.crypto.spec.DHParameterSpec;
import sun.security.provider.ParameterCache;

// Referenced classes of package com.sun.crypto.provider:
//            SunJCE, DHPublicKey, DHPrivateKey

public final class DHKeyPairGenerator extends KeyPairGeneratorSpi
{

    private DHParameterSpec a;
    private int b;
    private int c;
    private SecureRandom d;

    public DHKeyPairGenerator()
    {
        initialize(1024, null);
    }

    public final KeyPair generateKeyPair()
    {
        if (d == null)
        {
            d = SunJCE.h;
        }
        BigInteger biginteger;
        BigInteger biginteger1;
        BigInteger biginteger2;
        BigInteger biginteger3;
        if (a == null)
        {
            try
            {
                a = ParameterCache.getDHParameterSpec(b, d);
            }
            catch (GeneralSecurityException generalsecurityexception)
            {
                throw new ProviderException(generalsecurityexception);
            }
        }
        biginteger = a.getP();
        biginteger1 = a.getG();
        if (c <= 0)
        {
            c = Math.max(384, b >> 1);
            c = Math.min(c, b);
        }
        biginteger2 = biginteger.subtract(BigInteger.valueOf(2L));
        do
        {
            biginteger3 = new BigInteger(c, d);
        } while (biginteger3.compareTo(BigInteger.ONE) < 0 || biginteger3.compareTo(biginteger2) > 0);
        return new KeyPair(new DHPublicKey(biginteger1.modPow(biginteger3, biginteger), biginteger, biginteger1, c), new DHPrivateKey(biginteger3, biginteger, biginteger1, c));
    }

    public final void initialize(int i, SecureRandom securerandom)
    {
        if (i < 512 || i > 1024 || i % 64 != 0)
        {
            throw new InvalidParameterException("Keysize must be multiple of 64, and can only range from 512 to 1024 (inclusive)");
        } else
        {
            b = i;
            c = 0;
            d = securerandom;
            a = null;
            return;
        }
    }

    public final void initialize(AlgorithmParameterSpec algorithmparameterspec, SecureRandom securerandom)
    {
        if (!(algorithmparameterspec instanceof DHParameterSpec))
        {
            throw new InvalidAlgorithmParameterException("Inappropriate parameter type");
        }
        a = (DHParameterSpec)algorithmparameterspec;
        b = a.getP().bitLength();
        if (b < 512 || b > 1024 || b % 64 != 0)
        {
            throw new InvalidAlgorithmParameterException("Prime size must be multiple of 64, and can only range from 512 to 1024 (inclusive)");
        }
        c = a.getL();
        if (c != 0 && c > b)
        {
            throw new InvalidAlgorithmParameterException("Exponent size must not be larger than modulus size");
        } else
        {
            d = securerandom;
            return;
        }
    }
}
