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

// Referenced classes of package com.sun.crypto.provider:
//            SunJCE, SunJCE_ab

public final class PBEWithMD5AndDESCipher extends CipherSpi
{

    private SunJCE_ab a;

    public PBEWithMD5AndDESCipher()
    {
        if (!SunJCE.b(getClass()))
        {
            throw new SecurityException("The SunJCE provider may have been tampered.");
        } else
        {
            a = new SunJCE_ab("DES");
            return;
        }
    }

    protected final int engineDoFinal(byte abyte0[], int i, int j, byte abyte1[], int k)
    {
        return a.b(abyte0, i, j, abyte1, k);
    }

    protected final byte[] engineDoFinal(byte abyte0[], int i, int j)
    {
        return a.b(abyte0, i, j);
    }

    protected final int engineGetBlockSize()
    {
        return a.a();
    }

    protected final byte[] engineGetIV()
    {
        return a.b();
    }

    protected final int engineGetKeySize(Key key)
    {
        return 56;
    }

    protected final int engineGetOutputSize(int i)
    {
        return a.a(i);
    }

    protected final AlgorithmParameters engineGetParameters()
    {
        return a.c();
    }

    protected final void engineInit(int i, Key key, AlgorithmParameters algorithmparameters, SecureRandom securerandom)
    {
        a.a(i, key, algorithmparameters, securerandom);
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
            InvalidKeyException invalidkeyexception = new InvalidKeyException("requires PBE parameters");
            invalidkeyexception.initCause(invalidalgorithmparameterexception);
            throw invalidkeyexception;
        }
    }

    protected final void engineInit(int i, Key key, AlgorithmParameterSpec algorithmparameterspec, SecureRandom securerandom)
    {
        a.a(i, key, algorithmparameterspec, securerandom);
    }

    protected final void engineSetMode(String s)
    {
        if (s != null && !s.equalsIgnoreCase("CBC"))
        {
            throw new NoSuchAlgorithmException((new StringBuilder("Invalid cipher mode: ")).append(s).toString());
        } else
        {
            return;
        }
    }

    protected final void engineSetPadding(String s)
    {
        if (s != null && !s.equalsIgnoreCase("PKCS5Padding"))
        {
            throw new NoSuchPaddingException((new StringBuilder("Invalid padding scheme: ")).append(s).toString());
        } else
        {
            return;
        }
    }

    protected final Key engineUnwrap(byte abyte0[], String s, int i)
    {
        return a.a(abyte0, s, i);
    }

    protected final int engineUpdate(byte abyte0[], int i, int j, byte abyte1[], int k)
    {
        return a.a(abyte0, i, j, abyte1, k);
    }

    protected final byte[] engineUpdate(byte abyte0[], int i, int j)
    {
        return a.a(abyte0, i, j);
    }

    protected final byte[] engineWrap(Key key)
    {
        return a.a(key);
    }
}
