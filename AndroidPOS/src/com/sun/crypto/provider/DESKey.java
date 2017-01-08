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

final class DESKey
    implements SecretKey
{

    static final long serialVersionUID = 0x6b349c35da156898L;
    private byte key[];

    DESKey(byte abyte0[])
    {
        this(abyte0, 0);
    }

    DESKey(byte abyte0[], int i)
    {
        if (abyte0 == null || abyte0.length - i < 8)
        {
            throw new InvalidKeyException("Wrong key size");
        } else
        {
            key = new byte[8];
            System.arraycopy(abyte0, i, key, 0, 8);
            DESKeyGenerator.a(key, 0);
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
        if (!((SecretKey)obj).getAlgorithm().equalsIgnoreCase("DES"))
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
        return "DES";
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

        return i ^ "des".hashCode();
    }
}
