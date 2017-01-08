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
import javax.crypto.CipherSpi;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.spec.IvParameterSpec;

// Referenced classes of package com.sun.crypto.provider:
//            SunJCE, SunJCE_k, SunJCE_y, DESedeParameters, 
//            SunJCE_h, SunJCE_s

public final class DESedeWrapCipher extends CipherSpi
{

    private static final byte a[] = {
        74, -35, -94, 44, 121, -24, 33, 5
    };
    private SunJCE_h b;
    private byte c[];
    private Key d;
    private boolean e;

    public DESedeWrapCipher()
    {
        c = null;
        d = null;
        e = false;
        SunJCE.a(getClass());
        b = new SunJCE_k(new SunJCE_y());
    }

    private static final byte[] a(byte abyte0[])
    {
        return a(abyte0, 0, abyte0.length);
    }

    private static final byte[] a(byte abyte0[], int i, int j)
    {
        MessageDigest messagedigest;
        byte abyte1[];
        try
        {
            messagedigest = MessageDigest.getInstance("SHA1");
        }
        catch (NoSuchAlgorithmException nosuchalgorithmexception)
        {
            throw new RuntimeException("SHA1 message digest not available");
        }
        messagedigest.update(abyte0, i, j);
        abyte1 = new byte[8];
        System.arraycopy(messagedigest.digest(), 0, abyte1, 0, abyte1.length);
        return abyte1;
    }

    protected final int engineDoFinal(byte abyte0[], int i, int j, byte abyte1[], int k)
    {
        throw new IllegalStateException("Cipher has not been initialized");
    }

    protected final byte[] engineDoFinal(byte abyte0[], int i, int j)
    {
        throw new IllegalStateException("Cipher has not been initialized");
    }

    protected final int engineGetBlockSize()
    {
        return 8;
    }

    protected final byte[] engineGetIV()
    {
        if (c == null)
        {
            return null;
        } else
        {
            return (byte[])c.clone();
        }
    }

    protected final int engineGetKeySize(Key key)
    {
        byte abyte0[] = key.getEncoded();
        if (abyte0.length != 24)
        {
            throw new InvalidKeyException((new StringBuilder("Invalid key length: ")).append(abyte0.length).append(" bytes").toString());
        } else
        {
            return 112;
        }
    }

    protected final int engineGetOutputSize(int i)
    {
        int j;
        if (e)
        {
            j = i - 16;
        } else
        {
            j = i + 16;
        }
        if (j < 0)
        {
            j = 0;
        }
        return j;
    }

    protected final AlgorithmParameters engineGetParameters()
    {
        byte abyte0[] = c;
        AlgorithmParameters algorithmparameters = null;
        if (abyte0 != null)
        {
            String s = d.getAlgorithm();
            AlgorithmParameters algorithmparameters1;
            try
            {
                algorithmparameters1 = AlgorithmParameters.getInstance(s, "SunJCE");
            }
            catch (NoSuchAlgorithmException nosuchalgorithmexception)
            {
                throw new RuntimeException((new StringBuilder("Cannot find ")).append(s).append(" AlgorithmParameters implementation in SunJCE provider").toString());
            }
            catch (NoSuchProviderException nosuchproviderexception)
            {
                throw new RuntimeException("Cannot find SunJCE provider");
            }
            algorithmparameters = algorithmparameters1;
            try
            {
                algorithmparameters.init(new IvParameterSpec(c));
            }
            catch (InvalidParameterSpecException invalidparameterspecexception)
            {
                throw new RuntimeException("IvParameterSpec not supported");
            }
        }
        return algorithmparameters;
    }

    protected final void engineInit(int i, Key key, AlgorithmParameters algorithmparameters, SecureRandom securerandom)
    {
        IvParameterSpec ivparameterspec = null;
        if (algorithmparameters != null)
        {
            try
            {
                DESedeParameters desedeparameters = new DESedeParameters();
                desedeparameters.engineInit(algorithmparameters.getEncoded());
                ivparameterspec = (IvParameterSpec)desedeparameters.engineGetParameterSpec(javax/crypto/spec/IvParameterSpec);
            }
            catch (Exception exception)
            {
                InvalidAlgorithmParameterException invalidalgorithmparameterexception = new InvalidAlgorithmParameterException("Wrong parameter type: IV expected");
                invalidalgorithmparameterexception.initCause(exception);
                throw invalidalgorithmparameterexception;
            }
        }
        engineInit(i, key, ((AlgorithmParameterSpec) (ivparameterspec)), securerandom);
    }

    protected final void engineInit(int i, Key key, SecureRandom securerandom)
    {
        try
        {
            engineInit(i, key, ((AlgorithmParameterSpec) (null)), securerandom);
            return;
        }
        catch (InvalidAlgorithmParameterException invalidalgorithmparameterexception)
        {
            InvalidKeyException invalidkeyexception = new InvalidKeyException("Parameters required");
            invalidkeyexception.initCause(invalidalgorithmparameterexception);
            throw invalidkeyexception;
        }
    }

    protected final void engineInit(int i, Key key, AlgorithmParameterSpec algorithmparameterspec, SecureRandom securerandom)
    {
        byte abyte0[];
        if (i == 3)
        {
            e = false;
            if (algorithmparameterspec == null)
            {
                c = new byte[8];
                if (securerandom == null)
                {
                    securerandom = SunJCE.h;
                }
                securerandom.nextBytes(c);
            } else
            if (algorithmparameterspec instanceof IvParameterSpec)
            {
                c = ((IvParameterSpec)algorithmparameterspec).getIV();
            } else
            {
                throw new InvalidAlgorithmParameterException("Wrong parameter type: IV expected");
            }
            abyte0 = c;
        } else
        if (i == 4)
        {
            if (algorithmparameterspec != null)
            {
                throw new InvalidAlgorithmParameterException("No parameter accepted for unwrapping keys");
            }
            c = null;
            e = true;
            abyte0 = a;
        } else
        {
            throw new UnsupportedOperationException("This cipher can only be used for key wrapping and unwrapping");
        }
        b.a(e, key.getAlgorithm(), key.getEncoded(), abyte0);
        d = key;
    }

    protected final void engineSetMode(String s)
    {
        if (!s.equalsIgnoreCase("CBC"))
        {
            throw new NoSuchAlgorithmException((new StringBuilder()).append(s).append(" cannot be used").toString());
        } else
        {
            return;
        }
    }

    protected final void engineSetPadding(String s)
    {
        if (!s.equalsIgnoreCase("NoPadding"))
        {
            throw new NoSuchPaddingException((new StringBuilder()).append(s).append(" cannot be used").toString());
        } else
        {
            return;
        }
    }

    protected final Key engineUnwrap(byte abyte0[], String s, int i)
    {
        if (abyte0.length == 0)
        {
            throw new InvalidKeyException("The wrapped key is empty");
        }
        byte abyte1[] = new byte[abyte0.length];
        b.b(abyte0, 0, abyte0.length, abyte1, 0);
        for (int j = 0; j < abyte1.length / 2; j++)
        {
            byte byte0 = abyte1[j];
            abyte1[j] = abyte1[(-1 + abyte1.length) - j];
            abyte1[(-1 + abyte1.length) - j] = byte0;
        }

        c = new byte[a.length];
        System.arraycopy(abyte1, 0, c, 0, c.length);
        b.a(true, d.getAlgorithm(), d.getEncoded(), c);
        b.b(abyte1, c.length, abyte1.length - c.length, abyte1, c.length);
        int k = -8 + (abyte1.length - c.length);
        byte abyte2[] = a(abyte1, c.length, k);
        int l = k + c.length;
        for (int i1 = 0; i1 < abyte2.length; i1++)
        {
            if (abyte1[l + i1] != abyte2[i1])
            {
                throw new InvalidKeyException("Checksum comparison failed");
            }
        }

        b.a(e, d.getAlgorithm(), d.getEncoded(), a);
        byte abyte3[] = new byte[k];
        System.arraycopy(abyte1, c.length, abyte3, 0, abyte3.length);
        return SunJCE_s.a(abyte3, s, i);
    }

    protected final int engineUpdate(byte abyte0[], int i, int j, byte abyte1[], int k)
    {
        throw new IllegalStateException("Cipher has not been initialized");
    }

    protected final byte[] engineUpdate(byte abyte0[], int i, int j)
    {
        throw new IllegalStateException("Cipher has not been initialized");
    }

    protected final byte[] engineWrap(Key key)
    {
        byte abyte0[] = key.getEncoded();
        if (abyte0 == null || abyte0.length == 0)
        {
            throw new InvalidKeyException("Cannot get an encoding of the key to be wrapped");
        }
        byte abyte1[] = a(abyte0);
        byte abyte2[] = new byte[c.length + abyte0.length + abyte1.length];
        System.arraycopy(abyte0, 0, abyte2, c.length, abyte0.length);
        System.arraycopy(abyte1, 0, abyte2, c.length + abyte0.length, abyte1.length);
        b.a(abyte2, c.length, abyte0.length + abyte1.length, abyte2, c.length);
        System.arraycopy(c, 0, abyte2, 0, c.length);
        for (int i = 0; i < abyte2.length / 2; i++)
        {
            byte byte0 = abyte2[i];
            abyte2[i] = abyte2[(-1 + abyte2.length) - i];
            abyte2[(-1 + abyte2.length) - i] = byte0;
        }

        try
        {
            b.a(false, d.getAlgorithm(), d.getEncoded(), a);
        }
        catch (InvalidKeyException invalidkeyexception)
        {
            throw new RuntimeException("Internal cipher key is corrupted");
        }
        b.a(abyte2, 0, abyte2.length, abyte2, 0);
        try
        {
            b.a(e, d.getAlgorithm(), d.getEncoded(), c);
        }
        catch (InvalidKeyException invalidkeyexception1)
        {
            throw new RuntimeException("Internal cipher key is corrupted");
        }
        return abyte2;
    }

}
