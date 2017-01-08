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
import javax.crypto.SecretKey;

final class SslMacCore
{

    private boolean first;
    private final MessageDigest md;
    private final byte pad1[];
    private final byte pad2[];
    private byte secret[];

    SslMacCore(String s, byte abyte0[], byte abyte1[])
    {
        md = MessageDigest.getInstance(s);
        pad1 = abyte0;
        pad2 = abyte1;
        first = true;
    }

    final byte[] doFinal()
    {
        byte abyte0[];
        if (first)
        {
            md.update(secret);
            md.update(pad1);
        } else
        {
            first = true;
        }
        try
        {
            abyte0 = md.digest();
            md.update(secret);
            md.update(pad2);
            md.update(abyte0);
            md.digest(abyte0, 0, abyte0.length);
        }
        catch (DigestException digestexception)
        {
            throw new ProviderException(digestexception);
        }
        return abyte0;
    }

    final int getDigestLength()
    {
        return md.getDigestLength();
    }

    final void init(Key key, AlgorithmParameterSpec algorithmparameterspec)
    {
        if (algorithmparameterspec != null)
        {
            throw new InvalidAlgorithmParameterException("SslMac does not use parameters");
        }
        if (!(key instanceof SecretKey))
        {
            throw new InvalidKeyException("Secret key expected");
        }
        secret = key.getEncoded();
        if (secret == null || secret.length == 0)
        {
            throw new InvalidKeyException("Missing key data");
        } else
        {
            reset();
            return;
        }
    }

    final void reset()
    {
        if (!first)
        {
            md.reset();
            first = true;
        }
    }

    final void update(byte byte0)
    {
        if (first)
        {
            md.update(secret);
            md.update(pad1);
            first = false;
        }
        md.update(byte0);
    }

    final void update(ByteBuffer bytebuffer)
    {
        if (first)
        {
            md.update(secret);
            md.update(pad1);
            first = false;
        }
        md.update(bytebuffer);
    }

    final void update(byte abyte0[], int i, int j)
    {
        if (first)
        {
            md.update(secret);
            md.update(pad1);
            first = false;
        }
        md.update(abyte0, i, j);
    }
}
