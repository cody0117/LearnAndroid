// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.sun.crypto.provider;

import java.nio.ByteBuffer;
import java.security.Key;
import java.security.MessageDigest;
import java.security.spec.AlgorithmParameterSpec;
import javax.crypto.MacSpi;

// Referenced classes of package com.sun.crypto.provider:
//            SunJCE, HmacCore

public final class HmacMD5 extends MacSpi
    implements Cloneable
{

    private static final int b = 64;
    private HmacCore a;

    public HmacMD5()
    {
        if (!SunJCE.b(getClass()))
        {
            throw new SecurityException("The SunJCE provider may have been tampered.");
        } else
        {
            a = new HmacCore(MessageDigest.getInstance("MD5"), 64);
            return;
        }
    }

    public final Object clone()
    {
        HmacMD5 hmacmd5;
        try
        {
            hmacmd5 = (HmacMD5)super.clone();
        }
        catch (CloneNotSupportedException clonenotsupportedexception)
        {
            return null;
        }
        try
        {
            hmacmd5.a = (HmacCore)a.clone();
        }
        catch (CloneNotSupportedException clonenotsupportedexception1)
        {
            return hmacmd5;
        }
        return hmacmd5;
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
}
