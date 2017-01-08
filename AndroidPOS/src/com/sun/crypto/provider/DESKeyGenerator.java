// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.sun.crypto.provider;

import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.InvalidParameterException;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import javax.crypto.KeyGeneratorSpi;
import javax.crypto.SecretKey;
import javax.crypto.spec.DESKeySpec;

// Referenced classes of package com.sun.crypto.provider:
//            SunJCE, DESKey

public final class DESKeyGenerator extends KeyGeneratorSpi
{

    private SecureRandom a;

    public DESKeyGenerator()
    {
        a = null;
        if (!SunJCE.b(getClass()))
        {
            throw new SecurityException("The SunJCE provider may have been tampered.");
        } else
        {
            return;
        }
    }

    static void a(byte abyte0[], int i)
    {
        if (abyte0 != null)
        {
            int j = 0;
            while (j < 8) 
            {
                int k = 0xfe & abyte0[i];
                int l = k | 1 ^ 1 & Integer.bitCount(k);
                int i1 = i + 1;
                abyte0[i] = (byte)l;
                j++;
                i = i1;
            }
        }
    }

    protected final SecretKey engineGenerateKey()
    {
        if (a == null)
        {
            a = SunJCE.h;
        }
        DESKey deskey;
        try
        {
            byte abyte0[] = new byte[8];
            do
            {
                a.nextBytes(abyte0);
                a(abyte0, 0);
            } while (DESKeySpec.isWeak(abyte0, 0));
            deskey = new DESKey(abyte0);
        }
        catch (InvalidKeyException invalidkeyexception)
        {
            return null;
        }
        return deskey;
    }

    protected final void engineInit(int i, SecureRandom securerandom)
    {
        if (i != 56)
        {
            throw new InvalidParameterException("Wrong keysize: must be equal to 56");
        } else
        {
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
        throw new InvalidAlgorithmParameterException("DES key generation does not take any parameters");
    }
}
