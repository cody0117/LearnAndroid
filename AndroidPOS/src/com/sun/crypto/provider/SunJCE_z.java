// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.sun.crypto.provider;

import java.io.IOException;
import java.security.AlgorithmParameters;
import java.security.GeneralSecurityException;
import java.security.Key;
import java.security.KeyFactory;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.PrivateKey;
import java.security.Provider;
import java.security.SecureRandom;
import java.security.Security;
import java.security.UnrecoverableKeyException;
import java.security.spec.PKCS8EncodedKeySpec;
import java.util.Arrays;
import javax.crypto.Cipher;
import javax.crypto.SealedObject;
import javax.crypto.spec.PBEKeySpec;
import javax.crypto.spec.PBEParameterSpec;
import sun.security.util.ObjectIdentifier;
import sun.security.x509.AlgorithmId;

// Referenced classes of package com.sun.crypto.provider:
//            SunJCE_aa, SunJCE_ac, PBEKey, PBEWithMD5AndTripleDESCipher, 
//            SealedObjectForKeyProtector, SunJCE_ad, SunJCE

final class SunJCE_z
{

    private static final String a = "1.3.6.1.4.1.42.2.19.1";
    private static final String b = "1.3.6.1.4.1.42.2.17.1.1";
    private static final int c = 20;
    private static final int d = 20;
    private static final Provider f = Security.getProvider("SunJCE");
    private char e[];

    SunJCE_z(char ac[])
    {
        if (ac == null)
        {
            throw new IllegalArgumentException("password can't be null");
        } else
        {
            e = ac;
            return;
        }
    }

    private byte[] a(byte abyte0[])
    {
        int i = 0;
        MessageDigest messagedigest = MessageDigest.getInstance("SHA");
        byte abyte1[] = new byte[20];
        System.arraycopy(abyte0, 0, abyte1, 0, 20);
        int j = -20 + (-20 + abyte0.length);
        int k = j / 20;
        if (j % 20 != 0)
        {
            k++;
        }
        byte abyte2[] = new byte[j];
        System.arraycopy(abyte0, 20, abyte2, 0, j);
        byte abyte3[] = new byte[abyte2.length];
        byte abyte4[] = new byte[2 * e.length];
        int l = 0;
        for (int i1 = 0; i1 < e.length; i1++)
        {
            int i2 = l + 1;
            abyte4[l] = (byte)(e[i1] >> 8);
            l = i2 + 1;
            abyte4[i2] = (byte)e[i1];
        }

        int j1 = 0;
        byte abyte5[] = abyte1;
        int k1 = 0;
        while (k1 < k) 
        {
            messagedigest.update(abyte4);
            messagedigest.update(abyte5);
            abyte5 = messagedigest.digest();
            messagedigest.reset();
            if (k1 < k - 1)
            {
                System.arraycopy(abyte5, 0, abyte3, j1, abyte5.length);
            } else
            {
                System.arraycopy(abyte5, 0, abyte3, j1, abyte3.length - j1);
            }
            k1++;
            j1 += 20;
        }
        byte abyte6[] = new byte[abyte2.length];
        for (int l1 = 0; l1 < abyte6.length; l1++)
        {
            abyte6[l1] = (byte)(abyte2[l1] ^ abyte3[l1]);
        }

        messagedigest.update(abyte4);
        Arrays.fill(abyte4, (byte)0);
        messagedigest.update(abyte6);
        byte abyte7[] = messagedigest.digest();
        messagedigest.reset();
        for (; i < abyte7.length; i++)
        {
            if (abyte7[i] != abyte0[i + (j + 20)])
            {
                throw new UnrecoverableKeyException("Cannot recover key");
            }
        }

        return abyte6;
    }

    final Key a(SunJCE_aa sunjce_aa)
    {
        String s;
        byte abyte1[];
        byte abyte2[];
        try
        {
            s = sunjce_aa.a().getOID().toString();
            if (!s.equals("1.3.6.1.4.1.42.2.19.1") && !s.equals("1.3.6.1.4.1.42.2.17.1.1"))
            {
                throw new UnrecoverableKeyException("Unsupported encryption algorithm");
            }
        }
        catch (NoSuchAlgorithmException nosuchalgorithmexception)
        {
            throw nosuchalgorithmexception;
        }
        catch (IOException ioexception)
        {
            throw new UnrecoverableKeyException(ioexception.getMessage());
        }
        catch (GeneralSecurityException generalsecurityexception)
        {
            throw new UnrecoverableKeyException(generalsecurityexception.getMessage());
        }
        if (!s.equals("1.3.6.1.4.1.42.2.17.1.1")) goto _L2; else goto _L1
_L1:
        abyte2 = a(sunjce_aa.b());
_L3:
        return KeyFactory.getInstance((new AlgorithmId((new SunJCE_ac(abyte2)).a().getOID())).getName()).generatePrivate(new PKCS8EncodedKeySpec(abyte2));
_L2:
        byte abyte0[] = sunjce_aa.a().getEncodedParams();
        AlgorithmParameters algorithmparameters = AlgorithmParameters.getInstance("PBE");
        algorithmparameters.init(abyte0);
        PBEParameterSpec pbeparameterspec = (PBEParameterSpec)algorithmparameters.getParameterSpec(javax/crypto/spec/PBEParameterSpec);
        PBEKeySpec pbekeyspec = new PBEKeySpec(e);
        PBEKey pbekey = new PBEKey(pbekeyspec, "PBEWithMD5AndTripleDES");
        pbekeyspec.clearPassword();
        PBEWithMD5AndTripleDESCipher pbewithmd5andtripledescipher = new PBEWithMD5AndTripleDESCipher();
        pbewithmd5andtripledescipher.engineInit(2, pbekey, pbeparameterspec, null);
        abyte1 = pbewithmd5andtripledescipher.engineDoFinal(sunjce_aa.b(), 0, sunjce_aa.b().length);
        abyte2 = abyte1;
          goto _L3
    }

    final Key a(SealedObject sealedobject)
    {
        PBEKey pbekey;
        SealedObjectForKeyProtector sealedobjectforkeyprotector;
        PBEKeySpec pbekeyspec = new PBEKeySpec(e);
        pbekey = new PBEKey(pbekeyspec, "PBEWithMD5AndTripleDES");
        pbekeyspec.clearPassword();
        if (sealedobject instanceof SealedObjectForKeyProtector)
        {
            break MISSING_BLOCK_LABEL_71;
        }
        sealedobjectforkeyprotector = new SealedObjectForKeyProtector(sealedobject);
_L1:
        AlgorithmParameters algorithmparameters = sealedobjectforkeyprotector.a();
        SunJCE_ad sunjce_ad;
        Key key;
        if (algorithmparameters == null)
        {
            try
            {
                throw new UnrecoverableKeyException("Cannot get algorithm parameters");
            }
            catch (NoSuchAlgorithmException nosuchalgorithmexception)
            {
                throw nosuchalgorithmexception;
            }
            catch (IOException ioexception)
            {
                throw new UnrecoverableKeyException(ioexception.getMessage());
            }
            catch (ClassNotFoundException classnotfoundexception)
            {
                throw new UnrecoverableKeyException(classnotfoundexception.getMessage());
            }
            catch (GeneralSecurityException generalsecurityexception)
            {
                throw new UnrecoverableKeyException(generalsecurityexception.getMessage());
            }
        }
        break MISSING_BLOCK_LABEL_80;
        sealedobjectforkeyprotector = (SealedObjectForKeyProtector)sealedobject;
          goto _L1
        sunjce_ad = new SunJCE_ad(new PBEWithMD5AndTripleDESCipher(), f, "PBEWithMD5AndTripleDES");
        sunjce_ad.init(2, pbekey, algorithmparameters);
        key = (Key)sealedobjectforkeyprotector.getObject(sunjce_ad);
        return key;
    }

    final SealedObject a(Key key)
    {
        byte abyte0[] = new byte[8];
        SunJCE.h.nextBytes(abyte0);
        PBEParameterSpec pbeparameterspec = new PBEParameterSpec(abyte0, 20);
        PBEKeySpec pbekeyspec = new PBEKeySpec(e);
        PBEKey pbekey = new PBEKey(pbekeyspec, "PBEWithMD5AndTripleDES");
        pbekeyspec.clearPassword();
        SunJCE_ad sunjce_ad = new SunJCE_ad(new PBEWithMD5AndTripleDESCipher(), f, "PBEWithMD5AndTripleDES");
        sunjce_ad.init(1, pbekey, pbeparameterspec);
        return new SealedObjectForKeyProtector(key, sunjce_ad);
    }

    final byte[] a(PrivateKey privatekey)
    {
        byte abyte0[] = new byte[8];
        SunJCE.h.nextBytes(abyte0);
        PBEParameterSpec pbeparameterspec = new PBEParameterSpec(abyte0, 20);
        PBEKeySpec pbekeyspec = new PBEKeySpec(e);
        PBEKey pbekey = new PBEKey(pbekeyspec, "PBEWithMD5AndTripleDES");
        pbekeyspec.clearPassword();
        PBEWithMD5AndTripleDESCipher pbewithmd5andtripledescipher = new PBEWithMD5AndTripleDESCipher();
        pbewithmd5andtripledescipher.engineInit(1, pbekey, pbeparameterspec, null);
        byte abyte1[] = (byte[])privatekey.getEncoded();
        byte abyte2[] = pbewithmd5andtripledescipher.engineDoFinal(abyte1, 0, abyte1.length);
        AlgorithmParameters algorithmparameters = AlgorithmParameters.getInstance("PBE", f);
        algorithmparameters.init(pbeparameterspec);
        return (new SunJCE_aa(new AlgorithmId(new ObjectIdentifier("1.3.6.1.4.1.42.2.19.1"), algorithmparameters), abyte2)).c();
    }

}
