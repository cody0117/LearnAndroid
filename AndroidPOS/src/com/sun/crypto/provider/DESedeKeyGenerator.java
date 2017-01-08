// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.sun.crypto.provider;

import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.InvalidParameterException;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import java.util.Arrays;
import javax.crypto.KeyGeneratorSpi;
import javax.crypto.SecretKey;

// Referenced classes of package com.sun.crypto.provider:
//            SunJCE, DESKeyGenerator, DESedeKey

public final class DESedeKeyGenerator extends KeyGeneratorSpi
{

    private SecureRandom a;
    private int b;

    public DESedeKeyGenerator()
    {
        a = null;
        b = 168;
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
        byte abyte0[] = new byte[24];
        DESedeKey desedekey;
        if (b == 168)
        {
            a.nextBytes(abyte0);
            DESKeyGenerator.a(abyte0, 0);
            DESKeyGenerator.a(abyte0, 8);
            DESKeyGenerator.a(abyte0, 16);
        } else
        {
            byte abyte1[] = new byte[16];
            a.nextBytes(abyte1);
            DESKeyGenerator.a(abyte1, 0);
            DESKeyGenerator.a(abyte1, 8);
            System.arraycopy(abyte1, 0, abyte0, 0, abyte1.length);
            System.arraycopy(abyte1, 0, abyte0, 16, 8);
            Arrays.fill(abyte1, (byte)0);
        }
        try
        {
            desedekey = new DESedeKey(abyte0);
        }
        catch (InvalidKeyException invalidkeyexception)
        {
            throw new RuntimeException(invalidkeyexception.getMessage());
        }
        Arrays.fill(abyte0, (byte)0);
        return desedekey;
    }

    protected final void engineInit(int i, SecureRandom securerandom)
    {
        if (i != 112 && i != 168)
        {
            throw new InvalidParameterException("Wrong keysize: must be equal to 112 or 168");
        } else
        {
            b = i;
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
        throw new InvalidAlgorithmParameterException("Triple DES key generation does not take any parameters");
    }
}
