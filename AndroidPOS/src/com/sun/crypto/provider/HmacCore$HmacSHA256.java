// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.sun.crypto.provider;

import java.nio.ByteBuffer;
import java.security.Key;
import java.security.spec.AlgorithmParameterSpec;
import javax.crypto.MacSpi;

// Referenced classes of package com.sun.crypto.provider:
//            SunJCE, HmacCore

public final class a extends MacSpi
    implements Cloneable
{

    private final HmacCore a;

    public final Object clone()
    {
        return new <init>(this);
    }

    protected final byte[] engineDoFinal()
    {
        return a.b();
    }

    protected final int engineGetMacLength()
    {
        return a.a();
    }

    protected final void engineInit(Key key, AlgorithmParameterSpec algorithmparameterspec)
    {
        a.a(key, algorithmparameterspec);
    }

    protected final void engineReset()
    {
        a.c();
    }

    protected final void engineUpdate(byte byte0)
    {
        a.a(byte0);
    }

    protected final void engineUpdate(ByteBuffer bytebuffer)
    {
        a.a(bytebuffer);
    }

    protected final void engineUpdate(byte abyte0[], int i, int j)
    {
        a.a(abyte0, i, j);
    }

    public ()
    {
        SunJCE.a(getClass());
        a = new HmacCore("SHA-256", 64);
    }

    private a(a a1)
    {
        a = (HmacCore)a1.a.clone();
    }
}
