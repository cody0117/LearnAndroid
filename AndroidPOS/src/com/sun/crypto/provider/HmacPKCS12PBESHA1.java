// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.sun.crypto.provider;

import java.nio.ByteBuffer;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.Key;
import java.security.MessageDigest;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import java.util.Arrays;
import javax.crypto.MacSpi;
import javax.crypto.SecretKey;
import javax.crypto.interfaces.PBEKey;
import javax.crypto.spec.PBEParameterSpec;
import javax.crypto.spec.SecretKeySpec;

// Referenced classes of package com.sun.crypto.provider:
//            SunJCE, HmacCore, PKCS12PBECipherCore

public final class HmacPKCS12PBESHA1 extends MacSpi
    implements Cloneable
{

    private static final int b = 64;
    private HmacCore a;

    public HmacPKCS12PBESHA1()
    {
        a = null;
        SunJCE.a(getClass());
        a = new HmacCore(MessageDigest.getInstance("SHA1"), 64);
    }

    public final Object clone()
    {
        HmacPKCS12PBESHA1 hmacpkcs12pbesha1;
        try
        {
            hmacpkcs12pbesha1 = (HmacPKCS12PBESHA1)super.clone();
        }
        catch (CloneNotSupportedException clonenotsupportedexception)
        {
            return null;
        }
        try
        {
            hmacpkcs12pbesha1.a = (HmacCore)a.clone();
        }
        catch (CloneNotSupportedException clonenotsupportedexception1)
        {
            return hmacpkcs12pbesha1;
        }
        return hmacpkcs12pbesha1;
    }

    protected final byte[] engineDoFinal()
    {
        return a.b();
    }

    protected final int engineGetMacLength()
    {
        return a.a();
    }

    protected final void engineInit(Key key, AlgorithmParameterSpec algorithmparameterspec)
    {
        char ac1[];
        int j;
        byte abyte1[];
        if (key instanceof PBEKey)
        {
            PBEKey pbekey = (PBEKey)key;
            ac1 = pbekey.getPassword();
            abyte1 = pbekey.getSalt();
            j = pbekey.getIterationCount();
        } else
        if (key instanceof SecretKey)
        {
            byte abyte0[] = key.getEncoded();
            if (abyte0 == null || !key.getAlgorithm().regionMatches(true, 0, "PBE", 0, 3))
            {
                throw new InvalidKeyException("Missing password");
            }
            char ac[] = new char[abyte0.length];
            for (int i = 0; i < ac.length; i++)
            {
                ac[i] = (char)(0x7f & abyte0[i]);
            }

            ac1 = ac;
            j = 0;
            abyte1 = null;
        } else
        {
            throw new InvalidKeyException("SecretKey of PBE type required");
        }
        if (algorithmparameterspec != null) goto _L2; else goto _L1
_L1:
        if (abyte1 == null)
        {
            abyte1 = new byte[20];
            SunJCE.h.nextBytes(abyte1);
        }
        if (j == 0)
        {
            j = 100;
        }
_L4:
        if (abyte1.length < 8)
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
        if (abyte1 != null)
        {
            if (!Arrays.equals(abyte1, pbeparameterspec.getSalt()))
            {
                throw new InvalidAlgorithmParameterException("Inconsistent value of salt between key and params");
            }
        } else
        {
            abyte1 = pbeparameterspec.getSalt();
        }
        if (j != 0)
        {
            if (j != pbeparameterspec.getIterationCount())
            {
                throw new InvalidAlgorithmParameterException("Different iteration count between key and params");
            }
        } else
        {
            j = pbeparameterspec.getIterationCount();
        }
        if (true) goto _L4; else goto _L3
_L3:
        if (j <= 0)
        {
            throw new InvalidAlgorithmParameterException("IterationCount must be a positive number");
        } else
        {
            SecretKeySpec secretkeyspec = new SecretKeySpec(PKCS12PBECipherCore.a(ac1, abyte1, j, a.a(), 3), "HmacSHA1");
            a.a(secretkeyspec, null);
            return;
        }
    }

    protected final void engineReset()
    {
        a.c();
    }

    protected final void engineUpdate(byte byte0)
    {
        a.a(byte0);
    }

    protected final void engineUpdate(ByteBuffer bytebuffer)
    {
        a.a(bytebuffer);
    }

    protected final void engineUpdate(byte abyte0[], int i, int j)
    {
        a.a(abyte0, i, j);
    }
}
