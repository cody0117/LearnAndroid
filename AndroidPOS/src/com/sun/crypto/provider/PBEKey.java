// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.sun.crypto.provider;

import java.io.ObjectInputStream;
import java.security.KeyRep;
import java.security.spec.InvalidKeySpecException;
import java.util.Arrays;
import javax.crypto.SecretKey;
import javax.crypto.spec.PBEKeySpec;

final class PBEKey
    implements SecretKey
{

    static final long serialVersionUID = 0xe0fc818458927930L;
    private byte key[];
    private String type;

    PBEKey(PBEKeySpec pbekeyspec, String s)
    {
        int i = 0;
        super();
        char ac[] = pbekeyspec.getPassword();
        if (ac == null)
        {
            ac = new char[0];
        }
        for (int j = 0; j < ac.length; j++)
        {
            if (ac[j] < ' ' || ac[j] > '~')
            {
                throw new InvalidKeySpecException("Password is not ASCII");
            }
        }

        key = new byte[ac.length];
        for (; i < ac.length; i++)
        {
            key[i] = (byte)(0x7f & ac[i]);
        }

        Arrays.fill(ac, ' ');
        type = s;
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
                boolean flag2 = secretkey.getAlgorithm().equalsIgnoreCase(type);
                flag1 = false;
                if (flag2)
                {
                    byte abyte0[] = secretkey.getEncoded();
                    boolean flag3 = Arrays.equals(key, abyte0);
                    Arrays.fill(abyte0, (byte)0);
                    return flag3;
                }
            }
        }
        return flag1;
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
        return type;
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

        return i ^ getAlgorithm().toLowerCase().hashCode();
    }
}
