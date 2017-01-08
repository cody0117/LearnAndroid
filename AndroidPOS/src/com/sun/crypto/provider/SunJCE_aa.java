// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.sun.crypto.provider;

import java.io.IOException;
import sun.security.util.DerInputStream;
import sun.security.util.DerOutputStream;
import sun.security.util.DerValue;
import sun.security.x509.AlgorithmId;

final class SunJCE_aa
{

    private AlgorithmId a;
    private byte b[];
    private byte c[];

    SunJCE_aa(AlgorithmId algorithmid, byte abyte0[])
    {
        a = algorithmid;
        b = (byte[])abyte0.clone();
        c = null;
    }

    SunJCE_aa(byte abyte0[])
    {
        DerValue dervalue = new DerValue(abyte0);
        DerValue adervalue[] = new DerValue[2];
        adervalue[0] = dervalue.data.getDerValue();
        adervalue[1] = dervalue.data.getDerValue();
        if (dervalue.data.available() != 0)
        {
            throw new IOException((new StringBuilder("overrun, bytes = ")).append(dervalue.data.available()).toString());
        }
        a = AlgorithmId.parse(adervalue[0]);
        if (adervalue[0].data.available() != 0)
        {
            throw new IOException("encryptionAlgorithm field overrun");
        }
        b = adervalue[1].getOctetString();
        if (adervalue[1].data.available() != 0)
        {
            throw new IOException("encryptedData field overrun");
        } else
        {
            c = (byte[])abyte0.clone();
            return;
        }
    }

    final AlgorithmId a()
    {
        return a;
    }

    final byte[] b()
    {
        return (byte[])b.clone();
    }

    final byte[] c()
    {
        if (c != null)
        {
            return (byte[])c.clone();
        } else
        {
            DerOutputStream deroutputstream = new DerOutputStream();
            DerOutputStream deroutputstream1 = new DerOutputStream();
            a.encode(deroutputstream1);
            deroutputstream1.putOctetString(b);
            deroutputstream.write((byte)48, deroutputstream1);
            c = deroutputstream.toByteArray();
            return (byte[])c.clone();
        }
    }
}
