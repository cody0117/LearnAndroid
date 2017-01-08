// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.sun.crypto.provider;

import java.security.AlgorithmParameters;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.Key;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import javax.crypto.CipherSpi;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.ShortBufferException;

// Referenced classes of package com.sun.crypto.provider:
//            SunJCE, SunJCE_s

public final class ARCFOURCipher extends CipherSpi
{

    private final int a[] = new int[256];
    private int b;
    private int c;
    private byte d[];

    public ARCFOURCipher()
    {
        SunJCE.a(getClass());
    }

    private void a(int i, Key key)
    {
        if (i <= 0 || i > 4)
        {
            throw new InvalidKeyException((new StringBuilder("Unknown opmode: ")).append(i).toString());
        } else
        {
            d = a(key);
            a(d);
            return;
        }
    }

    private void a(byte abyte0[])
    {
        for (int i = 0; i < 256; i++)
        {
            a[i] = i;
        }

        int j = 0;
        int k = 0;
        for (int l = 0; l < 256; l++)
        {
            int i1 = a[l];
            k = 0xff & k + i1 + abyte0[j];
            a[l] = a[k];
            a[k] = i1;
            if (++j == abyte0.length)
            {
                j = 0;
            }
        }

        b = 0;
        c = 0;
    }

    private void a(byte abyte0[], int i, int j, byte abyte1[], int k)
    {
        if (b < 0)
        {
            a(d);
        }
        do
        {
            int l = j - 1;
            if (j > 0)
            {
                b = 0xff & 1 + b;
                int i1 = a[b];
                c = 0xff & i1 + c;
                int j1 = a[c];
                a[b] = j1;
                a[c] = i1;
                int k1 = k + 1;
                int l1 = i + 1;
                abyte1[k] = (byte)(abyte0[i] ^ a[0xff & i1 + j1]);
                k = k1;
                j = l;
                i = l1;
            } else
            {
                return;
            }
        } while (true);
    }

    private static byte[] a(Key key)
    {
        String s = key.getAlgorithm();
        if (!s.equals("RC4") && !s.equals("ARCFOUR"))
        {
            throw new InvalidKeyException((new StringBuilder("Not an ARCFOUR key: ")).append(s).toString());
        }
        if (!"RAW".equals(key.getFormat()))
        {
            throw new InvalidKeyException("Key encoding format must be RAW");
        }
        byte abyte0[] = key.getEncoded();
        if (abyte0.length < 5 || abyte0.length > 128)
        {
            throw new InvalidKeyException("Key length must be between 40 and 1024 bit");
        } else
        {
            return abyte0;
        }
    }

    protected final int engineDoFinal(byte abyte0[], int i, int j, byte abyte1[], int k)
    {
        int l = engineUpdate(abyte0, i, j, abyte1, k);
        b = -1;
        return l;
    }

    protected final byte[] engineDoFinal(byte abyte0[], int i, int j)
    {
        byte abyte1[] = engineUpdate(abyte0, i, j);
        b = -1;
        return abyte1;
    }

    protected final int engineGetBlockSize()
    {
        return 0;
    }

    protected final byte[] engineGetIV()
    {
        return null;
    }

    protected final int engineGetKeySize(Key key)
    {
        return a(key).length << 3;
    }

    protected final int engineGetOutputSize(int i)
    {
        return i;
    }

    protected final AlgorithmParameters engineGetParameters()
    {
        return null;
    }

    protected final void engineInit(int i, Key key, AlgorithmParameters algorithmparameters, SecureRandom securerandom)
    {
        if (algorithmparameters != null)
        {
            throw new InvalidAlgorithmParameterException("Parameters not supported");
        } else
        {
            a(i, key);
            return;
        }
    }

    protected final void engineInit(int i, Key key, SecureRandom securerandom)
    {
        a(i, key);
    }

    protected final void engineInit(int i, Key key, AlgorithmParameterSpec algorithmparameterspec, SecureRandom securerandom)
    {
        if (algorithmparameterspec != null)
        {
            throw new InvalidAlgorithmParameterException("Parameters not supported");
        } else
        {
            a(i, key);
            return;
        }
    }

    protected final void engineSetMode(String s)
    {
        if (!s.equalsIgnoreCase("ECB"))
        {
            throw new NoSuchAlgorithmException((new StringBuilder("Unsupported mode ")).append(s).toString());
        } else
        {
            return;
        }
    }

    protected final void engineSetPadding(String s)
    {
        if (!s.equalsIgnoreCase("NoPadding"))
        {
            throw new NoSuchPaddingException("Padding must be NoPadding");
        } else
        {
            return;
        }
    }

    protected final Key engineUnwrap(byte abyte0[], String s, int i)
    {
        return SunJCE_s.a(engineDoFinal(abyte0, 0, abyte0.length), s, i);
    }

    protected final int engineUpdate(byte abyte0[], int i, int j, byte abyte1[], int k)
    {
        if (abyte1.length - k < j)
        {
            throw new ShortBufferException("Output buffer too small");
        } else
        {
            a(abyte0, i, j, abyte1, k);
            return j;
        }
    }

    protected final byte[] engineUpdate(byte abyte0[], int i, int j)
    {
        byte abyte1[] = new byte[j];
        a(abyte0, i, j, abyte1, 0);
        return abyte1;
    }

    protected final byte[] engineWrap(Key key)
    {
        byte abyte0[] = key.getEncoded();
        if (abyte0 == null || abyte0.length == 0)
        {
            throw new InvalidKeyException("Could not obtain encoded key");
        } else
        {
            return engineDoFinal(abyte0, 0, abyte0.length);
        }
    }
}
