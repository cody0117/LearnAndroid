// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.sun.crypto.provider;

import java.io.IOException;
import java.math.BigInteger;
import java.security.AlgorithmParametersSpi;
import java.security.NoSuchAlgorithmException;
import java.security.spec.AlgorithmParameterSpec;
import java.security.spec.InvalidParameterSpecException;
import java.security.spec.MGF1ParameterSpec;
import javax.crypto.spec.OAEPParameterSpec;
import javax.crypto.spec.PSource;
import sun.security.util.Debug;
import sun.security.util.DerInputStream;
import sun.security.util.DerOutputStream;
import sun.security.util.DerValue;
import sun.security.util.ObjectIdentifier;
import sun.security.x509.AlgorithmId;

public final class OAEPParameters extends AlgorithmParametersSpi
{

    private static ObjectIdentifier d;
    private static ObjectIdentifier e;
    private String a;
    private MGF1ParameterSpec b;
    private byte c[];

    public OAEPParameters()
    {
    }

    private static String a(String s)
    {
        if (s.equals("SHA"))
        {
            s = "SHA-1";
        } else
        {
            if (s.equals("SHA256"))
            {
                return "SHA-256";
            }
            if (s.equals("SHA384"))
            {
                return "SHA-384";
            }
            if (s.equals("SHA512"))
            {
                return "SHA-512";
            }
        }
        return s;
    }

    protected final byte[] engineGetEncoded()
    {
        DerOutputStream deroutputstream = new DerOutputStream();
        AlgorithmId algorithmid;
        DerOutputStream deroutputstream1;
        DerOutputStream deroutputstream2;
        AlgorithmId algorithmid1;
        DerOutputStream deroutputstream3;
        DerOutputStream deroutputstream4;
        DerOutputStream deroutputstream5;
        DerOutputStream deroutputstream6;
        try
        {
            algorithmid = AlgorithmId.get(a);
        }
        catch (NoSuchAlgorithmException nosuchalgorithmexception)
        {
            throw new IOException((new StringBuilder("AlgorithmId ")).append(a).append(" impl not found").toString());
        }
        deroutputstream1 = new DerOutputStream();
        algorithmid.derEncode(deroutputstream1);
        deroutputstream.write(DerValue.createTag((byte)-128, true, (byte)0), deroutputstream1);
        deroutputstream2 = new DerOutputStream();
        deroutputstream2.putOID(d);
        try
        {
            algorithmid1 = AlgorithmId.get(b.getDigestAlgorithm());
        }
        catch (NoSuchAlgorithmException nosuchalgorithmexception1)
        {
            throw new IOException((new StringBuilder("AlgorithmId ")).append(b.getDigestAlgorithm()).append(" impl not found").toString());
        }
        algorithmid1.encode(deroutputstream2);
        deroutputstream3 = new DerOutputStream();
        deroutputstream3.write((byte)48, deroutputstream2);
        deroutputstream.write(DerValue.createTag((byte)-128, true, (byte)1), deroutputstream3);
        deroutputstream4 = new DerOutputStream();
        deroutputstream4.putOID(e);
        deroutputstream4.putOctetString(c);
        deroutputstream5 = new DerOutputStream();
        deroutputstream5.write((byte)48, deroutputstream4);
        deroutputstream.write(DerValue.createTag((byte)-128, true, (byte)2), deroutputstream5);
        deroutputstream6 = new DerOutputStream();
        deroutputstream6.write((byte)48, deroutputstream);
        return deroutputstream6.toByteArray();
    }

    protected final byte[] engineGetEncoded(String s)
    {
        if (s != null && !s.equalsIgnoreCase("ASN.1"))
        {
            throw new IllegalArgumentException("Only support ASN.1 format");
        } else
        {
            return engineGetEncoded();
        }
    }

    protected final AlgorithmParameterSpec engineGetParameterSpec(Class class1)
    {
        if (javax/crypto/spec/OAEPParameterSpec.isAssignableFrom(class1))
        {
            return new OAEPParameterSpec(a, "MGF1", b, new javax.crypto.spec.PSource.PSpecified(c));
        } else
        {
            throw new InvalidParameterSpecException("Inappropriate parameter specification");
        }
    }

    protected final void engineInit(AlgorithmParameterSpec algorithmparameterspec)
    {
        if (!(algorithmparameterspec instanceof OAEPParameterSpec))
        {
            throw new InvalidParameterSpecException("Inappropriate parameter specification");
        }
        OAEPParameterSpec oaepparameterspec = (OAEPParameterSpec)algorithmparameterspec;
        a = oaepparameterspec.getDigestAlgorithm();
        String s = oaepparameterspec.getMGFAlgorithm();
        if (!s.equalsIgnoreCase("MGF1"))
        {
            throw new InvalidParameterSpecException((new StringBuilder("Unsupported mgf ")).append(s).append("; MGF1 only").toString());
        }
        AlgorithmParameterSpec algorithmparameterspec1 = oaepparameterspec.getMGFParameters();
        if (!(algorithmparameterspec1 instanceof MGF1ParameterSpec))
        {
            throw new InvalidParameterSpecException("Inappropriate mgf parameters; non-null MGF1ParameterSpec only");
        }
        b = (MGF1ParameterSpec)algorithmparameterspec1;
        PSource psource = oaepparameterspec.getPSource();
        if (psource.getAlgorithm().equals("PSpecified"))
        {
            c = ((javax.crypto.spec.PSource.PSpecified)psource).getValue();
            return;
        } else
        {
            throw new InvalidParameterSpecException((new StringBuilder("Unsupported pSource ")).append(psource.getAlgorithm()).append("; PSpecified only").toString());
        }
    }

    protected final void engineInit(byte abyte0[])
    {
        DerInputStream derinputstream = new DerInputStream(abyte0);
        a = "SHA-1";
        b = MGF1ParameterSpec.SHA1;
        c = new byte[0];
        DerValue adervalue[] = derinputstream.getSequence(3);
        int i = 0;
        while (i < adervalue.length) 
        {
            DerValue dervalue = adervalue[i];
            if (dervalue.isContextSpecific((byte)0))
            {
                a = a(AlgorithmId.parse(dervalue.data.getDerValue()).getName());
            } else
            if (dervalue.isContextSpecific((byte)1))
            {
                AlgorithmId algorithmid1 = AlgorithmId.parse(dervalue.data.getDerValue());
                if (!algorithmid1.getOID().equals(d))
                {
                    throw new IOException("Only MGF1 mgf is supported");
                }
                String s = a(AlgorithmId.parse(new DerValue(algorithmid1.getEncodedParams())).getName());
                if (s.equals("SHA-1"))
                {
                    b = MGF1ParameterSpec.SHA1;
                } else
                if (s.equals("SHA-256"))
                {
                    b = MGF1ParameterSpec.SHA256;
                } else
                if (s.equals("SHA-384"))
                {
                    b = MGF1ParameterSpec.SHA384;
                } else
                if (s.equals("SHA-512"))
                {
                    b = MGF1ParameterSpec.SHA512;
                } else
                {
                    throw new IOException("Unrecognized message digest algorithm");
                }
            } else
            if (dervalue.isContextSpecific((byte)2))
            {
                AlgorithmId algorithmid = AlgorithmId.parse(dervalue.data.getDerValue());
                if (!algorithmid.getOID().equals(e))
                {
                    throw new IOException("Wrong OID for pSpecified");
                }
                DerInputStream derinputstream1 = new DerInputStream(algorithmid.getEncodedParams());
                c = derinputstream1.getOctetString();
                if (derinputstream1.available() != 0)
                {
                    throw new IOException("Extra data for pSpecified");
                }
            } else
            {
                throw new IOException("Invalid encoded OAEPParameters");
            }
            i++;
        }
    }

    protected final void engineInit(byte abyte0[], String s)
    {
        if (s != null && !s.equalsIgnoreCase("ASN.1"))
        {
            throw new IllegalArgumentException("Only support ASN.1 format");
        } else
        {
            engineInit(abyte0);
            return;
        }
    }

    protected final String engineToString()
    {
        StringBuffer stringbuffer = new StringBuffer();
        stringbuffer.append((new StringBuilder("MD: ")).append(a).append("\n").toString());
        stringbuffer.append((new StringBuilder("MGF: MGF1")).append(b.getDigestAlgorithm()).append("\n").toString());
        StringBuilder stringbuilder = new StringBuilder("PSource: PSpecified ");
        String s;
        if (c.length == 0)
        {
            s = "";
        } else
        {
            s = Debug.toHexString(new BigInteger(c));
        }
        stringbuffer.append(stringbuilder.append(s).append("\n").toString());
        return stringbuffer.toString();
    }

    static 
    {
        try
        {
            d = new ObjectIdentifier(new int[] {
                1, 2, 840, 0x1bb8d, 1, 1, 8
            });
        }
        catch (IOException ioexception)
        {
            d = null;
        }
        try
        {
            e = new ObjectIdentifier(new int[] {
                1, 2, 840, 0x1bb8d, 1, 1, 9
            });
        }
        catch (IOException ioexception1)
        {
            e = null;
        }
    }
}
