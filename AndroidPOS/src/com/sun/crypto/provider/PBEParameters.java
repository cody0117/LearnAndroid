// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.sun.crypto.provider;

import java.io.IOException;
import java.math.BigInteger;
import java.security.AlgorithmParametersSpi;
import java.security.spec.AlgorithmParameterSpec;
import java.security.spec.InvalidParameterSpecException;
import javax.crypto.spec.PBEParameterSpec;
import sun.misc.HexDumpEncoder;
import sun.security.util.Debug;
import sun.security.util.DerInputStream;
import sun.security.util.DerOutputStream;
import sun.security.util.DerValue;

public final class PBEParameters extends AlgorithmParametersSpi
{

    private byte a[];
    private int b;

    public PBEParameters()
    {
        a = null;
        b = 0;
    }

    protected final byte[] engineGetEncoded()
    {
        DerOutputStream deroutputstream = new DerOutputStream();
        DerOutputStream deroutputstream1 = new DerOutputStream();
        deroutputstream1.putOctetString(a);
        deroutputstream1.putInteger(b);
        deroutputstream.write((byte)48, deroutputstream1);
        return deroutputstream.toByteArray();
    }

    protected final byte[] engineGetEncoded(String s)
    {
        return engineGetEncoded();
    }

    protected final AlgorithmParameterSpec engineGetParameterSpec(Class class1)
    {
        if (javax/crypto/spec/PBEParameterSpec.isAssignableFrom(class1))
        {
            return new PBEParameterSpec(a, b);
        } else
        {
            throw new InvalidParameterSpecException("Inappropriate parameter specification");
        }
    }

    protected final void engineInit(AlgorithmParameterSpec algorithmparameterspec)
    {
        if (!(algorithmparameterspec instanceof PBEParameterSpec))
        {
            throw new InvalidParameterSpecException("Inappropriate parameter specification");
        } else
        {
            a = (byte[])((PBEParameterSpec)algorithmparameterspec).getSalt().clone();
            b = ((PBEParameterSpec)algorithmparameterspec).getIterationCount();
            return;
        }
    }

    protected final void engineInit(byte abyte0[])
    {
        DerValue dervalue;
        try
        {
            dervalue = new DerValue(abyte0);
            if (dervalue.tag != 48)
            {
                throw new IOException("PBE parameter parsing error: not a sequence");
            }
        }
        catch (NumberFormatException numberformatexception)
        {
            throw new IOException("iteration count too big");
        }
        dervalue.data.reset();
        a = dervalue.data.getOctetString();
        b = dervalue.data.getInteger();
        if (dervalue.data.available() != 0)
        {
            throw new IOException("PBE parameter parsing error: extra data");
        } else
        {
            return;
        }
    }

    protected final void engineInit(byte abyte0[], String s)
    {
        engineInit(abyte0);
    }

    protected final String engineToString()
    {
        String s = System.getProperty("line.separator");
        String s1 = (new StringBuilder()).append(s).append("    salt:").append(s).append("[").toString();
        HexDumpEncoder hexdumpencoder = new HexDumpEncoder();
        String s2 = (new StringBuilder()).append(s1).append(hexdumpencoder.encodeBuffer(a)).toString();
        String s3 = (new StringBuilder()).append(s2).append("]").toString();
        return (new StringBuilder()).append(s3).append(s).append("    iterationCount:").append(s).append(Debug.toHexString(BigInteger.valueOf(b))).append(s).toString();
    }
}
