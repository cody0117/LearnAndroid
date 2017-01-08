// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.util.Base64;
import java.security.InvalidKeyException;
import java.security.KeyFactory;
import java.security.NoSuchAlgorithmException;
import java.security.PublicKey;
import java.security.Signature;
import java.security.SignatureException;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.X509EncodedKeySpec;

public final class gr
{

    public static PublicKey a(String s)
    {
        PublicKey publickey;
        try
        {
            byte abyte0[] = Base64.decode(s, 0);
            publickey = KeyFactory.getInstance("RSA").generatePublic(new X509EncodedKeySpec(abyte0));
        }
        catch (NoSuchAlgorithmException nosuchalgorithmexception)
        {
            throw new RuntimeException(nosuchalgorithmexception);
        }
        catch (InvalidKeySpecException invalidkeyspecexception)
        {
            throw new IllegalArgumentException(invalidkeyspecexception);
        }
        return publickey;
    }

    public static boolean a(PublicKey publickey, String s, String s1)
    {
        boolean flag;
        try
        {
            Signature signature = Signature.getInstance("SHA1withRSA");
            signature.initVerify(publickey);
            signature.update(s.getBytes());
            flag = signature.verify(Base64.decode(s1, 0));
        }
        catch (NoSuchAlgorithmException nosuchalgorithmexception)
        {
            return false;
        }
        catch (InvalidKeyException invalidkeyexception)
        {
            return false;
        }
        catch (SignatureException signatureexception)
        {
            return false;
        }
        return flag;
    }
}
