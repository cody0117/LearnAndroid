// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.sun.crypto.provider;

import java.io.IOException;
import java.security.AlgorithmParametersSpi;
import java.security.spec.AlgorithmParameterSpec;
import java.security.spec.InvalidParameterSpecException;
import javax.crypto.spec.RC2ParameterSpec;
import sun.misc.HexDumpEncoder;
import sun.security.util.DerInputStream;
import sun.security.util.DerOutputStream;
import sun.security.util.DerValue;

public final class RC2Parameters extends AlgorithmParametersSpi
{

    private static final int a[] = {
        189, 86, 234, 242, 162, 241, 172, 42, 176, 147, 
        209, 156, 27, 51, 253, 208, 48, 4, 182, 220, 
        125, 223, 50, 75, 247, 203, 69, 155, 49, 187, 
        33, 90, 65, 159, 225, 217, 74, 77, 158, 218, 
        160, 104, 44, 195, 39, 95, 128, 54, 62, 238, 
        251, 149, 26, 254, 206, 168, 52, 169, 19, 240, 
        166, 63, 216, 12, 120, 36, 175, 35, 82, 193, 
        103, 23, 245, 102, 144, 231, 232, 7, 184, 96, 
        72, 230, 30, 83, 243, 146, 164, 114, 140, 8, 
        21, 110, 134, 0, 132, 250, 244, 127, 138, 66, 
        25, 246, 219, 205, 20, 141, 80, 18, 186, 60, 
        6, 78, 236, 179, 53, 17, 161, 136, 142, 43, 
        148, 153, 183, 113, 116, 211, 228, 191, 58, 222, 
        150, 14, 188, 10, 237, 119, 252, 55, 107, 3, 
        121, 137, 98, 198, 215, 192, 210, 124, 106, 139, 
        34, 163, 91, 5, 93, 2, 117, 213, 97, 227, 
        24, 143, 85, 81, 173, 31, 11, 94, 133, 229, 
        194, 87, 99, 202, 61, 108, 180, 197, 204, 112, 
        178, 145, 89, 13, 71, 32, 200, 79, 88, 224, 
        1, 226, 22, 56, 196, 111, 59, 15, 101, 70, 
        190, 126, 45, 123, 130, 249, 64, 181, 29, 115, 
        248, 235, 38, 199, 135, 151, 37, 84, 177, 40, 
        170, 152, 157, 165, 100, 109, 122, 212, 16, 129, 
        68, 239, 73, 214, 174, 46, 221, 118, 92, 47, 
        167, 28, 201, 9, 105, 154, 131, 207, 41, 57, 
        185, 233, 76, 255, 67, 171
    };
    private byte b[];
    private int c;
    private int d;

    public RC2Parameters()
    {
        c = 0;
        d = 0;
    }

    protected final byte[] engineGetEncoded()
    {
        DerOutputStream deroutputstream = new DerOutputStream();
        DerOutputStream deroutputstream1 = new DerOutputStream();
        if (d != 0)
        {
            deroutputstream1.putInteger(c);
            deroutputstream1.putOctetString(b);
            deroutputstream.write((byte)48, deroutputstream1);
        } else
        {
            deroutputstream.putOctetString(b);
        }
        return deroutputstream.toByteArray();
    }

    protected final byte[] engineGetEncoded(String s)
    {
        return engineGetEncoded();
    }

    protected final AlgorithmParameterSpec engineGetParameterSpec(Class class1)
    {
        if (javax/crypto/spec/RC2ParameterSpec.isAssignableFrom(class1))
        {
            if (b == null)
            {
                return new RC2ParameterSpec(d);
            } else
            {
                return new RC2ParameterSpec(d, b);
            }
        } else
        {
            throw new InvalidParameterSpecException("Inappropriate parameter specification");
        }
    }

    protected final void engineInit(AlgorithmParameterSpec algorithmparameterspec)
    {
        if (!(algorithmparameterspec instanceof RC2ParameterSpec))
        {
            throw new InvalidParameterSpecException("Inappropriate parameter specification");
        }
        RC2ParameterSpec rc2parameterspec = (RC2ParameterSpec)algorithmparameterspec;
        d = rc2parameterspec.getEffectiveKeyBits();
        if (d != 0)
        {
            if (d <= 0 || d > 1024)
            {
                throw new InvalidParameterSpecException("RC2 effective key size must be between 1 and 1024 bits");
            }
            if (d < 256)
            {
                c = a[d];
            } else
            {
                c = d;
            }
        }
        b = rc2parameterspec.getIV();
    }

    protected final void engineInit(byte abyte0[])
    {
        DerValue dervalue = new DerValue(abyte0);
        if (dervalue.tag != 48) goto _L2; else goto _L1
_L1:
        int i;
        int j;
        dervalue.data.reset();
        c = dervalue.data.getInteger();
        if (c < 0 || c > 1024)
        {
            throw new IOException((new StringBuilder("RC2 parameter parsing error: version number out of legal range (0-1024): ")).append(c).toString());
        }
        i = c;
        j = 0;
        if (i <= 255) goto _L4; else goto _L3
_L3:
        d = c;
_L10:
        b = dervalue.data.getOctetString();
_L8:
        if (b.length != 8)
        {
            throw new IOException((new StringBuilder("RC2 parameter parsing error: iv length must be 8 bits, actual: ")).append(b.length).toString());
        }
        break; /* Loop/switch isn't completed */
_L6:
        j++;
_L4:
        if (j >= a.length)
        {
            continue; /* Loop/switch isn't completed */
        }
        if (c != a[j]) goto _L6; else goto _L5
_L5:
        d = j;
        continue; /* Loop/switch isn't completed */
_L2:
        dervalue.data.reset();
        b = dervalue.getOctetString();
        c = 0;
        d = 0;
        if (true) goto _L8; else goto _L7
_L7:
        if (dervalue.data.available() != 0)
        {
            throw new IOException("RC2 parameter parsing error: extra data");
        }
        return;
        if (true) goto _L10; else goto _L9
_L9:
    }

    protected final void engineInit(byte abyte0[], String s)
    {
        engineInit(abyte0);
    }

    protected final String engineToString()
    {
        String s = System.getProperty("line.separator");
        HexDumpEncoder hexdumpencoder = new HexDumpEncoder();
        StringBuilder stringbuilder = new StringBuilder((new StringBuilder()).append(s).append("    iv:").append(s).append("[").append(hexdumpencoder.encodeBuffer(b)).append("]").toString());
        if (c != 0)
        {
            stringbuilder.append((new StringBuilder()).append(s).append("version:").append(s).append(c).append(s).toString());
        }
        return stringbuilder.toString();
    }

}
