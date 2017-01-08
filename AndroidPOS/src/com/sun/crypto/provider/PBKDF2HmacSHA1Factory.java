// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.sun.crypto.provider;

import java.security.InvalidKeyException;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.KeySpec;
import javax.crypto.SecretKey;
import javax.crypto.SecretKeyFactorySpi;
import javax.crypto.interfaces.PBEKey;
import javax.crypto.spec.PBEKeySpec;

// Referenced classes of package com.sun.crypto.provider:
//            SunJCE, SunJCE_ae

public final class PBKDF2HmacSHA1Factory extends SecretKeyFactorySpi
{

    public PBKDF2HmacSHA1Factory()
    {
        if (!SunJCE.b(getClass()))
        {
            throw new SecurityException("The SunJCE provider may have been tampered.");
        } else
        {
            return;
        }
    }

    protected final SecretKey engineGenerateSecret(KeySpec keyspec)
    {
        if (!(keyspec instanceof PBEKeySpec))
        {
            throw new InvalidKeySpecException("Invalid key spec");
        } else
        {
            return new SunJCE_ae((PBEKeySpec)keyspec, "HmacSHA1");
        }
    }

    protected final KeySpec engineGetKeySpec(SecretKey secretkey, Class class1)
    {
        if (secretkey instanceof PBEKey)
        {
            if (class1 != null && javax/crypto/spec/PBEKeySpec.isAssignableFrom(class1))
            {
                PBEKey pbekey = (PBEKey)secretkey;
                return new PBEKeySpec(pbekey.getPassword(), pbekey.getSalt(), pbekey.getIterationCount(), 8 * pbekey.getEncoded().length);
            } else
            {
                throw new InvalidKeySpecException("Invalid key spec");
            }
        } else
        {
            throw new InvalidKeySpecException("Invalid key format/algorithm");
        }
    }

    protected final SecretKey engineTranslateKey(SecretKey secretkey)
    {
        if (secretkey != null && secretkey.getAlgorithm().equalsIgnoreCase("PBKDF2WithHmacSHA1") && secretkey.getFormat().equalsIgnoreCase("RAW"))
        {
            if (secretkey instanceof SunJCE_ae)
            {
                return secretkey;
            }
            if (secretkey instanceof PBEKey)
            {
                PBEKey pbekey = (PBEKey)secretkey;
                SunJCE_ae sunjce_ae;
                try
                {
                    sunjce_ae = new SunJCE_ae(new PBEKeySpec(pbekey.getPassword(), pbekey.getSalt(), pbekey.getIterationCount(), 8 * pbekey.getEncoded().length), "HmacSHA1");
                }
                catch (InvalidKeySpecException invalidkeyspecexception)
                {
                    InvalidKeyException invalidkeyexception = new InvalidKeyException("Invalid key component(s)");
                    invalidkeyexception.initCause(invalidkeyspecexception);
                    throw invalidkeyexception;
                }
                return sunjce_ae;
            }
        }
        throw new InvalidKeyException("Invalid key format/algorithm");
    }
}
