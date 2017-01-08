// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.sun.crypto.provider;

import java.security.InvalidKeyException;
import java.security.Key;
import java.security.KeyFactory;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.PKCS8EncodedKeySpec;
import java.security.spec.X509EncodedKeySpec;
import javax.crypto.SecretKey;
import javax.crypto.spec.SecretKeySpec;

final class SunJCE_s
{

    SunJCE_s()
    {
    }

    static final Key a(byte abyte0[], String s, int i)
    {
        switch (i)
        {
        default:
            return null;

        case 3: // '\003'
            return c(abyte0, s);

        case 2: // '\002'
            return b(abyte0, s);

        case 1: // '\001'
            return a(abyte0, s);
        }
    }

    private static final PublicKey a(byte abyte0[], String s)
    {
        PublicKey publickey1;
        try
        {
            publickey1 = KeyFactory.getInstance(s, "SunJCE").generatePublic(new X509EncodedKeySpec(abyte0));
        }
        catch (NoSuchAlgorithmException nosuchalgorithmexception)
        {
            PublicKey publickey;
            try
            {
                publickey = KeyFactory.getInstance(s).generatePublic(new X509EncodedKeySpec(abyte0));
            }
            catch (NoSuchAlgorithmException nosuchalgorithmexception1)
            {
                throw new NoSuchAlgorithmException((new StringBuilder("No installed providers can create keys for the ")).append(s).append("algorithm").toString());
            }
            catch (InvalidKeySpecException invalidkeyspecexception1)
            {
                InvalidKeyException invalidkeyexception1 = new InvalidKeyException("Cannot construct public key");
                invalidkeyexception1.initCause(invalidkeyspecexception1);
                throw invalidkeyexception1;
            }
            return publickey;
        }
        catch (InvalidKeySpecException invalidkeyspecexception)
        {
            InvalidKeyException invalidkeyexception = new InvalidKeyException("Cannot construct public key");
            invalidkeyexception.initCause(invalidkeyspecexception);
            throw invalidkeyexception;
        }
        catch (NoSuchProviderException nosuchproviderexception)
        {
            return null;
        }
        return publickey1;
    }

    private static final PrivateKey b(byte abyte0[], String s)
    {
        PrivateKey privatekey1;
        try
        {
            privatekey1 = KeyFactory.getInstance(s, "SunJCE").generatePrivate(new PKCS8EncodedKeySpec(abyte0));
        }
        catch (NoSuchAlgorithmException nosuchalgorithmexception)
        {
            PrivateKey privatekey;
            try
            {
                privatekey = KeyFactory.getInstance(s).generatePrivate(new PKCS8EncodedKeySpec(abyte0));
            }
            catch (NoSuchAlgorithmException nosuchalgorithmexception1)
            {
                throw new NoSuchAlgorithmException((new StringBuilder("No installed providers can create keys for the ")).append(s).append("algorithm").toString());
            }
            catch (InvalidKeySpecException invalidkeyspecexception1)
            {
                InvalidKeyException invalidkeyexception1 = new InvalidKeyException("Cannot construct private key");
                invalidkeyexception1.initCause(invalidkeyspecexception1);
                throw invalidkeyexception1;
            }
            return privatekey;
        }
        catch (InvalidKeySpecException invalidkeyspecexception)
        {
            InvalidKeyException invalidkeyexception = new InvalidKeyException("Cannot construct private key");
            invalidkeyexception.initCause(invalidkeyspecexception);
            throw invalidkeyexception;
        }
        catch (NoSuchProviderException nosuchproviderexception)
        {
            return null;
        }
        return privatekey1;
    }

    private static final SecretKey c(byte abyte0[], String s)
    {
        return new SecretKeySpec(abyte0, s);
    }
}
