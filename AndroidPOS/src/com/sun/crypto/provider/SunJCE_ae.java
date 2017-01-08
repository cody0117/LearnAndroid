// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.sun.crypto.provider;

import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.Charset;
import java.security.GeneralSecurityException;
import java.security.KeyRep;
import java.security.NoSuchAlgorithmException;
import java.security.spec.InvalidKeySpecException;
import java.util.Arrays;
import javax.crypto.Mac;
import javax.crypto.SecretKey;
import javax.crypto.interfaces.PBEKey;
import javax.crypto.spec.PBEKeySpec;
import javax.crypto.spec.SecretKeySpec;

// Referenced classes of package com.sun.crypto.provider:
//            SunJCE

final class SunJCE_ae
    implements PBEKey
{

    static final long serialVersionUID = 0xe0fc269148183943L;
    private char a[];
    private byte b[];
    private int c;
    private byte d[];
    private Mac e;

    SunJCE_ae(PBEKeySpec pbekeyspec, String s)
    {
        char ac[] = pbekeyspec.getPassword();
        byte abyte0[];
        if (ac == null)
        {
            a = new char[0];
        } else
        {
            a = (char[])ac.clone();
        }
        abyte0 = a(a);
        b = pbekeyspec.getSalt();
        if (b == null)
        {
            throw new InvalidKeySpecException("Salt not found");
        }
        c = pbekeyspec.getIterationCount();
        if (c == 0)
        {
            throw new InvalidKeySpecException("Iteration count not found");
        }
        if (c < 0)
        {
            throw new InvalidKeySpecException("Iteration count is negative");
        }
        int i = pbekeyspec.getKeyLength();
        if (i == 0)
        {
            throw new InvalidKeySpecException("Key length not found");
        }
        if (i == 0)
        {
            throw new InvalidKeySpecException("Key length is negative");
        }
        try
        {
            e = Mac.getInstance(s, new SunJCE());
        }
        catch (NoSuchAlgorithmException nosuchalgorithmexception)
        {
            InvalidKeySpecException invalidkeyspecexception = new InvalidKeySpecException();
            invalidkeyspecexception.initCause(nosuchalgorithmexception);
            throw invalidkeyspecexception;
        }
        d = a(e, abyte0, b, c, i);
    }

    private static byte[] a(Mac mac, byte abyte0[], byte abyte1[], int i, int j)
    {
        byte abyte2[];
        int k1;
        int l1;
        int k = j / 8;
        abyte2 = new byte[k];
        int l;
        int i1;
        int j1;
        byte abyte3[];
        byte abyte4[];
        byte abyte5[];
        int i2;
        try
        {
            l = mac.getMacLength();
            i1 = (-1 + (k + l)) / l;
        }
        catch (GeneralSecurityException generalsecurityexception)
        {
            throw new RuntimeException("Error deriving PBKDF2 keys");
        }
        j1 = k - l * (i1 - 1);
        abyte3 = new byte[l];
        abyte4 = new byte[l];
        mac.init(new SecretKeySpec(abyte0, mac.getAlgorithm()));
        abyte5 = new byte[4];
        k1 = 1;
_L10:
        if (k1 > i1) goto _L2; else goto _L1
_L1:
        mac.update(abyte1);
        abyte5[3] = (byte)k1;
        abyte5[2] = (byte)(0xff & k1 >> 8);
        abyte5[1] = (byte)(0xff & k1 >> 16);
        abyte5[0] = (byte)(0xff & k1 >> 24);
        mac.update(abyte5);
        mac.doFinal(abyte3, 0);
        System.arraycopy(abyte3, 0, abyte4, 0, abyte3.length);
        l1 = 2;
_L8:
        if (l1 > i) goto _L4; else goto _L3
_L3:
        mac.update(abyte3);
        mac.doFinal(abyte3, 0);
        i2 = 0;
_L6:
        if (i2 >= abyte3.length)
        {
            break; /* Loop/switch isn't completed */
        }
        abyte4[i2] = (byte)(abyte4[i2] ^ abyte3[i2]);
        i2++;
        if (true) goto _L6; else goto _L5
_L4:
        if (k1 != i1)
        {
            break MISSING_BLOCK_LABEL_248;
        }
        System.arraycopy(abyte4, 0, abyte2, l * (k1 - 1), j1);
        break; /* Loop/switch isn't completed */
        System.arraycopy(abyte4, 0, abyte2, l * (k1 - 1), l);
        break; /* Loop/switch isn't completed */
_L2:
        return abyte2;
_L5:
        l1++;
        if (true) goto _L8; else goto _L7
_L7:
        k1++;
        if (true) goto _L10; else goto _L9
_L9:
    }

    private static byte[] a(char ac[])
    {
        ByteBuffer bytebuffer = Charset.forName("UTF-8").encode(CharBuffer.wrap(ac));
        int i = bytebuffer.limit();
        byte abyte0[] = new byte[i];
        bytebuffer.get(abyte0, 0, i);
        return abyte0;
    }

    private Object writeReplace()
    {
        return new KeyRep(java.security.KeyRep.Type.SECRET, getAlgorithm(), getFormat(), getEncoded());
    }

    public final boolean equals(Object obj)
    {
        boolean flag1;
        if (obj == this)
        {
            flag1 = true;
        } else
        {
            boolean flag = obj instanceof SecretKey;
            flag1 = false;
            if (flag)
            {
                SecretKey secretkey = (SecretKey)obj;
                boolean flag2 = secretkey.getAlgorithm().equalsIgnoreCase(getAlgorithm());
                flag1 = false;
                if (flag2)
                {
                    boolean flag3 = secretkey.getFormat().equalsIgnoreCase("RAW");
                    flag1 = false;
                    if (flag3)
                    {
                        byte abyte0[] = secretkey.getEncoded();
                        boolean flag4 = Arrays.equals(d, secretkey.getEncoded());
                        Arrays.fill(abyte0, (byte)0);
                        return flag4;
                    }
                }
            }
        }
        return flag1;
    }

    protected final void finalize()
    {
        if (a != null)
        {
            Arrays.fill(a, '0');
            a = null;
        }
        if (d != null)
        {
            Arrays.fill(d, (byte)0);
            d = null;
        }
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public final String getAlgorithm()
    {
        return (new StringBuilder("PBKDF2With")).append(e.getAlgorithm()).toString();
    }

    public final byte[] getEncoded()
    {
        return (byte[])d.clone();
    }

    public final String getFormat()
    {
        return "RAW";
    }

    public final int getIterationCount()
    {
        return c;
    }

    public final char[] getPassword()
    {
        return (char[])a.clone();
    }

    public final byte[] getSalt()
    {
        return (byte[])b.clone();
    }

    public final int hashCode()
    {
        int i = 0;
        for (int j = 1; j < d.length; j++)
        {
            i += j * d[j];
        }

        return i ^ getAlgorithm().toLowerCase().hashCode();
    }
}
