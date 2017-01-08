// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.a.a;

import com.google.android.a.a.a.b;
import java.io.UnsupportedEncodingException;
import java.security.GeneralSecurityException;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.SecretKey;
import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.PBEKeySpec;
import javax.crypto.spec.SecretKeySpec;

// Referenced classes of package com.google.android.a.a:
//            o, t

public final class a
    implements o
{

    private static final byte a[];
    private Cipher b;
    private Cipher c;

    public a(byte abyte0[], String s, String s1)
    {
        try
        {
            SecretKeySpec secretkeyspec = new SecretKeySpec(SecretKeyFactory.getInstance("PBEWITHSHAAND256BITAES-CBC-BC").generateSecret(new PBEKeySpec((new StringBuilder(String.valueOf(s))).append(s1).toString().toCharArray(), abyte0, 1024, 256)).getEncoded(), "AES");
            b = Cipher.getInstance("AES/CBC/PKCS5Padding");
            b.init(1, secretkeyspec, new IvParameterSpec(a));
            c = Cipher.getInstance("AES/CBC/PKCS5Padding");
            c.init(2, secretkeyspec, new IvParameterSpec(a));
            return;
        }
        catch (GeneralSecurityException generalsecurityexception)
        {
            throw new RuntimeException("Invalid environment", generalsecurityexception);
        }
    }

    public final String a(String s, String s1)
    {
        if (s == null)
        {
            return null;
        }
        String s2;
        try
        {
            s2 = com.google.android.a.a.a.a.a(b.doFinal((new StringBuilder("com.android.vending.licensing.AESObfuscator-1|")).append(s1).append(s).toString().getBytes("UTF-8")));
        }
        catch (UnsupportedEncodingException unsupportedencodingexception)
        {
            throw new RuntimeException("Invalid environment", unsupportedencodingexception);
        }
        catch (GeneralSecurityException generalsecurityexception)
        {
            throw new RuntimeException("Invalid environment", generalsecurityexception);
        }
        return s2;
    }

    public final String b(String s, String s1)
    {
        if (s == null)
        {
            return null;
        }
        String s2;
        String s3;
        try
        {
            s2 = new String(c.doFinal(com.google.android.a.a.a.a.a(s)), "UTF-8");
            if (s2.indexOf((new StringBuilder("com.android.vending.licensing.AESObfuscator-1|")).append(s1).toString()) != 0)
            {
                throw new t((new StringBuilder("Header not found (invalid data or key):")).append(s).toString());
            }
        }
        catch (b b1)
        {
            throw new t((new StringBuilder(String.valueOf(b1.getMessage()))).append(":").append(s).toString());
        }
        catch (IllegalBlockSizeException illegalblocksizeexception)
        {
            throw new t((new StringBuilder(String.valueOf(illegalblocksizeexception.getMessage()))).append(":").append(s).toString());
        }
        catch (BadPaddingException badpaddingexception)
        {
            throw new t((new StringBuilder(String.valueOf(badpaddingexception.getMessage()))).append(":").append(s).toString());
        }
        catch (UnsupportedEncodingException unsupportedencodingexception)
        {
            throw new RuntimeException("Invalid environment", unsupportedencodingexception);
        }
        s3 = s2.substring(46 + s1.length(), s2.length());
        return s3;
    }

    static 
    {
        byte abyte0[] = new byte[16];
        abyte0[0] = 16;
        abyte0[1] = 74;
        abyte0[2] = 71;
        abyte0[3] = -80;
        abyte0[4] = 32;
        abyte0[5] = 101;
        abyte0[6] = -47;
        abyte0[7] = 72;
        abyte0[8] = 117;
        abyte0[9] = -14;
        abyte0[11] = -29;
        abyte0[12] = 70;
        abyte0[13] = 65;
        abyte0[14] = -12;
        abyte0[15] = 74;
        a = abyte0;
    }
}
