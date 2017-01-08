// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.sun.crypto.provider;

import java.security.AlgorithmParameters;
import java.security.Key;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import javax.crypto.CipherSpi;

// Referenced classes of package com.sun.crypto.provider:
//            SunJCE, PKCS12PBECipherCore

public final class  extends CipherSpi
{

    private final PKCS12PBECipherCore a = new PKCS12PBECipherCore("RC2", 5);

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
        return a.a(key);
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
        a.a(i, key, securerandom);
    }

    protected final void engineInit(int i, Key key, AlgorithmParameterSpec algorithmparameterspec, SecureRandom securerandom)
    {
        a.a(i, key, algorithmparameterspec, securerandom);
    }

    protected final void engineSetMode(String s)
    {
        a.a(s);
    }

    protected final void engineSetPadding(String s)
    {
        a.b(s);
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
        return a.b(key);
    }

    public ()
    {
        SunJCE.a(getClass());
    }
}
