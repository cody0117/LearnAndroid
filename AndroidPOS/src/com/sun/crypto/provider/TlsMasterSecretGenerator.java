// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.sun.crypto.provider;

import java.security.DigestException;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidParameterException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.ProviderException;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import javax.crypto.KeyGeneratorSpi;
import javax.crypto.SecretKey;
import sun.security.internal.spec.TlsMasterSecretParameterSpec;

// Referenced classes of package com.sun.crypto.provider:
//            SunJCE, TlsPrfGenerator

public final class TlsMasterSecretGenerator extends KeyGeneratorSpi
{

    private static final String MSG = "TlsMasterSecretGenerator must be initialized using a TlsMasterSecretParameterSpec";
    private int protocolVersion;
    private TlsMasterSecretParameterSpec spec;

    public TlsMasterSecretGenerator()
    {
        SunJCE.a(getClass());
    }

    protected final SecretKey engineGenerateKey()
    {
        int i = 0;
        if (spec == null)
        {
            throw new IllegalStateException("TlsMasterSecretGenerator must be initialized");
        }
        SecretKey secretkey = spec.getPremasterSecret();
        byte abyte0[] = secretkey.getEncoded();
        int j;
        int k;
        DigestException digestexception;
        NoSuchAlgorithmException nosuchalgorithmexception;
        byte abyte1[];
        byte abyte2[];
        byte abyte3[];
        MessageDigest messagedigest;
        MessageDigest messagedigest1;
        byte abyte4[];
        byte abyte5[];
        if (secretkey.getAlgorithm().equals("TlsRsaPremasterSecret"))
        {
            int l = 0xff & abyte0[0];
            int i1 = 0xff & abyte0[1];
            k = l;
            j = i1;
        } else
        {
            j = -1;
            k = -1;
        }
        abyte1 = spec.getClientRandom();
        abyte2 = spec.getServerRandom();
        if (protocolVersion < 769) goto _L2; else goto _L1
_L1:
        abyte5 = TlsPrfGenerator.concat(abyte1, abyte2);
        abyte3 = TlsPrfGenerator.doPRF(abyte0, TlsPrfGenerator.LABEL_MASTER_SECRET, abyte5, 48);
_L3:
        return new TlsMasterSecretKey(abyte3, k, j);
_L2:
        abyte3 = new byte[48];
        messagedigest = MessageDigest.getInstance("MD5");
        messagedigest1 = MessageDigest.getInstance("SHA");
        abyte4 = new byte[20];
        while (i < 3) 
        {
            try
            {
                messagedigest1.update(TlsPrfGenerator.SSL3_CONST[i]);
                messagedigest1.update(abyte0);
                messagedigest1.update(abyte1);
                messagedigest1.update(abyte2);
                messagedigest1.digest(abyte4, 0, 20);
                messagedigest.update(abyte0);
                messagedigest.update(abyte4);
                messagedigest.digest(abyte3, i << 4, 16);
            }
            // Misplaced declaration of an exception variable
            catch (NoSuchAlgorithmException nosuchalgorithmexception)
            {
                throw new ProviderException(nosuchalgorithmexception);
            }
            // Misplaced declaration of an exception variable
            catch (DigestException digestexception)
            {
                throw new ProviderException(digestexception);
            }
            i++;
        }
          goto _L3
    }

    protected final void engineInit(int i, SecureRandom securerandom)
    {
        throw new InvalidParameterException("TlsMasterSecretGenerator must be initialized using a TlsMasterSecretParameterSpec");
    }

    protected final void engineInit(SecureRandom securerandom)
    {
        throw new InvalidParameterException("TlsMasterSecretGenerator must be initialized using a TlsMasterSecretParameterSpec");
    }

    protected final void engineInit(AlgorithmParameterSpec algorithmparameterspec, SecureRandom securerandom)
    {
        if (!(algorithmparameterspec instanceof TlsMasterSecretParameterSpec))
        {
            throw new InvalidAlgorithmParameterException("TlsMasterSecretGenerator must be initialized using a TlsMasterSecretParameterSpec");
        }
        spec = (TlsMasterSecretParameterSpec)algorithmparameterspec;
        if (!"RAW".equals(spec.getPremasterSecret().getFormat()))
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

    private class TlsMasterSecretKey
        implements TlsMasterSecret
    {

        private byte key[];
        private final int majorVersion;
        private final int minorVersion;

        public final String getAlgorithm()
        {
            return "TlsMasterSecret";
        }

        public final byte[] getEncoded()
        {
            return (byte[])key.clone();
        }

        public final String getFormat()
        {
            return "RAW";
        }

        public final int getMajorVersion()
        {
            return majorVersion;
        }

        public final int getMinorVersion()
        {
            return minorVersion;
        }

        TlsMasterSecretKey(byte abyte0[], int i, int j)
        {
            key = abyte0;
            majorVersion = i;
            minorVersion = j;
        }
    }

}
