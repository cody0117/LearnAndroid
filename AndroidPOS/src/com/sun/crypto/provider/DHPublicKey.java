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
import java.security.ProviderException;
import java.security.PublicKey;
import java.util.Arrays;
import javax.crypto.spec.DHParameterSpec;
import sun.security.util.Debug;
import sun.security.util.DerInputStream;
import sun.security.util.DerOutputStream;
import sun.security.util.DerValue;
import sun.security.util.ObjectIdentifier;

final class DHPublicKey
    implements Serializable, PublicKey, javax.crypto.interfaces.DHPublicKey
{

    static final long serialVersionUID = 0x6a219571f5151fdfL;
    private int DH_data[] = {
        1, 2, 840, 0x1bb8d, 1, 3, 1
    };
    private byte encodedKey[];
    private BigInteger g;
    private byte key[];
    private int l;
    private BigInteger p;
    private BigInteger y;

    DHPublicKey(BigInteger biginteger, BigInteger biginteger1, BigInteger biginteger2)
    {
        this(biginteger, biginteger1, biginteger2, 0);
    }

    DHPublicKey(BigInteger biginteger, BigInteger biginteger1, BigInteger biginteger2, int i)
    {
        y = biginteger;
        p = biginteger1;
        g = biginteger2;
        l = i;
        try
        {
            key = (new DerValue((byte)2, y.toByteArray())).toByteArray();
            encodedKey = getEncoded();
            return;
        }
        catch (IOException ioexception)
        {
            throw new ProviderException("Cannot produce ASN.1 encoding", ioexception);
        }
    }

    DHPublicKey(byte abyte0[])
    {
        DerValue dervalue;
        DerValue dervalue1;
        DH_data = (new int[] {
            1, 2, 840, 0x1bb8d, 1, 3, 1
        });
        ByteArrayInputStream bytearrayinputstream = new ByteArrayInputStream(abyte0);
        try
        {
            dervalue = new DerValue(bytearrayinputstream);
            if (dervalue.tag != 48)
            {
                throw new InvalidKeyException("Invalid key format");
            }
        }
        catch (NumberFormatException numberformatexception)
        {
            throw new InvalidKeyException("Private-value length too big");
        }
        catch (IOException ioexception)
        {
            throw new InvalidKeyException((new StringBuilder("Error parsing key encoding: ")).append(ioexception.toString()).toString());
        }
        dervalue1 = dervalue.data.getDerValue();
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
        }
        key = dervalue.data.getBitString();
        parseKeyBits();
        if (dervalue.data.available() != 0)
        {
            throw new InvalidKeyException("Excess key data");
        } else
        {
            encodedKey = (byte[])abyte0.clone();
            return;
        }
    }

    private void parseKeyBits()
    {
        try
        {
            y = (new DerInputStream(key)).getBigInteger();
            return;
        }
        catch (IOException ioexception)
        {
            throw new InvalidKeyException((new StringBuilder("Error parsing key encoding: ")).append(ioexception.toString()).toString());
        }
    }

    private Object writeReplace()
    {
        return new KeyRep(java.security.KeyRep.Type.PUBLIC, getAlgorithm(), getFormat(), getEncoded());
    }

    public final boolean equals(Object obj)
    {
        if (this == obj)
        {
            return true;
        }
        if (!(obj instanceof PublicKey))
        {
            return false;
        } else
        {
            return Arrays.equals(getEncoded(), ((PublicKey)obj).getEncoded());
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
            break MISSING_BLOCK_LABEL_152;
        }
        DerOutputStream deroutputstream = new DerOutputStream();
        deroutputstream.putOID(new ObjectIdentifier(DH_data));
        DerOutputStream deroutputstream1 = new DerOutputStream();
        deroutputstream1.putInteger(p);
        deroutputstream1.putInteger(g);
        if (l != 0)
        {
            deroutputstream1.putInteger(l);
        }
        deroutputstream.putDerValue(new DerValue((byte)48, deroutputstream1.toByteArray()));
        DerOutputStream deroutputstream2 = new DerOutputStream();
        deroutputstream2.write((byte)48, deroutputstream);
        deroutputstream2.putBitString(key);
        DerOutputStream deroutputstream3 = new DerOutputStream();
        deroutputstream3.write((byte)48, deroutputstream2);
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
        return "X.509";
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

    public final BigInteger getY()
    {
        return y;
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
        StringBuffer stringbuffer = new StringBuffer((new StringBuilder("SunJCE Diffie-Hellman Public Key:")).append(s).append("y:").append(s).append(Debug.toHexString(y)).append(s).append("p:").append(s).append(Debug.toHexString(p)).append(s).append("g:").append(s).append(Debug.toHexString(g)).toString());
        if (l != 0)
        {
            stringbuffer.append((new StringBuilder()).append(s).append("l:").append(s).append("    ").append(l).toString());
        }
        return stringbuffer.toString();
    }
}
