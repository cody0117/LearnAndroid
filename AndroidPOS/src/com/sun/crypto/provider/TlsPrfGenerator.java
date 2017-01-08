// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.sun.crypto.provider;

import java.io.UnsupportedEncodingException;
import java.security.GeneralSecurityException;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidParameterException;
import java.security.MessageDigest;
import java.security.ProviderException;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import java.util.Arrays;
import javax.crypto.KeyGeneratorSpi;
import javax.crypto.SecretKey;
import javax.crypto.spec.SecretKeySpec;
import sun.security.internal.spec.TlsPrfParameterSpec;

// Referenced classes of package com.sun.crypto.provider:
//            SunJCE

public final class TlsPrfGenerator extends KeyGeneratorSpi
{

    private static final byte B0[] = new byte[0];
    private static final byte HMAC_ipad[] = genPad((byte)54, 64);
    private static final byte HMAC_opad[] = genPad((byte)92, 64);
    static final byte LABEL_CLIENT_WRITE_KEY[] = {
        99, 108, 105, 101, 110, 116, 32, 119, 114, 105, 
        116, 101, 32, 107, 101, 121
    };
    static final byte LABEL_IV_BLOCK[] = {
        73, 86, 32, 98, 108, 111, 99, 107
    };
    static final byte LABEL_KEY_EXPANSION[] = {
        107, 101, 121, 32, 101, 120, 112, 97, 110, 115, 
        105, 111, 110
    };
    static final byte LABEL_MASTER_SECRET[] = {
        109, 97, 115, 116, 101, 114, 32, 115, 101, 99, 
        114, 101, 116
    };
    static final byte LABEL_SERVER_WRITE_KEY[] = {
        115, 101, 114, 118, 101, 114, 32, 119, 114, 105, 
        116, 101, 32, 107, 101, 121
    };
    private static final String MSG = "TlsPrfGenerator must be initialized using a TlsPrfParameterSpec";
    static final byte SSL3_CONST[][] = genConst();
    private TlsPrfParameterSpec spec;

    public TlsPrfGenerator()
    {
        SunJCE.a(getClass());
    }

    static byte[] concat(byte abyte0[], byte abyte1[])
    {
        int i = abyte0.length;
        int j = abyte1.length;
        byte abyte2[] = new byte[i + j];
        System.arraycopy(abyte0, 0, abyte2, 0, i);
        System.arraycopy(abyte1, 0, abyte2, i, j);
        return abyte2;
    }

    static final byte[] doPRF(byte abyte0[], byte abyte1[], byte abyte2[], int i)
    {
        return doPRF(abyte0, abyte1, abyte2, i, MessageDigest.getInstance("MD5"), MessageDigest.getInstance("SHA1"));
    }

    static final byte[] doPRF(byte abyte0[], byte abyte1[], byte abyte2[], int i, MessageDigest messagedigest, MessageDigest messagedigest1)
    {
        byte abyte3[];
        int j;
        int k;
        byte abyte4[];
        if (abyte0 == null)
        {
            abyte3 = B0;
        } else
        {
            abyte3 = abyte0;
        }
        j = abyte3.length >> 1;
        k = j + (1 & abyte3.length);
        abyte4 = new byte[i];
        expand(messagedigest, 16, abyte3, 0, k, abyte1, abyte2, abyte4);
        expand(messagedigest1, 20, abyte3, j, k, abyte1, abyte2, abyte4);
        return abyte4;
    }

    private static final void expand(MessageDigest messagedigest, int i, byte abyte0[], int j, int k, byte abyte1[], byte abyte2[], byte abyte3[])
    {
        byte abyte4[] = (byte[])HMAC_ipad.clone();
        byte abyte5[] = (byte[])HMAC_opad.clone();
        for (int l = 0; l < k; l++)
        {
            abyte4[l] = (byte)(abyte4[l] ^ abyte0[l + j]);
            abyte5[l] = (byte)(abyte5[l] ^ abyte0[l + j]);
        }

        byte abyte6[] = new byte[i];
        int i1 = abyte3.length;
        byte abyte7[] = null;
        int j1 = i1;
        int k1 = 0;
        int l1;
        for (; j1 > 0; j1 -= l1)
        {
            messagedigest.update(abyte4);
            if (abyte7 == null)
            {
                messagedigest.update(abyte1);
                messagedigest.update(abyte2);
            } else
            {
                messagedigest.update(abyte7);
            }
            messagedigest.digest(abyte6, 0, i);
            messagedigest.update(abyte5);
            messagedigest.update(abyte6);
            if (abyte7 == null)
            {
                abyte7 = new byte[i];
            }
            messagedigest.digest(abyte7, 0, i);
            messagedigest.update(abyte4);
            messagedigest.update(abyte7);
            messagedigest.update(abyte1);
            messagedigest.update(abyte2);
            messagedigest.digest(abyte6, 0, i);
            messagedigest.update(abyte5);
            messagedigest.update(abyte6);
            messagedigest.digest(abyte6, 0, i);
            l1 = Math.min(i, j1);
            for (int i2 = 0; i2 < l1;)
            {
                int j2 = k1 + 1;
                abyte3[k1] = (byte)(abyte3[k1] ^ abyte6[i2]);
                i2++;
                k1 = j2;
            }

        }

    }

    private static byte[][] genConst()
    {
        byte abyte0[][] = new byte[10][];
        for (int i = 0; i < 10; i++)
        {
            byte abyte1[] = new byte[i + 1];
            Arrays.fill(abyte1, (byte)(i + 65));
            abyte0[i] = abyte1;
        }

        return abyte0;
    }

    static byte[] genPad(byte byte0, int i)
    {
        byte abyte0[] = new byte[i];
        Arrays.fill(abyte0, byte0);
        return abyte0;
    }

    protected final SecretKey engineGenerateKey()
    {
        if (spec == null)
        {
            throw new IllegalStateException("TlsPrfGenerator must be initialized");
        }
        SecretKey secretkey = spec.getSecret();
        byte abyte0[];
        SecretKeySpec secretkeyspec;
        if (secretkey == null)
        {
            abyte0 = null;
        } else
        {
            abyte0 = secretkey.getEncoded();
        }
        try
        {
            byte abyte1[] = spec.getLabel().getBytes("UTF8");
            int i = spec.getOutputLength();
            secretkeyspec = new SecretKeySpec(doPRF(abyte0, abyte1, spec.getSeed(), i), "TlsPrf");
        }
        catch (GeneralSecurityException generalsecurityexception)
        {
            throw new ProviderException("Could not generate PRF", generalsecurityexception);
        }
        catch (UnsupportedEncodingException unsupportedencodingexception)
        {
            throw new ProviderException("Could not generate PRF", unsupportedencodingexception);
        }
        return secretkeyspec;
    }

    protected final void engineInit(int i, SecureRandom securerandom)
    {
        throw new InvalidParameterException("TlsPrfGenerator must be initialized using a TlsPrfParameterSpec");
    }

    protected final void engineInit(SecureRandom securerandom)
    {
        throw new InvalidParameterException("TlsPrfGenerator must be initialized using a TlsPrfParameterSpec");
    }

    protected final void engineInit(AlgorithmParameterSpec algorithmparameterspec, SecureRandom securerandom)
    {
        if (!(algorithmparameterspec instanceof TlsPrfParameterSpec))
        {
            throw new InvalidAlgorithmParameterException("TlsPrfGenerator must be initialized using a TlsPrfParameterSpec");
        }
        spec = (TlsPrfParameterSpec)algorithmparameterspec;
        SecretKey secretkey = spec.getSecret();
        if (secretkey != null && !"RAW".equals(secretkey.getFormat()))
        {
            throw new InvalidAlgorithmParameterException("Key encoding format must be RAW");
        } else
        {
            return;
        }
    }

}
