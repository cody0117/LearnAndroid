// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.sun.crypto.provider;

import java.security.AlgorithmParameters;
import java.security.InvalidAlgorithmParameterException;
import java.security.Key;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import java.security.spec.InvalidParameterSpecException;
import javax.crypto.CipherSpi;
import javax.crypto.spec.RC2ParameterSpec;

// Referenced classes of package com.sun.crypto.provider:
//            SunJCE, SunJCE_r, SunJCE_f

public final class RC2Cipher extends CipherSpi
{

    private final SunJCE_f a;
    private final SunJCE_r b = new SunJCE_r();

    public RC2Cipher()
    {
        SunJCE.a(getClass());
        a = new SunJCE_f(b, 8);
    }

    protected final int engineDoFinal(byte abyte0[], int i, int j, byte abyte1[], int k)
    {
        return a.b(abyte0, i, j, abyte1, k);
    }

    protected final byte[] engineDoFinal(byte abyte0[], int i, int j)
    {
        return a.b(abyte0, i, j);
    }

    protected final int engineGetBlockSize()
    {
        return 8;
    }

    protected final byte[] engineGetIV()
    {
        return a.a();
    }

    protected final int engineGetKeySize(Key key)
    {
        byte abyte0[] = SunJCE_f.a(key);
        SunJCE_r.a(key.getAlgorithm(), abyte0.length);
        return abyte0.length << 3;
    }

    protected final int engineGetOutputSize(int i)
    {
        return a.a(i);
    }

    protected final AlgorithmParameters engineGetParameters()
    {
        return a.c("RC2");
    }

    protected final void engineInit(int i, Key key, AlgorithmParameters algorithmparameters, SecureRandom securerandom)
    {
        if (algorithmparameters != null && algorithmparameters.getAlgorithm().equals("RC2"))
        {
            try
            {
                engineInit(i, key, ((AlgorithmParameterSpec) ((RC2ParameterSpec)algorithmparameters.getParameterSpec(javax/crypto/spec/RC2ParameterSpec))), securerandom);
                return;
            }
            catch (InvalidParameterSpecException invalidparameterspecexception)
            {
                throw new InvalidAlgorithmParameterException("Wrong parameter type: RC2 expected");
            }
        } else
        {
            b.a(0);
            a.a(i, key, algorithmparameters, securerandom);
            return;
        }
    }

    protected final void engineInit(int i, Key key, SecureRandom securerandom)
    {
        b.a(0);
        a.a(i, key, securerandom);
    }

    protected final void engineInit(int i, Key key, AlgorithmParameterSpec algorithmparameterspec, SecureRandom securerandom)
    {
        if (algorithmparameterspec != null && (algorithmparameterspec instanceof RC2ParameterSpec))
        {
            b.a(((RC2ParameterSpec)algorithmparameterspec).getEffectiveKeyBits());
        } else
        {
            b.a(0);
        }
        a.a(i, key, algorithmparameterspec, securerandom);
    }

    protected final void engineSetMode(String s)
    {
        a.a(s);
    }

    protected final void engineSetPadding(String s)
    {
        a.b(s);
    }

    protected final Key engineUnwrap(byte abyte0[], String s, int i)
    {
        return a.a(abyte0, s, i);
    }

    protected final int engineUpdate(byte abyte0[], int i, int j, byte abyte1[], int k)
    {
        return a.a(abyte0, i, j, abyte1, k);
    }

    protected final byte[] engineUpdate(byte abyte0[], int i, int j)
    {
        return a.a(abyte0, i, j);
    }

    protected final byte[] engineWrap(Key key)
    {
        return a.b(key);
    }
}
