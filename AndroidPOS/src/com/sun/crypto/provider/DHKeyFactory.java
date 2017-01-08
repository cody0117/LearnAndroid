// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.sun.crypto.provider;

import java.security.InvalidKeyException;
import java.security.Key;
import java.security.KeyFactorySpi;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.KeySpec;
import java.security.spec.PKCS8EncodedKeySpec;
import java.security.spec.X509EncodedKeySpec;
import javax.crypto.interfaces.DHPrivateKey;
import javax.crypto.interfaces.DHPublicKey;
import javax.crypto.spec.DHParameterSpec;
import javax.crypto.spec.DHPrivateKeySpec;
import javax.crypto.spec.DHPublicKeySpec;

// Referenced classes of package com.sun.crypto.provider:
//            SunJCE, DHPrivateKey, DHPublicKey

public final class DHKeyFactory extends KeyFactorySpi
{

    public DHKeyFactory()
    {
        if (!SunJCE.b(getClass()))
        {
            throw new SecurityException("The SunJCE provider may have been tampered.");
        } else
        {
            return;
        }
    }

    protected final PrivateKey engineGeneratePrivate(KeySpec keyspec)
    {
label0:
        {
            com.sun.crypto.provider.DHPrivateKey dhprivatekey;
            try
            {
                if (keyspec instanceof DHPrivateKeySpec)
                {
                    DHPrivateKeySpec dhprivatekeyspec = (DHPrivateKeySpec)keyspec;
                    return new com.sun.crypto.provider.DHPrivateKey(dhprivatekeyspec.getX(), dhprivatekeyspec.getP(), dhprivatekeyspec.getG());
                }
                if (!(keyspec instanceof PKCS8EncodedKeySpec))
                {
                    break label0;
                }
                dhprivatekey = new com.sun.crypto.provider.DHPrivateKey(((PKCS8EncodedKeySpec)keyspec).getEncoded());
            }
            catch (InvalidKeyException invalidkeyexception)
            {
                throw new InvalidKeySpecException("Inappropriate key specification");
            }
            return dhprivatekey;
        }
        throw new InvalidKeySpecException("Inappropriate key specification");
    }

    protected final PublicKey engineGeneratePublic(KeySpec keyspec)
    {
label0:
        {
            com.sun.crypto.provider.DHPublicKey dhpublickey;
            try
            {
                if (keyspec instanceof DHPublicKeySpec)
                {
                    DHPublicKeySpec dhpublickeyspec = (DHPublicKeySpec)keyspec;
                    return new com.sun.crypto.provider.DHPublicKey(dhpublickeyspec.getY(), dhpublickeyspec.getP(), dhpublickeyspec.getG());
                }
                if (!(keyspec instanceof X509EncodedKeySpec))
                {
                    break label0;
                }
                dhpublickey = new com.sun.crypto.provider.DHPublicKey(((X509EncodedKeySpec)keyspec).getEncoded());
            }
            catch (InvalidKeyException invalidkeyexception)
            {
                throw new InvalidKeySpecException("Inappropriate key specification");
            }
            return dhpublickey;
        }
        throw new InvalidKeySpecException("Inappropriate key specification");
    }

    protected final KeySpec engineGetKeySpec(Key key, Class class1)
    {
        if (key instanceof DHPublicKey)
        {
            if (javax/crypto/spec/DHPublicKeySpec.isAssignableFrom(class1))
            {
                DHPublicKey dhpublickey = (DHPublicKey)key;
                DHParameterSpec dhparameterspec1 = dhpublickey.getParams();
                return new DHPublicKeySpec(dhpublickey.getY(), dhparameterspec1.getP(), dhparameterspec1.getG());
            }
            if (java/security/spec/X509EncodedKeySpec.isAssignableFrom(class1))
            {
                return new X509EncodedKeySpec(key.getEncoded());
            } else
            {
                throw new InvalidKeySpecException("Inappropriate key specification");
            }
        }
        if (key instanceof DHPrivateKey)
        {
            if (javax/crypto/spec/DHPrivateKeySpec.isAssignableFrom(class1))
            {
                DHPrivateKey dhprivatekey = (DHPrivateKey)key;
                DHParameterSpec dhparameterspec = dhprivatekey.getParams();
                return new DHPrivateKeySpec(dhprivatekey.getX(), dhparameterspec.getP(), dhparameterspec.getG());
            }
            if (java/security/spec/PKCS8EncodedKeySpec.isAssignableFrom(class1))
            {
                return new PKCS8EncodedKeySpec(key.getEncoded());
            } else
            {
                throw new InvalidKeySpecException("Inappropriate key specification");
            }
        } else
        {
            throw new InvalidKeySpecException("Inappropriate key type");
        }
    }

    protected final Key engineTranslateKey(Key key)
    {
        if (!(key instanceof DHPublicKey))
        {
            break MISSING_BLOCK_LABEL_31;
        }
        if (key instanceof com.sun.crypto.provider.DHPublicKey)
        {
            return key;
        }
        return engineGeneratePublic((DHPublicKeySpec)engineGetKeySpec(key, javax/crypto/spec/DHPublicKeySpec));
        if (key instanceof DHPrivateKey)
        {
            if (!(key instanceof com.sun.crypto.provider.DHPrivateKey))
            {
                return engineGeneratePrivate((DHPrivateKeySpec)engineGetKeySpec(key, javax/crypto/spec/DHPrivateKeySpec));
            }
        } else
        {
            throw new InvalidKeyException("Wrong algorithm type");
        }
        break MISSING_BLOCK_LABEL_81;
        InvalidKeySpecException invalidkeyspecexception;
        invalidkeyspecexception;
        throw new InvalidKeyException("Cannot translate key");
        return key;
    }
}
