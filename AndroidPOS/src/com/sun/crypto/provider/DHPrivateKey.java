// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.sun.crypto.provider;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.Serializable;
import java.math.BigInteger;
import java.security.InvalidKeyException;
import java.security.KeyRep;
import java.security.PrivateKey;
import java.security.ProviderException;
import java.util.Arrays;
import javax.crypto.spec.DHParameterSpec;
import sun.security.util.Debug;
import sun.security.util.DerInputStream;
import sun.security.util.DerOutputStream;
import sun.security.util.DerValue;
import sun.security.util.ObjectIdentifier;

final class DHPrivateKey
    implements Serializable, PrivateKey, javax.crypto.interfaces.DHPrivateKey
{

    private static final BigInteger PKCS8_VERSION;
    static final long serialVersionUID = 0x68fdf9c8d4775c16L;
    private int DH_data[] = {
        1, 2, 840, 0x1bb8d, 1, 3, 1
    };
    private byte encodedKey[];
    private BigInteger g;
    private byte key[];
    private int l;
    private BigInteger p;
    private BigInteger x;

    DHPrivateKey(BigInteger biginteger, BigInteger biginteger1, BigInteger biginteger2)
    {
        this(biginteger, biginteger1, biginteger2, 0);
    }

    DHPrivateKey(BigInteger biginteger, BigInteger biginteger1, BigInteger biginteger2, int i)
    {
        x = biginteger;
        p = biginteger1;
        g = biginteger2;
        l = i;
        try
        {
            key = (new DerValue((byte)2, x.toByteArray())).toByteArray();
            encodedKey = getEncoded();
            return;
        }
        catch (IOException ioexception)
        {
            throw new ProviderException("Cannot produce ASN.1 encoding", ioexception);
        }
    }

    DHPrivateKey(byte abyte0[])
    {
        DerValue dervalue;
        DH_data = (new int[] {
            1, 2, 840, 0x1bb8d, 1, 3, 1
        });
        ByteArrayInputStream bytearrayinputstream = new ByteArrayInputStream(abyte0);
        BigInteger biginteger;
        try
        {
            dervalue = new DerValue(bytearrayinputstream);
            if (dervalue.tag != 48)
            {
                throw new InvalidKeyException("Key not a SEQUENCE");
            }
        }
        catch (NumberFormatException numberformatexception)
        {
            InvalidKeyException invalidkeyexception1 = new InvalidKeyException("Private-value length too big");
            invalidkeyexception1.initCause(numberformatexception);
            throw invalidkeyexception1;
        }
        catch (IOException ioexception)
        {
            InvalidKeyException invalidkeyexception = new InvalidKeyException((new StringBuilder("Error parsing key encoding: ")).append(ioexception.getMessage()).toString());
            invalidkeyexception.initCause(ioexception);
            throw invalidkeyexception;
        }
        biginteger = dervalue.data.getBigInteger();
        if (!biginteger.equals(PKCS8_VERSION))
        {
            throw new IOException((new StringBuilder("version mismatch: (supported: ")).append(PKCS8_VERSION).append(", parsed: ").append(biginteger).toString());
        }
        DerValue dervalue1 = dervalue.data.getDerValue();
        if (dervalue1.tag != 48)
        {
            throw new InvalidKeyException("AlgId is not a SEQUENCE");
        }
        DerInputStream derinputstream = dervalue1.toDerInputStream();
        if (derinputstream.getOID() == null)
        {
            throw new InvalidKeyException("Null OID");
        }
        if (derinputstream.available() == 0)
        {
            throw new InvalidKeyException("Parameters missing");
        }
        DerValue dervalue2 = derinputstream.getDerValue();
        if (dervalue2.tag == 5)
        {
            throw new InvalidKeyException("Null parameters");
        }
        if (dervalue2.tag != 48)
        {
            throw new InvalidKeyException("Parameters not a SEQUENCE");
        }
        dervalue2.data.reset();
        p = dervalue2.data.getBigInteger();
        g = dervalue2.data.getBigInteger();
        if (dervalue2.data.available() != 0)
        {
            l = dervalue2.data.getInteger();
        }
        if (dervalue2.data.available() != 0)
        {
            throw new InvalidKeyException("Extra parameter data");
        } else
        {
            key = dervalue.data.getOctetString();
            parseKeyBits();
            encodedKey = (byte[])abyte0.clone();
            return;
        }
    }

    private void parseKeyBits()
    {
        try
        {
            x = (new DerInputStream(key)).getBigInteger();
            return;
        }
        catch (IOException ioexception)
        {
            InvalidKeyException invalidkeyexception = new InvalidKeyException((new StringBuilder("Error parsing key encoding: ")).append(ioexception.getMessage()).toString());
            invalidkeyexception.initCause(ioexception);
            throw invalidkeyexception;
        }
    }

    private Object writeReplace()
    {
        return new KeyRep(java.security.KeyRep.Type.PRIVATE, getAlgorithm(), getFormat(), getEncoded());
    }

    public final boolean equals(Object obj)
    {
        if (this == obj)
        {
            return true;
        }
        if (!(obj instanceof PrivateKey))
        {
            return false;
        } else
        {
            return Arrays.equals(getEncoded(), ((PrivateKey)obj).getEncoded());
        }
    }

    public final String getAlgorithm()
    {
        return "DH";
    }

    public final byte[] getEncoded()
    {
        this;
        JVM INSTR monitorenter ;
        byte abyte0[] = encodedKey;
        if (abyte0 != null)
        {
            break MISSING_BLOCK_LABEL_160;
        }
        DerOutputStream deroutputstream = new DerOutputStream();
        deroutputstream.putInteger(PKCS8_VERSION);
        DerOutputStream deroutputstream1 = new DerOutputStream();
        deroutputstream1.putOID(new ObjectIdentifier(DH_data));
        DerOutputStream deroutputstream2 = new DerOutputStream();
        deroutputstream2.putInteger(p);
        deroutputstream2.putInteger(g);
        if (l != 0)
        {
            deroutputstream2.putInteger(l);
        }
        deroutputstream1.putDerValue(new DerValue((byte)48, deroutputstream2.toByteArray()));
        deroutputstream.write((byte)48, deroutputstream1);
        deroutputstream.putOctetString(key);
        DerOutputStream deroutputstream3 = new DerOutputStream();
        deroutputstream3.write((byte)48, deroutputstream);
        encodedKey = deroutputstream3.toByteArray();
        byte abyte1[] = (byte[])encodedKey.clone();
_L2:
        this;
        JVM INSTR monitorexit ;
        return abyte1;
        IOException ioexception;
        ioexception;
        abyte1 = null;
        if (true) goto _L2; else goto _L1
_L1:
        Exception exception;
        exception;
        throw exception;
    }

    public final String getFormat()
    {
        return "PKCS#8";
    }

    public final DHParameterSpec getParams()
    {
        if (l != 0)
        {
            return new DHParameterSpec(p, g, l);
        } else
        {
            return new DHParameterSpec(p, g);
        }
    }

    public final BigInteger getX()
    {
        return x;
    }

    public final int hashCode()
    {
        int i = 0;
        byte abyte0[] = getEncoded();
        for (int j = 1; j < abyte0.length; j++)
        {
            i += j * abyte0[j];
        }

        return i;
    }

    public final String toString()
    {
        String s = System.getProperty("line.separator");
        StringBuffer stringbuffer = new StringBuffer((new StringBuilder("SunJCE Diffie-Hellman Private Key:")).append(s).append("x:").append(s).append(Debug.toHexString(x)).append(s).append("p:").append(s).append(Debug.toHexString(p)).append(s).append("g:").append(s).append(Debug.toHexString(g)).toString());
        if (l != 0)
        {
            stringbuffer.append((new StringBuilder()).append(s).append("l:").append(s).append("    ").append(l).toString());
        }
        return stringbuffer.toString();
    }

    static 
    {
        PKCS8_VERSION = BigInteger.ZERO;
    }
}
