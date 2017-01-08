// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.sun.crypto.provider;

import java.security.AlgorithmParametersSpi;
import java.security.spec.AlgorithmParameterSpec;

// Referenced classes of package com.sun.crypto.provider:
//            SunJCE_t

public final class BlowfishParameters extends AlgorithmParametersSpi
{

    private SunJCE_t a;

    public BlowfishParameters()
    {
        a = new SunJCE_t(8);
    }

    protected final byte[] engineGetEncoded()
    {
        return a.a();
    }

    protected final byte[] engineGetEncoded(String s)
    {
        return a.a();
    }

    protected final AlgorithmParameterSpec engineGetParameterSpec(Class class1)
    {
        return a.a(class1);
    }

    protected final void engineInit(AlgorithmParameterSpec algorithmparameterspec)
    {
        a.a(algorithmparameterspec);
    }

    protected final void engineInit(byte abyte0[])
    {
        a.a(abyte0);
    }

    protected final void engineInit(byte abyte0[], String s)
    {
        a.a(abyte0, s);
    }

    protected final String engineToString()
    {
        return a.toString();
    }
}
