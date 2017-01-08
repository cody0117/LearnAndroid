// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.sun.crypto.provider;

import java.io.ObjectInputStream;
import java.security.InvalidKeyException;
import java.security.KeyRep;
import java.util.Arrays;
import javax.crypto.SecretKey;

// Referenced classes of package com.sun.crypto.provider:
//            DESKeyGenerator

final class DESedeKey
    implements SecretKey
{

    static final long serialVersionUID = 0x2231d6ba0f43f5daL;
    private byte key[];

    DESedeKey(byte abyte0[])
    {
        this(abyte0, 0);
    }

    DESedeKey(byte abyte0[], int i)
    {
        if (abyte0 == null || abyte0.length - i < 24)
        {
            throw new InvalidKeyException("Wrong key size");
        } else
        {
            key = new byte[24];
            System.arraycopy(abyte0, i, key, 0, 24);
            DESKeyGenerator.a(key, 0);
            DESKeyGenerator.a(key, 8);
            DESKeyGenerator.a(key, 16);
            return;
        }
    }

    private void readObject(ObjectInputStream objectinputstream)
    {
        objectinputstream.defaultReadObject();
        key = (byte[])key.clone();
    }

    private Object writeReplace()
    {
        return new KeyRep(java.security.KeyRep.Type.SECRET, getAlgorithm(), getFormat(), getEncoded());
    }

    public final boolean equals(Object obj)
    {
        if (this == obj)
        {
            return true;
        }
        if (!(obj instanceof SecretKey))
        {
            return false;
        }
        String s = ((SecretKey)obj).getAlgorithm();
        if (!s.equalsIgnoreCase("DESede") && !s.equalsIgnoreCase("TripleDES"))
        {
            return false;
        } else
        {
            byte abyte0[] = ((SecretKey)obj).getEncoded();
            boolean flag = Arrays.equals(key, abyte0);
            Arrays.fill(abyte0, (byte)0);
            return flag;
        }
    }

    protected final void finalize()
    {
        if (key != null)
        {
            Arrays.fill(key, (byte)0);
            key = null;
        }
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public final String getAlgorithm()
    {
        return "DESede";
    }

    public final byte[] getEncoded()
    {
        return (byte[])key.clone();
    }

    public final String getFormat()
    {
        return "RAW";
    }

    public final int hashCode()
    {
        int i = 0;
        for (int j = 1; j < key.length; j++)
        {
            i += j * key[j];
        }

        return i ^ "desede".hashCode();
    }
}
