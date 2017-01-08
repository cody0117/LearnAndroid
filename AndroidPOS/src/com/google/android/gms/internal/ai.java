// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public abstract class ai
{

    private static MessageDigest b = null;
    protected Object a;

    public ai()
    {
        a = new Object();
    }

    protected final MessageDigest a()
    {
        Object obj = a;
        obj;
        JVM INSTR monitorenter ;
        MessageDigest messagedigest1;
        if (b == null)
        {
            break MISSING_BLOCK_LABEL_23;
        }
        messagedigest1 = b;
        return messagedigest1;
        int i = 0;
        while (i < 2) 
        {
            Exception exception;
            MessageDigest messagedigest;
            try
            {
                b = MessageDigest.getInstance("MD5");
            }
            catch (NoSuchAlgorithmException nosuchalgorithmexception) { }
            finally
            {
                obj;
            }
            i++;
        }
        messagedigest = b;
        obj;
        JVM INSTR monitorexit ;
        return messagedigest;
        throw exception;
    }

    abstract byte[] a(String s);

}
