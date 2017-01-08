// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.sun.crypto.provider;

import java.math.BigInteger;
import java.security.AlgorithmParameters;
import java.security.GeneralSecurityException;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.Key;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import java.security.spec.InvalidParameterSpecException;
import java.util.Arrays;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.SecretKey;
import javax.crypto.interfaces.PBEKey;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.PBEParameterSpec;
import javax.crypto.spec.SecretKeySpec;

// Referenced classes of package com.sun.crypto.provider:
//            SunJCE_y, SunJCE_e, SunJCE_f, SunJCE_r, 
//            SunJCE

final class PKCS12PBECipherCore
{

    private static final int g = 20;
    private static final int h = 1024;
    static final int i = 1;
    static final int j = 2;
    static final int k = 3;
    private SunJCE_f a;
    private int b;
    private int c;
    private String d;
    private byte e[];
    private int f;

    PKCS12PBECipherCore(String s, int l)
    {
        d = null;
        e = null;
        f = 0;
        d = s;
        Object obj;
        if (d.equals("DESede"))
        {
            obj = new SunJCE_y();
        } else
        if (d.equals("RC2"))
        {
            obj = new SunJCE_r();
        } else
        {
            throw new NoSuchAlgorithmException((new StringBuilder("No Cipher implementation for PBEWithSHA1And")).append(d).toString());
        }
        b = ((SunJCE_e) (obj)).a();
        a = new SunJCE_f(((SunJCE_e) (obj)), b);
        a.a("CBC");
        try
        {
            a.b("PKCS5Padding");
        }
        catch (NoSuchPaddingException nosuchpaddingexception) { }
        c = l;
    }

    private static int a(int l, int i1)
    {
        return i1 * ((l + (i1 - 1)) / i1);
    }

    private static void a(byte abyte0[], byte abyte1[], int l, int i1)
    {
        int j1 = i1 / abyte0.length;
        int k1 = 0;
        int l1;
        for (l1 = 0; k1 < j1; l1 += abyte0.length)
        {
            System.arraycopy(abyte0, 0, abyte1, l1 + l, abyte0.length);
            k1++;
        }

        System.arraycopy(abyte0, 0, abyte1, l1 + l, i1 - l1);
    }

    static byte[] a(char ac[], byte abyte0[], int l, int i1, int j1)
    {
        byte abyte4[];
        int i3;
        int k3;
        int k1 = 2 * ac.length;
        if (k1 != 0)
        {
            k1 += 2;
        }
        byte abyte1[] = new byte[k1];
        int l1 = 0;
        for (int i2 = 0; l1 < ac.length; i2 += 2)
        {
            abyte1[i2] = (byte)(0xff & ac[l1] >>> 8);
            abyte1[i2 + 1] = (byte)(0xff & ac[l1]);
            l1++;
        }

        int j2 = a(i1, 20) / 20;
        byte abyte2[] = new byte[64];
        int k2 = a(abyte0.length, 64);
        int l2 = a(abyte1.length, 64);
        byte abyte3[] = new byte[k2 + l2];
        abyte4 = new byte[i1];
        Arrays.fill(abyte2, (byte)j1);
        a(abyte0, abyte3, 0, k2);
        a(abyte1, abyte3, k2, l2);
        MessageDigest messagedigest;
        byte abyte5[];
        byte abyte6[];
        byte abyte7[];
        byte abyte8[];
        int j3;
        BigInteger biginteger;
        int i4;
        try
        {
            messagedigest = MessageDigest.getInstance("SHA1");
            abyte5 = new byte[64];
            abyte6 = new byte[64];
        }
        catch (Exception exception)
        {
            throw new RuntimeException((new StringBuilder("internal error: ")).append(exception).toString());
        }
        i3 = 0;
        abyte7 = abyte6;
_L5:
        messagedigest.update(abyte2);
        messagedigest.update(abyte3);
        abyte8 = messagedigest.digest();
        j3 = 1;
_L2:
        if (j3 >= l)
        {
            break; /* Loop/switch isn't completed */
        }
        abyte8 = messagedigest.digest(abyte8);
        j3++;
        if (true) goto _L2; else goto _L1
_L1:
        System.arraycopy(abyte8, 0, abyte4, i3 * 20, Math.min(i1, 20));
        if (i3 + 1 == j2) goto _L4; else goto _L3
_L3:
        a(abyte8, abyte5, 0, abyte5.length);
        biginteger = (new BigInteger(1, abyte5)).add(BigInteger.ONE);
        k3 = 0;
_L6:
        if (k3 >= abyte3.length)
        {
            break MISSING_BLOCK_LABEL_433;
        }
        if (abyte7.length != 64)
        {
            abyte7 = new byte[64];
        }
        System.arraycopy(abyte3, k3, abyte7, 0, 64);
        abyte7 = (new BigInteger(1, abyte7)).add(biginteger).toByteArray();
        i4 = -64 + abyte7.length;
        if (i4 < 0)
        {
            break MISSING_BLOCK_LABEL_367;
        }
        System.arraycopy(abyte7, i4, abyte3, k3, 64);
        break MISSING_BLOCK_LABEL_452;
        if (i4 >= 0)
        {
            break MISSING_BLOCK_LABEL_452;
        }
        Arrays.fill(abyte3, k3, k3 + -i4, (byte)0);
        System.arraycopy(abyte7, 0, abyte3, k3 + -i4, abyte7.length);
        break MISSING_BLOCK_LABEL_452;
        int l3 = i3 + 1;
        i1 -= 20;
        i3 = l3;
          goto _L5
_L4:
        return abyte4;
        k3 += 64;
          goto _L6
    }

    final int a()
    {
        return b;
    }

    final int a(int l)
    {
        return a.a(l);
    }

    final int a(Key key)
    {
        return c;
    }

    final int a(byte abyte0[], int l, int i1, byte abyte1[], int j1)
    {
        return a.a(abyte0, l, i1, abyte1, j1);
    }

    final Key a(byte abyte0[], String s, int l)
    {
        return a.a(abyte0, s, l);
    }

    final void a(int l, Key key, AlgorithmParameters algorithmparameters, SecureRandom securerandom)
    {
        AlgorithmParameterSpec algorithmparameterspec = null;
        if (algorithmparameters != null)
        {
            AlgorithmParameterSpec algorithmparameterspec1;
            try
            {
                algorithmparameterspec1 = algorithmparameters.getParameterSpec(javax/crypto/spec/PBEParameterSpec);
            }
            catch (InvalidParameterSpecException invalidparameterspecexception)
            {
                throw new InvalidAlgorithmParameterException("requires PBE parameters");
            }
            algorithmparameterspec = algorithmparameterspec1;
        }
        a(l, key, algorithmparameterspec, securerandom);
    }

    final void a(int l, Key key, SecureRandom securerandom)
    {
        try
        {
            a(l, key, ((AlgorithmParameterSpec) (null)), securerandom);
            return;
        }
        catch (InvalidAlgorithmParameterException invalidalgorithmparameterexception)
        {
            throw new InvalidKeyException("requires PBE parameters");
        }
    }

    final void a(int l, Key key, AlgorithmParameterSpec algorithmparameterspec, SecureRandom securerandom)
    {
        char ac1[];
        e = null;
        f = 0;
        if (key instanceof PBEKey)
        {
            PBEKey pbekey = (PBEKey)key;
            ac1 = pbekey.getPassword();
            e = pbekey.getSalt();
            f = pbekey.getIterationCount();
        } else
        if (key instanceof SecretKey)
        {
            byte abyte0[] = key.getEncoded();
            if (abyte0 == null || !key.getAlgorithm().regionMatches(true, 0, "PBE", 0, 3))
            {
                throw new InvalidKeyException("Missing password");
            }
            char ac[] = new char[abyte0.length];
            for (int i1 = 0; i1 < ac.length; i1++)
            {
                ac[i1] = (char)(0x7f & abyte0[i1]);
            }

            ac1 = ac;
        } else
        {
            throw new InvalidKeyException("SecretKey of PBE type required");
        }
        if ((l == 2 || l == 4) && algorithmparameterspec == null && (e == null || f == 0))
        {
            throw new InvalidAlgorithmParameterException("Parameters missing");
        }
        if (algorithmparameterspec != null) goto _L2; else goto _L1
_L1:
        if (e == null)
        {
            e = new byte[20];
            if (securerandom != null)
            {
                securerandom.nextBytes(e);
            } else
            {
                SunJCE.h.nextBytes(e);
            }
        }
        if (f == 0)
        {
            f = 1024;
        }
_L4:
        if (e.length < 8)
        {
            throw new InvalidAlgorithmParameterException("Salt must be at least 8 bytes long");
        }
        break; /* Loop/switch isn't completed */
_L2:
        if (!(algorithmparameterspec instanceof PBEParameterSpec))
        {
            throw new InvalidAlgorithmParameterException("PBEParameterSpec type required");
        }
        PBEParameterSpec pbeparameterspec = (PBEParameterSpec)algorithmparameterspec;
        if (e != null)
        {
            if (!Arrays.equals(e, pbeparameterspec.getSalt()))
            {
                throw new InvalidAlgorithmParameterException("Inconsistent value of salt between key and params");
            }
        } else
        {
            e = pbeparameterspec.getSalt();
        }
        if (f != 0)
        {
            if (f != pbeparameterspec.getIterationCount())
            {
                throw new InvalidAlgorithmParameterException("Different iteration count between key and params");
            }
        } else
        {
            f = pbeparameterspec.getIterationCount();
        }
        if (true) goto _L4; else goto _L3
_L3:
        if (f <= 0)
        {
            throw new InvalidAlgorithmParameterException("IterationCount must be a positive number");
        } else
        {
            SecretKeySpec secretkeyspec = new SecretKeySpec(a(ac1, e, f, c, 1), d);
            IvParameterSpec ivparameterspec = new IvParameterSpec(a(ac1, e, f, 8, 2), 0, 8);
            a.a(l, secretkeyspec, ivparameterspec, securerandom);
            return;
        }
    }

    final void a(String s)
    {
        if (s != null && !s.equalsIgnoreCase("CBC"))
        {
            throw new NoSuchAlgorithmException((new StringBuilder("Invalid cipher mode: ")).append(s).toString());
        } else
        {
            return;
        }
    }

    final byte[] a(byte abyte0[], int l, int i1)
    {
        return a.a(abyte0, l, i1);
    }

    final int b(byte abyte0[], int l, int i1, byte abyte1[], int j1)
    {
        return a.b(abyte0, l, i1, abyte1, j1);
    }

    final void b(String s)
    {
        if (s != null && !s.equalsIgnoreCase("PKCS5Padding"))
        {
            throw new NoSuchPaddingException((new StringBuilder("Invalid padding scheme: ")).append(s).toString());
        } else
        {
            return;
        }
    }

    final byte[] b()
    {
        return a.a();
    }

    final byte[] b(Key key)
    {
        return a.b(key);
    }

    final byte[] b(byte abyte0[], int l, int i1)
    {
        return a.b(abyte0, l, i1);
    }

    final AlgorithmParameters c()
    {
        PBEParameterSpec pbeparameterspec;
        if (e == null)
        {
            e = new byte[20];
            SunJCE.h.nextBytes(e);
            f = 1024;
        }
        pbeparameterspec = new PBEParameterSpec(e, f);
        StringBuilder stringbuilder;
        stringbuilder = new StringBuilder("PBEWithSHA1And");
        if (!d.equalsIgnoreCase("RC2"))
        {
            break MISSING_BLOCK_LABEL_102;
        }
        String s = "RC2_40";
_L1:
        AlgorithmParameters algorithmparameters;
        try
        {
            algorithmparameters = AlgorithmParameters.getInstance(stringbuilder.append(s).toString(), "SunJCE");
        }
        catch (GeneralSecurityException generalsecurityexception)
        {
            throw new RuntimeException("SunJCE provider is not configured properly");
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
        s = d;
          goto _L1
    }
}
