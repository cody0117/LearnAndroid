// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.sun.crypto.provider;

import java.security.GeneralSecurityException;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidParameterException;
import java.security.MessageDigest;
import java.security.ProviderException;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import javax.crypto.KeyGeneratorSpi;
import javax.crypto.SecretKey;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
import sun.security.internal.spec.TlsKeyMaterialParameterSpec;
import sun.security.internal.spec.TlsKeyMaterialSpec;

// Referenced classes of package com.sun.crypto.provider:
//            SunJCE, TlsPrfGenerator

public final class TlsKeyMaterialGenerator extends KeyGeneratorSpi
{

    private static final String MSG = "TlsKeyMaterialGenerator must be initialized using a TlsKeyMaterialParameterSpec";
    private int protocolVersion;
    private TlsKeyMaterialParameterSpec spec;

    public TlsKeyMaterialGenerator()
    {
        SunJCE.a(getClass());
    }

    private SecretKey engineGenerateKey0()
    {
        byte abyte1[];
        byte abyte2[];
        int j;
        boolean flag;
        int l;
        MessageDigest messagedigest;
        MessageDigest messagedigest1;
        byte abyte3[];
        SecretKeySpec secretkeyspec;
        SecretKeySpec secretkeyspec1;
        String s;
        byte abyte6[];
        byte abyte7[];
        int l2;
        byte abyte0[] = spec.getMasterSecret().getEncoded();
        abyte1 = spec.getClientRandom();
        abyte2 = spec.getServerRandom();
        int i = spec.getMacKeyLength();
        j = spec.getExpandedCipherKeyLength();
        int k;
        int i1;
        int j1;
        int k1;
        byte abyte5[];
        int i2;
        int j2;
        if (j != 0)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        k = spec.getCipherKeyLength();
        l = spec.getIvLength();
        i1 = i + k;
        if (flag)
        {
            j1 = 0;
        } else
        {
            j1 = l;
        }
        k1 = j1 + i1 << 1;
        messagedigest = MessageDigest.getInstance("MD5");
        messagedigest1 = MessageDigest.getInstance("SHA1");
        if (protocolVersion >= 769)
        {
            byte abyte14[] = TlsPrfGenerator.concat(abyte2, abyte1);
            abyte3 = TlsPrfGenerator.doPRF(abyte0, TlsPrfGenerator.LABEL_KEY_EXPANSION, abyte14, k1, messagedigest, messagedigest1);
        } else
        {
            abyte3 = new byte[k1];
            byte abyte4[] = new byte[20];
            int l1 = 0;
            while (k1 > 0) 
            {
                messagedigest1.update(TlsPrfGenerator.SSL3_CONST[l1]);
                messagedigest1.update(abyte0);
                messagedigest1.update(abyte2);
                messagedigest1.update(abyte1);
                messagedigest1.digest(abyte4, 0, 20);
                messagedigest.update(abyte0);
                messagedigest.update(abyte4);
                if (k1 >= 16)
                {
                    messagedigest.digest(abyte3, l1 << 4, 16);
                } else
                {
                    messagedigest.digest(abyte4, 0, 16);
                    System.arraycopy(abyte4, 0, abyte3, l1 << 4, k1);
                }
                l1++;
                k1 -= 16;
            }
        }
        abyte5 = new byte[i];
        System.arraycopy(abyte3, 0, abyte5, 0, i);
        i2 = i + 0;
        secretkeyspec = new SecretKeySpec(abyte5, "Mac");
        System.arraycopy(abyte3, i2, abyte5, 0, i);
        j2 = i2 + i;
        secretkeyspec1 = new SecretKeySpec(abyte5, "Mac");
        if (k == 0)
        {
            return new TlsKeyMaterialSpec(secretkeyspec, secretkeyspec1);
        }
        s = spec.getCipherAlgorithm();
        abyte6 = new byte[k];
        System.arraycopy(abyte3, j2, abyte6, 0, k);
        int k2 = j2 + k;
        abyte7 = new byte[k];
        System.arraycopy(abyte3, k2, abyte7, 0, k);
        l2 = k2 + k;
        if (flag) goto _L2; else goto _L1
_L1:
        SecretKeySpec secretkeyspec2;
        SecretKeySpec secretkeyspec3;
        secretkeyspec2 = new SecretKeySpec(abyte6, s);
        secretkeyspec3 = new SecretKeySpec(abyte7, s);
        if (l == 0) goto _L4; else goto _L3
_L3:
        IvParameterSpec ivparameterspec;
        IvParameterSpec ivparameterspec1;
        byte abyte8[] = new byte[l];
        System.arraycopy(abyte3, l2, abyte8, 0, l);
        int i3 = l2 + l;
        IvParameterSpec ivparameterspec2 = new IvParameterSpec(abyte8);
        System.arraycopy(abyte3, i3, abyte8, 0, l);
        ivparameterspec1 = new IvParameterSpec(abyte8);
        ivparameterspec = ivparameterspec2;
_L6:
        return new TlsKeyMaterialSpec(secretkeyspec, secretkeyspec1, secretkeyspec2, ivparameterspec, secretkeyspec3, ivparameterspec1);
_L2:
        if (protocolVersion >= 769)
        {
            byte abyte11[] = TlsPrfGenerator.concat(abyte1, abyte2);
            SecretKeySpec secretkeyspec4 = new SecretKeySpec(TlsPrfGenerator.doPRF(abyte6, TlsPrfGenerator.LABEL_CLIENT_WRITE_KEY, abyte11, j, messagedigest, messagedigest1), s);
            SecretKeySpec secretkeyspec5 = new SecretKeySpec(TlsPrfGenerator.doPRF(abyte7, TlsPrfGenerator.LABEL_SERVER_WRITE_KEY, abyte11, j, messagedigest, messagedigest1), s);
            byte abyte9[];
            byte abyte10[];
            IvParameterSpec ivparameterspec3;
            IvParameterSpec ivparameterspec4;
            IvParameterSpec ivparameterspec5;
            if (l != 0)
            {
                byte abyte12[] = new byte[l];
                byte abyte13[] = TlsPrfGenerator.doPRF(null, TlsPrfGenerator.LABEL_IV_BLOCK, abyte11, l << 1, messagedigest, messagedigest1);
                System.arraycopy(abyte13, 0, abyte12, 0, l);
                ivparameterspec5 = new IvParameterSpec(abyte12);
                System.arraycopy(abyte13, l, abyte12, 0, l);
                ivparameterspec4 = new IvParameterSpec(abyte12);
            } else
            {
                ivparameterspec4 = null;
                ivparameterspec5 = null;
            }
            secretkeyspec3 = secretkeyspec5;
            ivparameterspec = ivparameterspec5;
            secretkeyspec2 = secretkeyspec4;
            ivparameterspec1 = ivparameterspec4;
            continue; /* Loop/switch isn't completed */
        }
        abyte9 = new byte[j];
        messagedigest.update(abyte6);
        messagedigest.update(abyte1);
        messagedigest.update(abyte2);
        System.arraycopy(messagedigest.digest(), 0, abyte9, 0, j);
        secretkeyspec2 = new SecretKeySpec(abyte9, s);
        messagedigest.update(abyte7);
        messagedigest.update(abyte2);
        messagedigest.update(abyte1);
        System.arraycopy(messagedigest.digest(), 0, abyte9, 0, j);
        secretkeyspec3 = new SecretKeySpec(abyte9, s);
        if (l != 0)
        {
            abyte10 = new byte[l];
            messagedigest.update(abyte1);
            messagedigest.update(abyte2);
            System.arraycopy(messagedigest.digest(), 0, abyte10, 0, l);
            ivparameterspec3 = new IvParameterSpec(abyte10);
            messagedigest.update(abyte2);
            messagedigest.update(abyte1);
            System.arraycopy(messagedigest.digest(), 0, abyte10, 0, l);
            ivparameterspec1 = new IvParameterSpec(abyte10);
            ivparameterspec = ivparameterspec3;
            continue; /* Loop/switch isn't completed */
        }
_L4:
        ivparameterspec = null;
        ivparameterspec1 = null;
        if (true) goto _L6; else goto _L5
_L5:
    }

    protected final SecretKey engineGenerateKey()
    {
        if (spec == null)
        {
            throw new IllegalStateException("TlsKeyMaterialGenerator must be initialized");
        }
        SecretKey secretkey;
        try
        {
            secretkey = engineGenerateKey0();
        }
        catch (GeneralSecurityException generalsecurityexception)
        {
            throw new ProviderException(generalsecurityexception);
        }
        return secretkey;
    }

    protected final void engineInit(int i, SecureRandom securerandom)
    {
        throw new InvalidParameterException("TlsKeyMaterialGenerator must be initialized using a TlsKeyMaterialParameterSpec");
    }

    protected final void engineInit(SecureRandom securerandom)
    {
        throw new InvalidParameterException("TlsKeyMaterialGenerator must be initialized using a TlsKeyMaterialParameterSpec");
    }

    protected final void engineInit(AlgorithmParameterSpec algorithmparameterspec, SecureRandom securerandom)
    {
        if (!(algorithmparameterspec instanceof TlsKeyMaterialParameterSpec))
        {
            throw new InvalidAlgorithmParameterException("TlsKeyMaterialGenerator must be initialized using a TlsKeyMaterialParameterSpec");
        }
        spec = (TlsKeyMaterialParameterSpec)algorithmparameterspec;
        if (!"RAW".equals(spec.getMasterSecret().getFormat()))
        {
            throw new InvalidAlgorithmParameterException("Key format must be RAW");
        }
        protocolVersion = spec.getMajorVersion() << 8 | spec.getMinorVersion();
        if (protocolVersion < 768 || protocolVersion > 770)
        {
            throw new InvalidAlgorithmParameterException("Only SSL 3.0, TLS 1.0, and TLS 1.1 supported");
        } else
        {
            return;
        }
    }
}
