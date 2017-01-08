// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.sun.crypto.provider;

import java.math.BigInteger;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.Key;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import javax.crypto.KeyAgreementSpi;
import javax.crypto.SecretKey;
import javax.crypto.ShortBufferException;
import javax.crypto.interfaces.DHPrivateKey;
import javax.crypto.interfaces.DHPublicKey;
import javax.crypto.spec.DHParameterSpec;
import javax.crypto.spec.SecretKeySpec;

// Referenced classes of package com.sun.crypto.provider:
//            SunJCE, DHPublicKey, DESKey, DESedeKey, 
//            SunJCE_d

public final class DHKeyAgreement extends KeyAgreementSpi
{

    private boolean a;
    private BigInteger b;
    private BigInteger c;
    private BigInteger d;
    private BigInteger e;

    public DHKeyAgreement()
    {
        a = false;
        b = null;
        c = null;
        d = BigInteger.ZERO;
        e = BigInteger.ZERO;
        if (!SunJCE.b(getClass()))
        {
            throw new SecurityException("The SunJCE provider may have been tampered.");
        } else
        {
            return;
        }
    }

    protected final Key engineDoPhase(Key key, boolean flag)
    {
        if (!(key instanceof DHPublicKey))
        {
            throw new InvalidKeyException("Diffie-Hellman public key expected");
        }
        DHPublicKey dhpublickey = (DHPublicKey)key;
        if (b == null || c == null)
        {
            throw new IllegalStateException("Not initialized");
        }
        BigInteger biginteger = dhpublickey.getParams().getP();
        BigInteger biginteger1 = dhpublickey.getParams().getG();
        if (biginteger != null && !b.equals(biginteger))
        {
            throw new InvalidKeyException("Incompatible parameters");
        }
        if (biginteger1 != null && !c.equals(biginteger1))
        {
            throw new InvalidKeyException("Incompatible parameters");
        }
        e = dhpublickey.getY();
        a = true;
        if (!flag)
        {
            return new com.sun.crypto.provider.DHPublicKey(new BigInteger(1, engineGenerateSecret()), b, c);
        } else
        {
            return null;
        }
    }

    protected final int engineGenerateSecret(byte abyte0[], int i)
    {
        if (!a)
        {
            throw new IllegalStateException("Key agreement has not been completed yet");
        }
        if (abyte0 == null)
        {
            throw new ShortBufferException("No buffer provided for shared secret");
        }
        BigInteger biginteger = b;
        byte abyte1[] = e.modPow(d, biginteger).toByteArray();
        if (abyte1.length << 3 != biginteger.bitLength())
        {
            if (abyte0.length - i < -1 + abyte1.length)
            {
                throw new ShortBufferException("Buffer too short for shared secret");
            } else
            {
                System.arraycopy(abyte1, 1, abyte0, i, -1 + abyte1.length);
                a = false;
                return -1 + abyte1.length;
            }
        }
        if (abyte0.length - i < abyte1.length)
        {
            throw new ShortBufferException("Buffer too short to hold shared secret");
        } else
        {
            System.arraycopy(abyte1, 0, abyte0, i, abyte1.length);
            a = false;
            return abyte1.length;
        }
    }

    protected final SecretKey engineGenerateSecret(String s)
    {
        int i = 56;
        if (s == null)
        {
            throw new NoSuchAlgorithmException("null algorithm");
        }
        byte abyte0[] = engineGenerateSecret();
        Object obj;
        if (s.equalsIgnoreCase("DES"))
        {
            obj = new DESKey(abyte0);
        } else
        {
            if (s.equalsIgnoreCase("DESede") || s.equalsIgnoreCase("TripleDES"))
            {
                return new DESedeKey(abyte0);
            }
            if (s.equalsIgnoreCase("Blowfish"))
            {
                int j1 = abyte0.length;
                int j;
                int k;
                int l;
                int i1;
                if (j1 < i)
                {
                    i = j1;
                }
                return new SecretKeySpec(abyte0, 0, i, "Blowfish");
            }
            if (s.equalsIgnoreCase("AES"))
            {
                j = abyte0.length;
                k = -1 + SunJCE_d.b.length;
                obj = null;
                l = j;
                for (i1 = k; obj == null && i1 >= 0; i1--)
                {
                    if (l >= SunJCE_d.b[i1])
                    {
                        l = SunJCE_d.b[i1];
                        obj = new SecretKeySpec(abyte0, 0, l, "AES");
                    }
                }

                if (obj == null)
                {
                    throw new InvalidKeyException("Key material is too short");
                }
            } else
            if (s.equals("TlsPremasterSecret"))
            {
                return new SecretKeySpec(abyte0, "TlsPremasterSecret");
            } else
            {
                throw new NoSuchAlgorithmException((new StringBuilder("Unsupported secret key algorithm: ")).append(s).toString());
            }
        }
        return ((SecretKey) (obj));
    }

    protected final byte[] engineGenerateSecret()
    {
        if (!a)
        {
            throw new IllegalStateException("Key agreement has not been completed yet");
        }
        a = false;
        BigInteger biginteger = b;
        BigInteger biginteger1 = e.modPow(d, biginteger);
        byte abyte0[] = biginteger1.toByteArray();
        if (biginteger1.bitLength() % 8 == 0)
        {
            byte abyte1[] = new byte[-1 + abyte0.length];
            System.arraycopy(abyte0, 1, abyte1, 0, abyte1.length);
            return abyte1;
        } else
        {
            return abyte0;
        }
    }

    protected final void engineInit(Key key, SecureRandom securerandom)
    {
        try
        {
            engineInit(key, null, securerandom);
            return;
        }
        catch (InvalidAlgorithmParameterException invalidalgorithmparameterexception)
        {
            return;
        }
    }

    protected final void engineInit(Key key, AlgorithmParameterSpec algorithmparameterspec, SecureRandom securerandom)
    {
        a = false;
        b = null;
        c = null;
        if (algorithmparameterspec != null && !(algorithmparameterspec instanceof DHParameterSpec))
        {
            throw new InvalidAlgorithmParameterException("Diffie-Hellman parameters expected");
        }
        if (!(key instanceof DHPrivateKey))
        {
            throw new InvalidKeyException("Diffie-Hellman private key expected");
        }
        DHPrivateKey dhprivatekey = (DHPrivateKey)key;
        if (algorithmparameterspec != null)
        {
            b = ((DHParameterSpec)algorithmparameterspec).getP();
            c = ((DHParameterSpec)algorithmparameterspec).getG();
        }
        BigInteger biginteger = dhprivatekey.getParams().getP();
        BigInteger biginteger1 = dhprivatekey.getParams().getG();
        if (b != null && biginteger != null && !b.equals(biginteger))
        {
            throw new InvalidKeyException("Incompatible parameters");
        }
        if (c != null && biginteger1 != null && !c.equals(biginteger1))
        {
            throw new InvalidKeyException("Incompatible parameters");
        }
        if (b == null && biginteger == null || c == null && biginteger1 == null)
        {
            throw new InvalidKeyException("Missing parameters");
        } else
        {
            b = biginteger;
            c = biginteger1;
            d = dhprivatekey.getX();
            return;
        }
    }
}
