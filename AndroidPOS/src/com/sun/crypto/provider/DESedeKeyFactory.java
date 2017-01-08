// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.sun.crypto.provider;

import java.security.InvalidKeyException;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.KeySpec;
import javax.crypto.SecretKey;
import javax.crypto.SecretKeyFactorySpi;
import javax.crypto.spec.DESedeKeySpec;

// Referenced classes of package com.sun.crypto.provider:
//            SunJCE, DESedeKey

public final class DESedeKeyFactory extends SecretKeyFactorySpi
{

    public DESedeKeyFactory()
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
        try
        {
            if (keyspec instanceof DESedeKeySpec)
            {
                return new DESedeKey(((DESedeKeySpec)keyspec).getKey());
            } else
            {
                throw new InvalidKeySpecException("Inappropriate key specification");
            }
        }
        catch (InvalidKeyException invalidkeyexception)
        {
            return null;
        }
    }

    protected final KeySpec engineGetKeySpec(SecretKey secretkey, Class class1)
    {
        try
        {
            if ((secretkey instanceof SecretKey) && secretkey.getAlgorithm().equalsIgnoreCase("DESede") && secretkey.getFormat().equalsIgnoreCase("RAW"))
            {
                if (javax/crypto/spec/DESedeKeySpec.isAssignableFrom(class1))
                {
                    return new DESedeKeySpec(secretkey.getEncoded());
                } else
                {
                    throw new InvalidKeySpecException("Inappropriate key specification");
                }
            }
        }
        catch (InvalidKeyException invalidkeyexception)
        {
            throw new InvalidKeySpecException("Secret key has wrong size");
        }
        throw new InvalidKeySpecException("Inappropriate key format/algorithm");
    }

    protected final SecretKey engineTranslateKey(SecretKey secretkey)
    {
        if (secretkey == null)
        {
            break MISSING_BLOCK_LABEL_56;
        }
        if (!secretkey.getAlgorithm().equalsIgnoreCase("DESede") || !secretkey.getFormat().equalsIgnoreCase("RAW"))
        {
            break MISSING_BLOCK_LABEL_56;
        }
        if (secretkey instanceof DESedeKey)
        {
            return secretkey;
        }
        return engineGenerateSecret((DESedeKeySpec)engineGetKeySpec(secretkey, javax/crypto/spec/DESedeKeySpec));
        throw new InvalidKeyException("Inappropriate key format/algorithm");
        InvalidKeySpecException invalidkeyspecexception;
        invalidkeyspecexception;
        throw new InvalidKeyException("Cannot translate key");
    }
}
