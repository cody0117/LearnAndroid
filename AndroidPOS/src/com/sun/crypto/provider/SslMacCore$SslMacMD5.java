// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.sun.crypto.provider;

import java.nio.ByteBuffer;
import java.security.Key;
import java.security.spec.AlgorithmParameterSpec;
import javax.crypto.MacSpi;

// Referenced classes of package com.sun.crypto.provider:
//            TlsPrfGenerator, SunJCE, SslMacCore

public final class md5Pad2 extends MacSpi
{

    static final byte md5Pad1[] = TlsPrfGenerator.genPad((byte)54, 48);
    static final byte md5Pad2[] = TlsPrfGenerator.genPad((byte)92, 48);
    private final SslMacCore core;

    protected final byte[] engineDoFinal()
    {
        return core.doFinal();
    }

    protected final int engineGetMacLength()
    {
        return core.getDigestLength();
    }

    protected final void engineInit(Key key, AlgorithmParameterSpec algorithmparameterspec)
    {
        core.init(key, algorithmparameterspec);
    }

    protected final void engineReset()
    {
        core.reset();
    }

    protected final void engineUpdate(byte byte0)
    {
        core.update(byte0);
    }

    protected final void engineUpdate(ByteBuffer bytebuffer)
    {
        core.update(bytebuffer);
    }

    protected final void engineUpdate(byte abyte0[], int i, int j)
    {
        core.update(abyte0, i, j);
    }

    static 
    {
        SunJCE.a(com/sun/crypto/provider/SslMacCore$SslMacMD5);
    }

    public ()
    {
        core = new SslMacCore("MD5", md5Pad1, md5Pad2);
    }
}
