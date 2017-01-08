// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.sun.crypto.provider;

import java.security.AlgorithmParameters;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.Key;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import java.security.spec.InvalidParameterSpecException;
import java.util.Arrays;
import javax.crypto.BadPaddingException;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.PBEParameterSpec;
import javax.crypto.spec.SecretKeySpec;

// Referenced classes of package com.sun.crypto.provider:
//            SunJCE_f, SunJCE_w, SunJCE_y, SunJCE_s, 
//            SunJCE

final class SunJCE_ab
{

    private SunJCE_f a;
    private MessageDigest b;
    private int c;
    private String d;
    private byte e[];
    private int f;

    SunJCE_ab(String s)
    {
        d = null;
        e = null;
        f = 10;
        d = s;
        if (d.equals("DES"))
        {
            a = new SunJCE_f(new SunJCE_w(), 8);
        } else
        if (d.equals("DESede"))
        {
            a = new SunJCE_f(new SunJCE_y(), 8);
        } else
        {
            throw new NoSuchAlgorithmException((new StringBuilder("No Cipher implementation for PBEWithMD5And")).append(d).toString());
        }
        a.a("CBC");
        a.b("PKCS5Padding");
        b = MessageDigest.getInstance("MD5");
    }

    private byte[] b(Key key)
    {
        byte abyte0[] = key.getEncoded();
        byte abyte1[];
        if (d.equals("DES"))
        {
            byte abyte5[] = new byte[abyte0.length + e.length];
            System.arraycopy(abyte0, 0, abyte5, 0, abyte0.length);
            Arrays.fill(abyte0, (byte)0);
            System.arraycopy(e, 0, abyte5, abyte0.length, e.length);
            abyte1 = abyte5;
            for (int i1 = 0; i1 < f; i1++)
            {
                b.update(abyte1);
                abyte1 = b.digest();
            }

            Arrays.fill(abyte5, (byte)0);
        } else
        {
            boolean flag = d.equals("DESede");
            abyte1 = null;
            if (flag)
            {
                int i;
                for (i = 0; i < 4 && e[i] == e[i + 4]; i++) { }
                if (i == 4)
                {
                    for (int l = 0; l < 2; l++)
                    {
                        byte byte0 = e[l];
                        e[l] = e[3 - l];
                        e[2] = byte0;
                    }

                }
                byte abyte2[] = new byte[32];
                for (int j = 0; j < 2; j++)
                {
                    byte abyte3[] = new byte[e.length / 2];
                    System.arraycopy(e, j * (e.length / 2), abyte3, 0, abyte3.length);
                    byte abyte4[] = abyte3;
                    for (int k = 0; k < f; k++)
                    {
                        b.update(abyte4);
                        b.update(abyte0);
                        abyte4 = b.digest();
                    }

                    System.arraycopy(abyte4, 0, abyte2, j * 16, abyte4.length);
                }

                return abyte2;
            }
        }
        return abyte1;
    }

    final int a()
    {
        return 8;
    }

    final int a(int i)
    {
        return a.a(i);
    }

    final int a(byte abyte0[], int i, int j, byte abyte1[], int k)
    {
        return a.a(abyte0, i, j, abyte1, k);
    }

    final Key a(byte abyte0[], String s, int i)
    {
        byte abyte1[];
        try
        {
            abyte1 = b(abyte0, 0, abyte0.length);
        }
        catch (BadPaddingException badpaddingexception)
        {
            throw new InvalidKeyException("The wrapped key is not padded correctly");
        }
        catch (IllegalBlockSizeException illegalblocksizeexception)
        {
            throw new InvalidKeyException("The wrapped key does not have the correct length");
        }
        return SunJCE_s.a(abyte1, s, i);
    }

    final void a(int i, Key key, AlgorithmParameters algorithmparameters, SecureRandom securerandom)
    {
        PBEParameterSpec pbeparameterspec = null;
        if (algorithmparameters != null)
        {
            try
            {
                pbeparameterspec = (PBEParameterSpec)algorithmparameters.getParameterSpec(javax/crypto/spec/PBEParameterSpec);
            }
            catch (InvalidParameterSpecException invalidparameterspecexception)
            {
                throw new InvalidAlgorithmParameterException("Wrong parameter type: PBE expected");
            }
        }
        a(i, key, ((AlgorithmParameterSpec) (pbeparameterspec)), securerandom);
    }

    final void a(int i, Key key, AlgorithmParameterSpec algorithmparameterspec, SecureRandom securerandom)
    {
        if ((i == 2 || i == 4) && algorithmparameterspec == null)
        {
            throw new InvalidAlgorithmParameterException("Parameters missing");
        }
        if (key == null || key.getEncoded() == null || !key.getAlgorithm().regionMatches(true, 0, "PBE", 0, 3))
        {
            throw new InvalidKeyException("Missing password");
        }
        byte abyte0[];
        SecretKeySpec secretkeyspec;
        IvParameterSpec ivparameterspec;
        if (algorithmparameterspec == null)
        {
            e = new byte[8];
            securerandom.nextBytes(e);
        } else
        {
            if (!(algorithmparameterspec instanceof PBEParameterSpec))
            {
                throw new InvalidAlgorithmParameterException("Wrong parameter type: PBE expected");
            }
            e = ((PBEParameterSpec)algorithmparameterspec).getSalt();
            if (e.length != 8)
            {
                throw new InvalidAlgorithmParameterException("Salt must be 8 bytes long");
            }
            f = ((PBEParameterSpec)algorithmparameterspec).getIterationCount();
            if (f <= 0)
            {
                throw new InvalidAlgorithmParameterException("IterationCount must be a positive number");
            }
        }
        abyte0 = b(key);
        secretkeyspec = new SecretKeySpec(abyte0, 0, -8 + abyte0.length, d);
        ivparameterspec = new IvParameterSpec(abyte0, -8 + abyte0.length, 8);
        a.a(i, secretkeyspec, ivparameterspec, securerandom);
    }

    final void a(String s)
    {
        a.a(s);
    }

    final byte[] a(Key key)
    {
        byte abyte0[];
        byte abyte1[];
        try
        {
            abyte0 = key.getEncoded();
        }
        catch (BadPaddingException badpaddingexception)
        {
            return null;
        }
        if (abyte0 == null)
        {
            break MISSING_BLOCK_LABEL_16;
        }
        if (abyte0.length != 0)
        {
            break MISSING_BLOCK_LABEL_26;
        }
        throw new InvalidKeyException("Cannot get an encoding of the key to be wrapped");
        abyte1 = b(abyte0, 0, abyte0.length);
        return abyte1;
    }

    final byte[] a(byte abyte0[], int i, int j)
    {
        return a.a(abyte0, i, j);
    }

    final int b(byte abyte0[], int i, int j, byte abyte1[], int k)
    {
        return a.b(abyte0, i, j, abyte1, k);
    }

    final void b(String s)
    {
        a.b(s);
    }

    final byte[] b()
    {
        return a.a();
    }

    final byte[] b(byte abyte0[], int i, int j)
    {
        return a.b(abyte0, i, j);
    }

    final AlgorithmParameters c()
    {
        PBEParameterSpec pbeparameterspec;
        if (e == null)
        {
            e = new byte[8];
            SunJCE.h.nextBytes(e);
        }
        pbeparameterspec = new PBEParameterSpec(e, f);
        StringBuilder stringbuilder = new StringBuilder("PBEWithMD5And");
        String s;
        AlgorithmParameters algorithmparameters;
        if (d.equalsIgnoreCase("DES"))
        {
            s = "DES";
        } else
        {
            s = "TripleDES";
        }
        try
        {
            algorithmparameters = AlgorithmParameters.getInstance(stringbuilder.append(s).toString(), "SunJCE");
        }
        catch (NoSuchAlgorithmException nosuchalgorithmexception)
        {
            throw new RuntimeException("SunJCE called, but not configured");
        }
        catch (NoSuchProviderException nosuchproviderexception)
        {
            throw new RuntimeException("SunJCE called, but not configured");
        }
        try
        {
            algorithmparameters.init(pbeparameterspec);
        }
        catch (InvalidParameterSpecException invalidparameterspecexception)
        {
            throw new RuntimeException("PBEParameterSpec not supported");
        }
        return algorithmparameters;
    }
}
