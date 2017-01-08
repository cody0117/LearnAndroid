// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.sun.crypto.provider;

import java.math.BigInteger;
import java.security.AlgorithmParameters;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.Key;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.SecureRandom;
import java.security.interfaces.RSAKey;
import java.security.interfaces.RSAPrivateKey;
import java.security.interfaces.RSAPublicKey;
import java.security.spec.AlgorithmParameterSpec;
import java.security.spec.InvalidParameterSpecException;
import java.security.spec.MGF1ParameterSpec;
import java.util.Locale;
import javax.crypto.BadPaddingException;
import javax.crypto.CipherSpi;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.ShortBufferException;
import javax.crypto.spec.OAEPParameterSpec;
import sun.security.jca.ProviderList;
import sun.security.jca.Providers;
import sun.security.rsa.RSACore;
import sun.security.rsa.RSAKeyFactory;
import sun.security.rsa.RSAPadding;

// Referenced classes of package com.sun.crypto.provider:
//            SunJCE, SunJCE_s

public final class RSACipher extends CipherSpi
{

    private static final byte a[] = new byte[0];
    private static final int b = 1;
    private static final int c = 2;
    private static final int d = 3;
    private static final int e = 4;
    private static final String f = "NoPadding";
    private static final String g = "PKCS1Padding";
    private static final String h = "OAEP";
    private int i;
    private String j;
    private RSAPadding k;
    private OAEPParameterSpec l;
    private byte m[];
    private int n;
    private int o;
    private RSAPublicKey p;
    private RSAPrivateKey q;
    private String r;

    public RSACipher()
    {
        l = null;
        r = "SHA-1";
        SunJCE.a(getClass());
        j = "PKCS1Padding";
    }

    private void a(int i1, Key key, SecureRandom securerandom, AlgorithmParameterSpec algorithmparameterspec)
    {
        byte byte0 = 2;
        i1;
        JVM INSTR tableswitch 1 4: default 36
    //                   1 60
    //                   2 150
    //                   3 60
    //                   4 150;
           goto _L1 _L2 _L3 _L2 _L3
_L1:
        throw new InvalidKeyException((new StringBuilder("Unknown mode: ")).append(i1).toString());
_L2:
        boolean flag = true;
_L6:
        int k1;
        RSAKey rsakey = RSAKeyFactory.toRSAKey(key);
        if (key instanceof RSAPublicKey)
        {
            int l1;
            if (flag)
            {
                l1 = 1;
            } else
            {
                l1 = 4;
            }
            i = l1;
            p = (RSAPublicKey)key;
            q = null;
        } else
        {
            int j1;
            if (flag)
            {
                j1 = 3;
            } else
            {
                j1 = byte0;
            }
            i = j1;
            q = (RSAPrivateKey)key;
            p = null;
        }
        k1 = RSACore.getByteLength(rsakey.getModulus());
        o = k1;
        n = 0;
        if (j != "NoPadding") goto _L5; else goto _L4
_L3:
        flag = false;
          goto _L6
_L4:
        if (algorithmparameterspec != null)
        {
            throw new InvalidAlgorithmParameterException("Parameters not supported");
        }
        k = RSAPadding.getInstance(3, k1, securerandom);
_L8:
        m = new byte[k1];
        return;
_L5:
        if (j == "PKCS1Padding")
        {
            if (algorithmparameterspec != null)
            {
                throw new InvalidAlgorithmParameterException("Parameters not supported");
            }
            if (i > byte0)
            {
                byte0 = 1;
            }
            k = RSAPadding.getInstance(byte0, k1, securerandom);
            if (flag)
            {
                m = new byte[k.getMaxDataSize()];
                return;
            } else
            {
                m = new byte[k1];
                return;
            }
        }
        if (i == 3 || i == 4)
        {
            throw new InvalidKeyException("OAEP cannot be used to sign or verify signatures");
        }
        OAEPParameterSpec oaepparameterspec;
        if (algorithmparameterspec != null)
        {
            if (!(algorithmparameterspec instanceof OAEPParameterSpec))
            {
                throw new InvalidAlgorithmParameterException("Wrong Parameters for OAEP Padding");
            }
            oaepparameterspec = (OAEPParameterSpec)algorithmparameterspec;
        } else
        {
            oaepparameterspec = new OAEPParameterSpec(r, "MGF1", MGF1ParameterSpec.SHA1, javax.crypto.spec.PSource.PSpecified.DEFAULT);
        }
        k = RSAPadding.getInstance(4, k1, securerandom, oaepparameterspec);
        if (flag)
        {
            m = new byte[k.getMaxDataSize()];
            return;
        }
        if (true) goto _L8; else goto _L7
_L7:
    }

    private void a(byte abyte0[], int i1, int j1)
    {
        if (j1 == 0 || abyte0 == null)
        {
            return;
        }
        if (j1 + n > m.length)
        {
            n = 1 + m.length;
            return;
        } else
        {
            System.arraycopy(abyte0, i1, m, n, j1);
            n = j1 + n;
            return;
        }
    }

    private byte[] a()
    {
        if (n > m.length)
        {
            throw new IllegalBlockSizeException((new StringBuilder("Data must not be longer than ")).append(m.length).append(" bytes").toString());
        }
        i;
        JVM INSTR tableswitch 1 4: default 80
    //                   1 171
    //                   2 204
    //                   3 98
    //                   4 131;
           goto _L1 _L2 _L3 _L4 _L5
_L1:
        throw new AssertionError("Internal error");
        Exception exception;
        exception;
        n = 0;
        throw exception;
_L4:
        byte abyte5[] = RSACore.rsa(k.pad(m, 0, n), q);
        n = 0;
        return abyte5;
_L5:
        byte abyte4[];
        byte abyte3[] = RSACore.rsa(RSACore.convert(m, 0, n), p);
        abyte4 = k.unpad(abyte3);
        n = 0;
        return abyte4;
_L2:
        byte abyte2[] = RSACore.rsa(k.pad(m, 0, n), p);
        n = 0;
        return abyte2;
_L3:
        byte abyte1[];
        byte abyte0[] = RSACore.rsa(RSACore.convert(m, 0, n), q);
        abyte1 = k.unpad(abyte0);
        n = 0;
        return abyte1;
    }

    protected final int engineDoFinal(byte abyte0[], int i1, int j1, byte abyte1[], int k1)
    {
        if (o > abyte1.length - k1)
        {
            throw new ShortBufferException((new StringBuilder("Need ")).append(o).append(" bytes for output").toString());
        } else
        {
            a(abyte0, i1, j1);
            byte abyte2[] = a();
            int l1 = abyte2.length;
            System.arraycopy(abyte2, 0, abyte1, k1, l1);
            return l1;
        }
    }

    protected final byte[] engineDoFinal(byte abyte0[], int i1, int j1)
    {
        a(abyte0, i1, j1);
        return a();
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
        return RSAKeyFactory.toRSAKey(key).getModulus().bitLength();
    }

    protected final int engineGetOutputSize(int i1)
    {
        return o;
    }

    protected final AlgorithmParameters engineGetParameters()
    {
        if (l != null)
        {
            AlgorithmParameters algorithmparameters;
            try
            {
                algorithmparameters = AlgorithmParameters.getInstance("OAEP", "SunJCE");
                algorithmparameters.init(l);
            }
            catch (NoSuchAlgorithmException nosuchalgorithmexception)
            {
                throw new RuntimeException("Cannot find OAEP  AlgorithmParameters implementation in SunJCE provider");
            }
            catch (NoSuchProviderException nosuchproviderexception)
            {
                throw new RuntimeException("Cannot find SunJCE provider");
            }
            catch (InvalidParameterSpecException invalidparameterspecexception)
            {
                throw new RuntimeException("OAEPParameterSpec not supported");
            }
            return algorithmparameters;
        } else
        {
            return null;
        }
    }

    protected final void engineInit(int i1, Key key, AlgorithmParameters algorithmparameters, SecureRandom securerandom)
    {
        if (algorithmparameters == null)
        {
            a(i1, key, securerandom, null);
            return;
        }
        try
        {
            a(i1, key, securerandom, (OAEPParameterSpec)algorithmparameters.getParameterSpec(javax/crypto/spec/OAEPParameterSpec));
            return;
        }
        catch (InvalidParameterSpecException invalidparameterspecexception)
        {
            InvalidAlgorithmParameterException invalidalgorithmparameterexception = new InvalidAlgorithmParameterException("Wrong parameter");
            invalidalgorithmparameterexception.initCause(invalidparameterspecexception);
            throw invalidalgorithmparameterexception;
        }
    }

    protected final void engineInit(int i1, Key key, SecureRandom securerandom)
    {
        try
        {
            a(i1, key, securerandom, null);
            return;
        }
        catch (InvalidAlgorithmParameterException invalidalgorithmparameterexception)
        {
            InvalidKeyException invalidkeyexception = new InvalidKeyException("Wrong parameters");
            invalidkeyexception.initCause(invalidalgorithmparameterexception);
            throw invalidkeyexception;
        }
    }

    protected final void engineInit(int i1, Key key, AlgorithmParameterSpec algorithmparameterspec, SecureRandom securerandom)
    {
        a(i1, key, securerandom, algorithmparameterspec);
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
        if (s.equalsIgnoreCase("NoPadding"))
        {
            j = "NoPadding";
        } else
        {
            if (s.equalsIgnoreCase("PKCS1Padding"))
            {
                j = "PKCS1Padding";
                return;
            }
            String s1 = s.toLowerCase(Locale.ENGLISH);
            if (s1.equals("oaeppadding"))
            {
                j = "OAEP";
                return;
            }
            if (s1.startsWith("oaepwith") && s1.endsWith("andmgf1padding"))
            {
                j = "OAEP";
                r = s.substring(8, -14 + s.length());
                if (Providers.getProviderList().getService("MessageDigest", r) == null)
                {
                    throw new NoSuchPaddingException((new StringBuilder("MessageDigest not available for ")).append(s).toString());
                }
            } else
            {
                throw new NoSuchPaddingException((new StringBuilder("Padding ")).append(s).append(" not supported").toString());
            }
        }
    }

    protected final Key engineUnwrap(byte abyte0[], String s, int i1)
    {
        if (abyte0.length > m.length)
        {
            throw new InvalidKeyException("Key is too long for unwrapping");
        }
        a(abyte0, 0, abyte0.length);
        Key key;
        try
        {
            key = SunJCE_s.a(a(), s, i1);
        }
        catch (BadPaddingException badpaddingexception)
        {
            throw new InvalidKeyException("Unwrapping failed", badpaddingexception);
        }
        catch (IllegalBlockSizeException illegalblocksizeexception)
        {
            throw new InvalidKeyException("Unwrapping failed", illegalblocksizeexception);
        }
        return key;
    }

    protected final int engineUpdate(byte abyte0[], int i1, int j1, byte abyte1[], int k1)
    {
        a(abyte0, i1, j1);
        return 0;
    }

    protected final byte[] engineUpdate(byte abyte0[], int i1, int j1)
    {
        a(abyte0, i1, j1);
        return a;
    }

    protected final byte[] engineWrap(Key key)
    {
        byte abyte0[] = key.getEncoded();
        if (abyte0 == null || abyte0.length == 0)
        {
            throw new InvalidKeyException("Could not obtain encoded key");
        }
        if (abyte0.length > m.length)
        {
            throw new InvalidKeyException("Key is too long for wrapping");
        }
        a(abyte0, 0, abyte0.length);
        byte abyte1[];
        try
        {
            abyte1 = a();
        }
        catch (BadPaddingException badpaddingexception)
        {
            throw new InvalidKeyException("Wrapping failed", badpaddingexception);
        }
        return abyte1;
    }

}
