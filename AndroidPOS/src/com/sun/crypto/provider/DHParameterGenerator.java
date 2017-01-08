// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.sun.crypto.provider;

import java.security.AlgorithmParameterGenerator;
import java.security.AlgorithmParameterGeneratorSpi;
import java.security.AlgorithmParameters;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidParameterException;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import java.security.spec.DSAParameterSpec;
import java.security.spec.InvalidParameterSpecException;
import javax.crypto.spec.DHGenParameterSpec;
import javax.crypto.spec.DHParameterSpec;

// Referenced classes of package com.sun.crypto.provider:
//            SunJCE

public final class DHParameterGenerator extends AlgorithmParameterGeneratorSpi
{

    private int a;
    private int b;
    private SecureRandom c;

    public DHParameterGenerator()
    {
        a = 1024;
        b = 0;
        c = null;
    }

    protected final AlgorithmParameters engineGenerateParameters()
    {
        if (b == 0)
        {
            b = -1 + a;
        }
        if (c == null)
        {
            c = SunJCE.h;
        }
        DSAParameterSpec dsaparameterspec;
        DHParameterSpec dhparameterspec1;
        AlgorithmParameterGenerator algorithmparametergenerator = AlgorithmParameterGenerator.getInstance("DSA");
        algorithmparametergenerator.init(a, c);
        dsaparameterspec = (DSAParameterSpec)algorithmparametergenerator.generateParameters().getParameterSpec(java/security/spec/DSAParameterSpec);
        if (b <= 0)
        {
            break MISSING_BLOCK_LABEL_115;
        }
        dhparameterspec1 = new DHParameterSpec(dsaparameterspec.getP(), dsaparameterspec.getG(), b);
_L1:
        AlgorithmParameters algorithmparameters;
        algorithmparameters = AlgorithmParameters.getInstance("DH", "SunJCE");
        algorithmparameters.init(dhparameterspec1);
        return algorithmparameters;
        DHParameterSpec dhparameterspec;
        try
        {
            dhparameterspec = new DHParameterSpec(dsaparameterspec.getP(), dsaparameterspec.getG());
        }
        catch (InvalidParameterSpecException invalidparameterspecexception)
        {
            throw new RuntimeException(invalidparameterspecexception.getMessage());
        }
        catch (NoSuchAlgorithmException nosuchalgorithmexception)
        {
            throw new RuntimeException(nosuchalgorithmexception.getMessage());
        }
        catch (NoSuchProviderException nosuchproviderexception)
        {
            throw new RuntimeException(nosuchproviderexception.getMessage());
        }
        dhparameterspec1 = dhparameterspec;
          goto _L1
    }

    protected final void engineInit(int i, SecureRandom securerandom)
    {
        if (i < 512 || i > 1024 || i % 64 != 0)
        {
            throw new InvalidParameterException("Keysize must be multiple of 64, and can only range from 512 to 1024 (inclusive)");
        } else
        {
            a = i;
            c = securerandom;
            return;
        }
    }

    protected final void engineInit(AlgorithmParameterSpec algorithmparameterspec, SecureRandom securerandom)
    {
        if (!(algorithmparameterspec instanceof DHGenParameterSpec))
        {
            throw new InvalidAlgorithmParameterException("Inappropriate parameter type");
        }
        DHGenParameterSpec dhgenparameterspec = (DHGenParameterSpec)algorithmparameterspec;
        a = dhgenparameterspec.getPrimeSize();
        if (a < 512 || a > 1024 || a % 64 != 0)
        {
            throw new InvalidAlgorithmParameterException("Modulus size must be multiple of 64, and can only range from 512 to 1024 (inclusive)");
        }
        b = dhgenparameterspec.getExponentSize();
        if (b <= 0)
        {
            throw new InvalidAlgorithmParameterException("Exponent size must be greater than zero");
        }
        if (b >= a)
        {
            throw new InvalidAlgorithmParameterException("Exponent size must be less than modulus size");
        } else
        {
            return;
        }
    }
}
