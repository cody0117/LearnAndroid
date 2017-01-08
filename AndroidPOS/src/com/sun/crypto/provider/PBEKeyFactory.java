// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.sun.crypto.provider;

import java.security.InvalidKeyException;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.KeySpec;
import java.util.Arrays;
import java.util.HashSet;
import javax.crypto.SecretKey;
import javax.crypto.SecretKeyFactorySpi;
import javax.crypto.spec.PBEKeySpec;

// Referenced classes of package com.sun.crypto.provider:
//            SunJCE, PBEKey

abstract class PBEKeyFactory extends SecretKeyFactorySpi
{

    private static HashSet b;
    private String a;

    private PBEKeyFactory(String s)
    {
        if (!SunJCE.b(getClass()))
        {
            throw new SecurityException("The SunJCE provider may have been tampered.");
        } else
        {
            a = s;
            return;
        }
    }

    PBEKeyFactory(String s, _cls1 _pcls1)
    {
        this(s);
    }

    protected SecretKey engineGenerateSecret(KeySpec keyspec)
    {
        if (!(keyspec instanceof PBEKeySpec))
        {
            throw new InvalidKeySpecException("Invalid key spec");
        } else
        {
            return new PBEKey((PBEKeySpec)keyspec, a);
        }
    }

    protected KeySpec engineGetKeySpec(SecretKey secretkey, Class class1)
    {
        if ((secretkey instanceof SecretKey) && b.contains(secretkey.getAlgorithm().toUpperCase()) && secretkey.getFormat().equalsIgnoreCase("RAW"))
        {
            if (class1 != null && javax/crypto/spec/PBEKeySpec.isAssignableFrom(class1))
            {
                byte abyte0[] = secretkey.getEncoded();
                char ac[] = new char[abyte0.length];
                for (int i = 0; i < ac.length; i++)
                {
                    ac[i] = (char)(0x7f & abyte0[i]);
                }

                PBEKeySpec pbekeyspec = new PBEKeySpec(ac);
                Arrays.fill(ac, ' ');
                Arrays.fill(abyte0, (byte)0);
                return pbekeyspec;
            } else
            {
                throw new InvalidKeySpecException("Invalid key spec");
            }
        } else
        {
            throw new InvalidKeySpecException("Invalid key format/algorithm");
        }
    }

    protected SecretKey engineTranslateKey(SecretKey secretkey)
    {
        if (secretkey == null)
        {
            break MISSING_BLOCK_LABEL_60;
        }
        if (!b.contains(secretkey.getAlgorithm().toUpperCase()) || !secretkey.getFormat().equalsIgnoreCase("RAW"))
        {
            break MISSING_BLOCK_LABEL_60;
        }
        if (secretkey instanceof PBEKey)
        {
            return secretkey;
        }
        return engineGenerateSecret((PBEKeySpec)engineGetKeySpec(secretkey, javax/crypto/spec/PBEKeySpec));
        throw new InvalidKeyException("Invalid key format/algorithm");
        InvalidKeySpecException invalidkeyspecexception;
        invalidkeyspecexception;
        throw new InvalidKeyException((new StringBuilder("Cannot translate key: ")).append(invalidkeyspecexception.getMessage()).toString());
    }

    static 
    {
        HashSet hashset = new HashSet(4);
        b = hashset;
        hashset.add("PBEWithMD5AndDES".toUpperCase());
        b.add("PBEWithSHA1AndDESede".toUpperCase());
        b.add("PBEWithSHA1AndRC2_40".toUpperCase());
        b.add("PBEWithMD5AndTripleDES".toUpperCase());
    }
}
