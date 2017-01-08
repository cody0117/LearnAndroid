// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.a;

import android.text.TextUtils;
import java.security.InvalidKeyException;
import java.security.KeyFactory;
import java.security.NoSuchAlgorithmException;
import java.security.PublicKey;
import java.security.Signature;
import java.security.SignatureException;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.X509EncodedKeySpec;

// Referenced classes of package com.aadhk.a:
//            b, a

public final class n
{

    private static PublicKey a(String s)
    {
        PublicKey publickey;
        try
        {
            byte abyte0[] = com.aadhk.a.a.a(s);
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
        catch (b b1)
        {
            throw new IllegalArgumentException(b1);
        }
        return publickey;
    }

    public static boolean a(String s, String s1, String s2)
    {
        if (TextUtils.isEmpty(s1) || TextUtils.isEmpty(s) || TextUtils.isEmpty(s2))
        {
            return false;
        } else
        {
            return a(a(s), s1, s2);
        }
    }

    private static boolean a(PublicKey publickey, String s, String s1)
    {
        boolean flag;
        try
        {
            Signature signature = Signature.getInstance("SHA1withRSA");
            signature.initVerify(publickey);
            signature.update(s.getBytes());
            flag = signature.verify(com.aadhk.a.a.a(s1));
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
        catch (b b1)
        {
            return false;
        }
        return flag;
    }
}
