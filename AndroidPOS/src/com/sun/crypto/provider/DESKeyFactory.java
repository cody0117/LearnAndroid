// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.sun.crypto.provider;

import java.security.InvalidKeyException;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.KeySpec;
import javax.crypto.SecretKey;
import javax.crypto.SecretKeyFactorySpi;
import javax.crypto.spec.DESKeySpec;

// Referenced classes of package com.sun.crypto.provider:
//            SunJCE, DESKey

public final class DESKeyFactory extends SecretKeyFactorySpi
{

    public DESKeyFactory()
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
        DESKey deskey;
        try
        {
            if (!(keyspec instanceof DESKeySpec))
            {
                throw new InvalidKeySpecException("Inappropriate key specification");
            }
            deskey = new DESKey(((DESKeySpec)keyspec).getKey());
        }
        catch (InvalidKeyException invalidkeyexception)
        {
            return null;
        }
        return deskey;
    }

    protected final KeySpec engineGetKeySpec(SecretKey secretkey, Class class1)
    {
        try
        {
            if (!(secretkey instanceof SecretKey) || !secretkey.getAlgorithm().equalsIgnoreCase("DES") || !secretkey.getFormat().equalsIgnoreCase("RAW"))
            {
                break MISSING_BLOCK_LABEL_83;
            }
        }
        catch (InvalidKeyException invalidkeyexception)
        {
            throw new InvalidKeySpecException("Secret key has wrong size");
        }
        if (class1 == null)
        {
            break MISSING_BLOCK_LABEL_62;
        }
        if (javax/crypto/spec/DESKeySpec.isAssignableFrom(class1))
        {
            return new DESKeySpec(secretkey.getEncoded());
        }
        throw new InvalidKeySpecException("Inappropriate key specification");
        throw new InvalidKeySpecException("Inappropriate key format/algorithm");
    }

    protected final SecretKey engineTranslateKey(SecretKey secretkey)
    {
        if (secretkey == null)
        {
            break MISSING_BLOCK_LABEL_56;
        }
        if (!secretkey.getAlgorithm().equalsIgnoreCase("DES") || !secretkey.getFormat().equalsIgnoreCase("RAW"))
        {
            break MISSING_BLOCK_LABEL_56;
        }
        if (secretkey instanceof DESKey)
        {
            return secretkey;
        }
        return engineGenerateSecret((DESKeySpec)engineGetKeySpec(secretkey, javax/crypto/spec/DESKeySpec));
        throw new InvalidKeyException("Inappropriate key format/algorithm");
        InvalidKeySpecException invalidkeyspecexception;
        invalidkeyspecexception;
        throw new InvalidKeyException("Cannot translate key");
    }
}
