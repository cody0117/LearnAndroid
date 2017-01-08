// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.sun.crypto.provider;

import java.security.AlgorithmParameters;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.Key;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import java.security.spec.InvalidParameterSpecException;
import java.util.Locale;
import javax.crypto.BadPaddingException;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.ShortBufferException;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.RC2ParameterSpec;

// Referenced classes of package com.sun.crypto.provider:
//            SunJCE_g, SunJCE_i, SunJCE_h, SunJCE_j, 
//            SunJCE_s, SunJCE, SunJCE_k, SunJCE_l, 
//            SunJCE_m, SunJCE_n, SunJCE_o, SunJCE_p, 
//            SunJCE_q, SunJCE_r, SunJCE_e

final class SunJCE_f
{

    private static final int k = 0;
    private static final int l = 1;
    private static final int m = 2;
    private static final int n = 3;
    private static final int o = 4;
    private static final int p = 5;
    private static final int q = 6;
    private byte a[];
    private int b;
    private int c;
    private int d;
    private int e;
    private int f;
    private SunJCE_j g;
    private SunJCE_h h;
    private int i;
    private boolean j;

    SunJCE_f(SunJCE_e sunjce_e, int i1)
    {
        a = null;
        b = 0;
        c = 0;
        d = 0;
        e = 0;
        f = 0;
        g = null;
        h = null;
        i = 0;
        j = false;
        b = i1;
        c = i1;
        f = i1;
        a = new byte[2 * b];
        h = new SunJCE_g(sunjce_e);
        g = new SunJCE_i(b);
    }

    private static int a(String s, int i1, int j1)
    {
        if (s.length() > i1)
        {
            int k1;
            int l1;
            try
            {
                k1 = Integer.valueOf(s.substring(i1)).intValue();
            }
            catch (NumberFormatException numberformatexception)
            {
                throw new NoSuchAlgorithmException((new StringBuilder("Algorithm mode: ")).append(s).append(" not implemented").toString());
            }
            l1 = k1 >> 3;
            if (k1 % 8 != 0 || l1 > j1)
            {
                throw new NoSuchAlgorithmException((new StringBuilder("Invalid algorithm mode: ")).append(s).toString());
            }
            j1 = l1;
        }
        return j1;
    }

    private int a(byte abyte0[], int i1, byte abyte1[], int j1, int k1)
    {
        if (abyte0 == null || k1 == 0)
        {
            return 0;
        }
        if (i != 2 && i != 3 && k1 % c != 0 && i != 6)
        {
            if (g != null)
            {
                throw new IllegalBlockSizeException((new StringBuilder("Input length (with padding) not multiple of ")).append(c).append(" bytes").toString());
            } else
            {
                throw new IllegalBlockSizeException((new StringBuilder("Input length not multiple of ")).append(c).append(" bytes").toString());
            }
        }
        if (j)
        {
            h.d(abyte0, i1, k1, abyte1, j1);
            return k1;
        } else
        {
            h.c(abyte0, i1, k1, abyte1, j1);
            return k1;
        }
    }

    static byte[] a(Key key)
    {
        if (key == null)
        {
            throw new InvalidKeyException("No key given");
        }
        if (!"RAW".equalsIgnoreCase(key.getFormat()))
        {
            throw new InvalidKeyException("Wrong format: RAW bytes needed");
        }
        byte abyte0[] = key.getEncoded();
        if (abyte0 == null)
        {
            throw new InvalidKeyException("RAW key bytes missing");
        } else
        {
            return abyte0;
        }
    }

    final int a(int i1)
    {
        int j1;
        for (j1 = i1 + d; g == null || j;)
        {
            return j1;
        }

        if (c != b)
        {
            if (j1 < f)
            {
                return f;
            } else
            {
                return (j1 + b) - (j1 - f) % b;
            }
        } else
        {
            return j1 + g.a(j1);
        }
    }

    final int a(byte abyte0[], int i1, int j1, byte abyte1[], int k1)
    {
        int l1 = (j1 + d) - e;
        if (g != null && j)
        {
            l1 -= b;
        }
        int i2;
        if (l1 > 0)
        {
            i2 = l1 - l1 % c;
        } else
        {
            i2 = 0;
        }
        if (abyte1 == null || abyte1.length - k1 < i2)
        {
            throw new ShortBufferException((new StringBuilder("Output buffer must be (at least) ")).append(i2).append(" bytes long").toString());
        }
        if (i2 != 0)
        {
            byte abyte2[] = new byte[i2];
            int j2 = i2 - d;
            int k2 = d;
            int l2;
            int i3;
            if (j2 < 0)
            {
                l2 = i2;
                i3 = 0;
            } else
            {
                l2 = k2;
                i3 = j2;
            }
            if (d != 0)
            {
                System.arraycopy(a, 0, abyte2, 0, l2);
            }
            if (i3 > 0)
            {
                System.arraycopy(abyte0, i1, abyte2, l2, i3);
            }
            if (j)
            {
                h.b(abyte2, 0, i2, abyte1, k1);
            } else
            {
                h.a(abyte2, 0, i2, abyte1, k1);
            }
            if (c != b)
            {
                if (i2 < f)
                {
                    f = f - i2;
                } else
                {
                    f = b - (i2 - f) % b;
                }
            }
            j1 -= i3;
            i1 += i3;
            d = d - l2;
            if (d > 0)
            {
                System.arraycopy(a, l2, a, 0, d);
            }
        }
        if (j1 > 0)
        {
            System.arraycopy(abyte0, i1, a, d, j1);
        }
        d = j1 + d;
        return i2;
    }

    final Key a(byte abyte0[], String s, int i1)
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
        return SunJCE_s.a(abyte1, s, i1);
    }

    final void a(int i1, Key key, AlgorithmParameters algorithmparameters, SecureRandom securerandom)
    {
        IvParameterSpec ivparameterspec = null;
        if (algorithmparameters != null)
        {
            try
            {
                ivparameterspec = (IvParameterSpec)algorithmparameters.getParameterSpec(javax/crypto/spec/IvParameterSpec);
            }
            catch (InvalidParameterSpecException invalidparameterspecexception)
            {
                throw new InvalidAlgorithmParameterException("Wrong parameter type: IV expected");
            }
        }
        a(i1, key, ((AlgorithmParameterSpec) (ivparameterspec)), securerandom);
    }

    final void a(int i1, Key key, SecureRandom securerandom)
    {
        try
        {
            a(i1, key, ((AlgorithmParameterSpec) (null)), securerandom);
            return;
        }
        catch (InvalidAlgorithmParameterException invalidalgorithmparameterexception)
        {
            throw new InvalidKeyException(invalidalgorithmparameterexception.getMessage());
        }
    }

    final void a(int i1, Key key, AlgorithmParameterSpec algorithmparameterspec, SecureRandom securerandom)
    {
        boolean flag;
        byte abyte0[];
        byte abyte1[];
        if (i1 == 2 || i1 == 4)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        j = flag;
        abyte0 = a(key);
        if (algorithmparameterspec == null)
        {
            abyte1 = null;
        } else
        if (algorithmparameterspec instanceof IvParameterSpec)
        {
            abyte1 = ((IvParameterSpec)algorithmparameterspec).getIV();
            if (abyte1 == null || abyte1.length != b)
            {
                throw new InvalidAlgorithmParameterException((new StringBuilder("Wrong IV length: must be ")).append(b).append(" bytes long").toString());
            }
        } else
        if (algorithmparameterspec instanceof RC2ParameterSpec)
        {
            abyte1 = ((RC2ParameterSpec)algorithmparameterspec).getIV();
            if (abyte1 != null && abyte1.length != b)
            {
                throw new InvalidAlgorithmParameterException((new StringBuilder("Wrong IV length: must be ")).append(b).append(" bytes long").toString());
            }
        } else
        {
            throw new InvalidAlgorithmParameterException("Wrong parameter type: IV expected");
        }
        if (i == 0)
        {
            if (abyte1 != null)
            {
                throw new InvalidAlgorithmParameterException("ECB mode cannot use IV");
            }
        } else
        if (abyte1 == null)
        {
            if (j)
            {
                throw new InvalidAlgorithmParameterException("Parameters missing");
            }
            if (securerandom == null)
            {
                securerandom = SunJCE.h;
            }
            abyte1 = new byte[b];
            securerandom.nextBytes(abyte1);
        }
        d = 0;
        f = b;
        String s = key.getAlgorithm();
        h.a(j, s, abyte0, abyte1);
    }

    final void a(String s)
    {
        if (s == null)
        {
            throw new NoSuchAlgorithmException("null mode");
        }
        String s1 = s.toUpperCase(Locale.ENGLISH);
        if (s1.equals("ECB"))
        {
            return;
        }
        SunJCE_e sunjce_e = h.e();
        if (s1.equals("CBC"))
        {
            i = 1;
            h = new SunJCE_k(sunjce_e);
            return;
        }
        if (s1.equals("CTS"))
        {
            i = 6;
            h = new SunJCE_l(sunjce_e);
            e = 1 + b;
            g = null;
            return;
        }
        if (s1.equals("CTR"))
        {
            i = 5;
            h = new SunJCE_m(sunjce_e);
            c = 1;
            g = null;
            return;
        }
        if (s1.startsWith("CFB"))
        {
            i = 2;
            c = a(s, 3, b);
            h = new SunJCE_n(sunjce_e, c);
            return;
        }
        if (s1.startsWith("OFB"))
        {
            i = 3;
            c = a(s, 3, b);
            h = new SunJCE_o(sunjce_e, c);
            return;
        }
        if (s1.equals("PCBC"))
        {
            i = 4;
            h = new SunJCE_p(sunjce_e);
            return;
        } else
        {
            throw new NoSuchAlgorithmException((new StringBuilder("Cipher mode: ")).append(s).append(" not found").toString());
        }
    }

    final byte[] a()
    {
        byte abyte0[] = h.g();
        if (abyte0 == null)
        {
            return null;
        } else
        {
            return (byte[])abyte0.clone();
        }
    }

    final byte[] a(byte abyte0[], int i1, int j1)
    {
        byte abyte1[];
        int k1;
        abyte1 = new byte[a(j1)];
        k1 = a(abyte0, i1, j1, abyte1, 0);
        if (k1 == abyte1.length)
        {
            return abyte1;
        }
        byte abyte2[];
        try
        {
            abyte2 = new byte[k1];
        }
        catch (ShortBufferException shortbufferexception)
        {
            return null;
        }
        try
        {
            System.arraycopy(abyte1, 0, abyte2, 0, k1);
        }
        catch (ShortBufferException shortbufferexception1)
        {
            return abyte2;
        }
        return abyte2;
    }

    final int b(byte abyte0[], int i1, int j1, byte abyte1[], int k1)
    {
        int l1 = j1 + d;
        int i2;
        int j2;
        int k2;
        byte abyte2[];
        int l2;
        int i3;
        if (c != b)
        {
            if (l1 < f)
            {
                i2 = f - l1;
            } else
            {
                i2 = b - (l1 - f) % b;
            }
        } else
        if (g != null)
        {
            i2 = g.a(l1);
        } else
        {
            i2 = 0;
        }
        if (i2 > 0 && i2 != b && g != null && j)
        {
            throw new IllegalBlockSizeException((new StringBuilder("Input length must be multiple of ")).append(b).append(" when decrypting with padded cipher").toString());
        }
        if (!j && g != null)
        {
            j2 = l1 + i2;
        } else
        {
            j2 = l1;
        }
        if (abyte1 == null)
        {
            throw new ShortBufferException("Output buffer is null");
        }
        k2 = abyte1.length - k1;
        if ((!j || g == null) && k2 < j2 || j && k2 < j2 - b)
        {
            throw new ShortBufferException((new StringBuilder("Output buffer too short: ")).append(k2).append(" bytes given, ").append(j2).append(" bytes needed").toString());
        }
        if (d != 0 || !j && g != null)
        {
            abyte2 = new byte[j2];
            if (d != 0)
            {
                System.arraycopy(a, 0, abyte2, 0, d);
            }
            if (j1 != 0)
            {
                System.arraycopy(abyte0, i1, abyte2, d, j1);
            }
            boolean flag = j;
            l2 = 0;
            if (!flag)
            {
                SunJCE_j sunjce_j = g;
                l2 = 0;
                if (sunjce_j != null)
                {
                    g.a(abyte2, l1, i2);
                }
            }
        } else
        {
            l2 = i1;
            abyte2 = abyte0;
        }
        if (j)
        {
            if (k2 < j2)
            {
                h.c();
            }
            byte abyte3[] = new byte[l1];
            i3 = a(abyte2, l2, abyte3, 0, l1);
            if (g != null)
            {
                i3 = g.b(abyte3, 0, i3);
                if (i3 < 0)
                {
                    throw new BadPaddingException("Given final block not properly padded");
                }
            }
            if (abyte1.length - k1 < i3)
            {
                h.d();
                throw new ShortBufferException((new StringBuilder("Output buffer too short: ")).append(abyte1.length - k1).append(" bytes given, ").append(i3).append(" bytes needed").toString());
            }
            for (int j3 = 0; j3 < i3; j3++)
            {
                abyte1[k1 + j3] = abyte3[j3];
            }

        } else
        {
            i3 = a(abyte2, l2, abyte1, k1, j2);
        }
        d = 0;
        f = b;
        if (i != 0)
        {
            h.b();
        }
        return i3;
    }

    final void b(String s)
    {
        if (s == null)
        {
            throw new NoSuchPaddingException("null padding");
        }
        if (s.equalsIgnoreCase("NoPadding"))
        {
            g = null;
        } else
        {
            if (!s.equalsIgnoreCase("ISO10126Padding"))
            {
                continue;
            }
            g = new SunJCE_q(b);
        }
        do
        {
            if (g != null && (i == 5 || i == 6))
            {
                g = null;
                StringBuilder stringbuilder = new StringBuilder();
                String s1;
                if (i == 5)
                {
                    s1 = "CTR";
                } else
                {
                    s1 = "CTS";
                }
                throw new NoSuchPaddingException(stringbuilder.append(s1).append(" mode must be used with NoPadding").toString());
            } else
            {
                return;
            }
        } while (s.equalsIgnoreCase("PKCS5Padding"));
        throw new NoSuchPaddingException((new StringBuilder("Padding: ")).append(s).append(" not implemented").toString());
    }

    final byte[] b(Key key)
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
            break MISSING_BLOCK_LABEL_27;
        }
        throw new InvalidKeyException("Cannot get an encoding of the key to be wrapped");
        abyte1 = b(abyte0, 0, abyte0.length);
        return abyte1;
    }

    final byte[] b(byte abyte0[], int i1, int j1)
    {
label0:
        {
            byte abyte1[];
            int k1;
            byte abyte2[];
            try
            {
                abyte1 = new byte[a(j1)];
                k1 = b(abyte0, i1, j1, abyte1, 0);
                if (k1 >= abyte1.length)
                {
                    break label0;
                }
                abyte2 = new byte[k1];
            }
            catch (ShortBufferException shortbufferexception)
            {
                return null;
            }
            if (k1 != 0)
            {
                try
                {
                    System.arraycopy(abyte1, 0, abyte2, 0, k1);
                }
                catch (ShortBufferException shortbufferexception1)
                {
                    return abyte2;
                }
                return abyte2;
            }
            abyte1 = abyte2;
        }
        return abyte1;
    }

    final AlgorithmParameters c(String s)
    {
        byte abyte0[];
        if (i != 0)
        {
            if ((abyte0 = a()) != null)
            {
                Object obj;
                AlgorithmParameters algorithmparameters;
                if (s.equals("RC2"))
                {
                    obj = new RC2ParameterSpec(((SunJCE_r)h.e()).b(), abyte0);
                } else
                {
                    obj = new IvParameterSpec(abyte0);
                }
                try
                {
                    algorithmparameters = AlgorithmParameters.getInstance(s, "SunJCE");
                }
                catch (NoSuchAlgorithmException nosuchalgorithmexception)
                {
                    throw new RuntimeException((new StringBuilder("Cannot find ")).append(s).append(" AlgorithmParameters implementation in SunJCE provider").toString());
                }
                catch (NoSuchProviderException nosuchproviderexception)
                {
                    throw new RuntimeException("Cannot find SunJCE provider");
                }
                try
                {
                    algorithmparameters.init(((AlgorithmParameterSpec) (obj)));
                }
                catch (InvalidParameterSpecException invalidparameterspecexception)
                {
                    throw new RuntimeException("IvParameterSpec not supported");
                }
                return algorithmparameters;
            }
        }
        return null;
    }
}
