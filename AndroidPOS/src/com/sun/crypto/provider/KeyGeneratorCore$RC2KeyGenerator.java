// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.sun.crypto.provider;

import java.security.InvalidParameterException;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import javax.crypto.KeyGeneratorSpi;
import javax.crypto.SecretKey;

// Referenced classes of package com.sun.crypto.provider:
//            SunJCE, KeyGeneratorCore

public final class  extends KeyGeneratorSpi
{

    private final KeyGeneratorCore a = new KeyGeneratorCore("RC2", 128);

    protected final SecretKey engineGenerateKey()
    {
        return a.a();
    }

    protected final void engineInit(int i, SecureRandom securerandom)
    {
        if (i < 40 || i > 1024)
        {
            throw new InvalidParameterException("Key length for RC2 must be between 40 and 1024 bits");
        } else
        {
            a.a(i, securerandom);
            return;
        }
    }

    protected final void engineInit(SecureRandom securerandom)
    {
        a.a(securerandom);
    }

    protected final void engineInit(AlgorithmParameterSpec algorithmparameterspec, SecureRandom securerandom)
    {
        a.a(algorithmparameterspec, securerandom);
    }

    public ()
    {
        SunJCE.a(getClass());
    }
}
