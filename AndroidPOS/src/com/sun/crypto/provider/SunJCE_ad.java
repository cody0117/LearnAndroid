// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.sun.crypto.provider;

import java.security.Provider;
import javax.crypto.Cipher;
import javax.crypto.CipherSpi;

final class SunJCE_ad extends Cipher
{

    protected SunJCE_ad(CipherSpi cipherspi, Provider provider, String s)
    {
        super(cipherspi, provider, s);
    }
}
