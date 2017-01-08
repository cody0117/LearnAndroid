// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.sun.crypto.provider;

import java.io.IOException;
import java.math.BigInteger;
import java.security.AlgorithmParametersSpi;
import java.security.spec.AlgorithmParameterSpec;
import java.security.spec.InvalidParameterSpecException;
import javax.crypto.spec.DHParameterSpec;
import sun.security.util.Debug;
import sun.security.util.DerInputStream;
import sun.security.util.DerOutputStream;
import sun.security.util.DerValue;

public final class DHParameters extends AlgorithmParametersSpi
{

    private BigInteger a;
    private BigInteger b;
    private int c;

    public DHParameters()
    {
        a = BigInteger.ZERO;
        b = BigInteger.ZERO;
        c = 0;
    }

    protected final byte[] engineGetEncoded()
    {
        DerOutputStream deroutputstream = new DerOutputStream();
        DerOutputStream deroutputstream1 = new DerOutputStream();
        deroutputstream1.putInteger(a);
        deroutputstream1.putInteger(b);
        if (c > 0)
        {
            deroutputstream1.putInteger(c);
        }
        deroutputstream.write((byte)48, deroutputstream1);
        return deroutputstream.toByteArray();
    }

    protected final byte[] engineGetEncoded(String s)
    {
        return engineGetEncoded();
    }

    protected final AlgorithmParameterSpec engineGetParameterSpec(Class class1)
    {
        if (javax/crypto/spec/DHParameterSpec.isAssignableFrom(class1))
        {
            return new DHParameterSpec(a, b, c);
        } else
        {
            throw new InvalidParameterSpecException("Inappropriate parameter Specification");
        }
    }

    protected final void engineInit(AlgorithmParameterSpec algorithmparameterspec)
    {
        if (!(algorithmparameterspec instanceof DHParameterSpec))
        {
            throw new InvalidParameterSpecException("Inappropriate parameter specification");
        } else
        {
            a = ((DHParameterSpec)algorithmparameterspec).getP();
            b = ((DHParameterSpec)algorithmparameterspec).getG();
            c = ((DHParameterSpec)algorithmparameterspec).getL();
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
                throw new IOException("DH params parsing error");
            }
        }
        catch (NumberFormatException numberformatexception)
        {
            throw new IOException("Private-value length too big");
        }
        dervalue.data.reset();
        a = dervalue.data.getBigInteger();
        b = dervalue.data.getBigInteger();
        if (dervalue.data.available() != 0)
        {
            c = dervalue.data.getInteger();
        }
        if (dervalue.data.available() != 0)
        {
            throw new IOException("DH parameter parsing error: Extra data");
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
        StringBuffer stringbuffer = new StringBuffer((new StringBuilder("SunJCE Diffie-Hellman Parameters:")).append(s).append("p:").append(s).append(Debug.toHexString(a)).append(s).append("g:").append(s).append(Debug.toHexString(b)).toString());
        if (c != 0)
        {
            stringbuffer.append((new StringBuilder()).append(s).append("l:").append(s).append("    ").append(c).toString());
        }
        return stringbuffer.toString();
    }
}
