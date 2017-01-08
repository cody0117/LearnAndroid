// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.sun.crypto.provider;

import java.io.IOException;
import java.math.BigInteger;
import sun.security.util.DerInputStream;
import sun.security.util.DerValue;
import sun.security.x509.AlgorithmId;

final class SunJCE_ac
{

    private static final BigInteger a;
    private AlgorithmId b;
    private byte c[];

    SunJCE_ac(byte abyte0[])
    {
        DerValue dervalue = new DerValue(abyte0);
        if (dervalue.tag != 48)
        {
            throw new IOException("private key parse error: not a sequence");
        }
        BigInteger biginteger = dervalue.data.getBigInteger();
        if (!biginteger.equals(a))
        {
            throw new IOException((new StringBuilder("version mismatch: (supported: ")).append(a).append(", parsed: ").append(biginteger).toString());
        } else
        {
            b = AlgorithmId.parse(dervalue.data.getDerValue());
            c = dervalue.data.getOctetString();
            return;
        }
    }

    final AlgorithmId a()
    {
        return b;
    }

    static 
    {
        a = BigInteger.ZERO;
    }
}
