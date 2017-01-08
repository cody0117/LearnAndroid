// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.sun.crypto.provider;

import java.nio.ByteBuffer;
import java.security.DigestException;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.Key;
import java.security.MessageDigest;
import java.security.ProviderException;
import java.security.spec.AlgorithmParameterSpec;
import java.util.Arrays;
import javax.crypto.SecretKey;

final class HmacCore
    implements Cloneable
{

    private final MessageDigest a;
    private final byte b[];
    private final byte c[];
    private boolean d;
    private final int e;

    private HmacCore(HmacCore hmaccore)
    {
        a = (MessageDigest)hmaccore.a.clone();
        e = hmaccore.e;
        b = (byte[])hmaccore.b.clone();
        c = (byte[])hmaccore.c.clone();
        d = hmaccore.d;
    }

    HmacCore(String s, int i)
    {
        this(MessageDigest.getInstance(s), i);
    }

    HmacCore(MessageDigest messagedigest, int i)
    {
        a = messagedigest;
        e = i;
        b = new byte[e];
        c = new byte[e];
        d = true;
    }

    final int a()
    {
        return a.getDigestLength();
    }

    final void a(byte byte0)
    {
        if (d)
        {
            a.update(b);
            d = false;
        }
        a.update(byte0);
    }

    final void a(ByteBuffer bytebuffer)
    {
        if (d)
        {
            a.update(b);
            d = false;
        }
        a.update(bytebuffer);
    }

    final void a(Key key, AlgorithmParameterSpec algorithmparameterspec)
    {
        if (algorithmparameterspec != null)
        {
            throw new InvalidAlgorithmParameterException("HMAC does not use parameters");
        }
        if (!(key instanceof SecretKey))
        {
            throw new InvalidKeyException("Secret key expected");
        }
        byte abyte0[] = key.getEncoded();
        if (abyte0 == null || abyte0.length == 0)
        {
            throw new InvalidKeyException("Missing key data");
        }
        byte abyte1[];
        int i;
        if (abyte0.length > e)
        {
            abyte1 = a.digest(abyte0);
            Arrays.fill(abyte0, (byte)0);
        } else
        {
            abyte1 = abyte0;
        }
        i = 0;
        while (i < e) 
        {
            byte byte0;
            if (i < abyte1.length)
            {
                byte0 = abyte1[i];
            } else
            {
                byte0 = 0;
            }
            b[i] = (byte)(byte0 ^ 0x36);
            c[i] = (byte)(byte0 ^ 0x5c);
            i++;
        }
        Arrays.fill(abyte1, (byte)0);
        c();
    }

    final void a(byte abyte0[], int i, int j)
    {
        if (d)
        {
            a.update(b);
            d = false;
        }
        a.update(abyte0, i, j);
    }

    final byte[] b()
    {
        byte abyte0[];
        if (d)
        {
            a.update(b);
        } else
        {
            d = true;
        }
        try
        {
            abyte0 = a.digest();
            a.update(c);
            a.update(abyte0);
            a.digest(abyte0, 0, abyte0.length);
        }
        catch (DigestException digestexception)
        {
            throw new ProviderException(digestexception);
        }
        return abyte0;
    }

    final void c()
    {
        if (!d)
        {
            a.reset();
            d = true;
        }
    }

    public final Object clone()
    {
        return new HmacCore(this);
    }
}
