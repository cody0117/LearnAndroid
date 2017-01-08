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
import sun.security.internal.spec.TlsRsaPremasterSecretParameterSpec;

// Referenced classes of package com.sun.crypto.provider:
//            SunJCE

public final class TlsRsaPremasterSecretGenerator extends KeyGeneratorSpi
{

    private static final String MSG = "TlsRsaPremasterSecretGenerator must be initialized using a TlsRsaPremasterSecretParameterSpec";
    private SecureRandom random;
    private TlsRsaPremasterSecretParameterSpec spec;

    public TlsRsaPremasterSecretGenerator()
    {
        SunJCE.a(getClass());
    }

    protected final SecretKey engineGenerateKey()
    {
        if (spec == null)
        {
            throw new IllegalStateException("TlsRsaPremasterSecretGenerator must be initialized");
        }
        if (random == null)
        {
            random = new SecureRandom();
        }
        byte abyte0[] = new byte[48];
        random.nextBytes(abyte0);
        abyte0[0] = (byte)spec.getMajorVersion();
        abyte0[1] = (byte)spec.getMinorVersion();
        return new SecretKeySpec(abyte0, "TlsRsaPremasterSecret");
    }

    protected final void engineInit(int i, SecureRandom securerandom)
    {
        throw new InvalidParameterException("TlsRsaPremasterSecretGenerator must be initialized using a TlsRsaPremasterSecretParameterSpec");
    }

    protected final void engineInit(SecureRandom securerandom)
    {
        throw new InvalidParameterException("TlsRsaPremasterSecretGenerator must be initialized using a TlsRsaPremasterSecretParameterSpec");
    }

    protected final void engineInit(AlgorithmParameterSpec algorithmparameterspec, SecureRandom securerandom)
    {
        if (!(algorithmparameterspec instanceof TlsRsaPremasterSecretParameterSpec))
        {
            throw new InvalidAlgorithmParameterException("TlsRsaPremasterSecretGenerator must be initialized using a TlsRsaPremasterSecretParameterSpec");
        } else
        {
            spec = (TlsRsaPremasterSecretParameterSpec)algorithmparameterspec;
            random = securerandom;
            return;
        }
    }
}
