// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.sun.crypto.provider;

import sun.security.internal.interfaces.TlsMasterSecret;

final class minorVersion
    implements TlsMasterSecret
{

    private byte key[];
    private final int majorVersion;
    private final int minorVersion;

    public final String getAlgorithm()
    {
        return "TlsMasterSecret";
    }

    public final byte[] getEncoded()
    {
        return (byte[])key.clone();
    }

    public final String getFormat()
    {
        return "RAW";
    }

    public final int getMajorVersion()
    {
        return majorVersion;
    }

    public final int getMinorVersion()
    {
        return minorVersion;
    }

    I(byte abyte0[], int i, int j)
    {
        key = abyte0;
        majorVersion = i;
        minorVersion = j;
    }
}
