// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.sun.crypto.provider;

import java.io.IOException;
import java.security.spec.AlgorithmParameterSpec;
import java.security.spec.InvalidParameterSpecException;
import javax.crypto.spec.IvParameterSpec;
import sun.misc.HexDumpEncoder;
import sun.security.util.DerInputStream;
import sun.security.util.DerOutputStream;

final class SunJCE_t
{

    private int a;
    private byte b[];

    SunJCE_t(int i)
    {
        a = 0;
        b = null;
        a = i;
    }

    final AlgorithmParameterSpec a(Class class1)
    {
        if (javax/crypto/spec/IvParameterSpec.isAssignableFrom(class1))
        {
            return new IvParameterSpec(b);
        } else
        {
            throw new InvalidParameterSpecException("Inappropriate parameter specification");
        }
    }

    final void a(AlgorithmParameterSpec algorithmparameterspec)
    {
        if (!(algorithmparameterspec instanceof IvParameterSpec))
        {
            throw new InvalidParameterSpecException("Inappropriate parameter specification");
        }
        byte abyte0[] = ((IvParameterSpec)algorithmparameterspec).getIV();
        if (abyte0.length != a)
        {
            throw new InvalidParameterSpecException((new StringBuilder("IV not ")).append(a).append(" bytes long").toString());
        } else
        {
            b = (byte[])abyte0.clone();
            return;
        }
    }

    final void a(byte abyte0[])
    {
        DerInputStream derinputstream = new DerInputStream(abyte0);
        byte abyte1[] = derinputstream.getOctetString();
        if (derinputstream.available() != 0)
        {
            throw new IOException("IV parsing error: extra data");
        }
        if (abyte1.length != a)
        {
            throw new IOException((new StringBuilder("IV not ")).append(a).append(" bytes long").toString());
        } else
        {
            b = abyte1;
            return;
        }
    }

    final void a(byte abyte0[], String s)
    {
        if (s != null && !s.equalsIgnoreCase("ASN.1"))
        {
            throw new IllegalArgumentException("Only support ASN.1 format");
        } else
        {
            a(abyte0);
            return;
        }
    }

    final byte[] a()
    {
        DerOutputStream deroutputstream = new DerOutputStream();
        deroutputstream.putOctetString(b);
        return deroutputstream.toByteArray();
    }

    final byte[] a(String s)
    {
        return a();
    }

    public final String toString()
    {
        String s = System.getProperty("line.separator");
        String s1 = (new StringBuilder()).append(s).append("    iv:").append(s).append("[").toString();
        HexDumpEncoder hexdumpencoder = new HexDumpEncoder();
        String s2 = (new StringBuilder()).append(s1).append(hexdumpencoder.encodeBuffer(b)).toString();
        return (new StringBuilder()).append(s2).append("]").append(s).toString();
    }
}
