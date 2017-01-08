// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.sun.crypto.provider;

import java.io.IOException;
import java.io.Serializable;
import java.security.AlgorithmParameters;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import javax.crypto.Cipher;
import javax.crypto.SealedObject;

final class SealedObjectForKeyProtector extends SealedObject
{

    static final long serialVersionUID = 0xcd57ca59e730bb53L;

    SealedObjectForKeyProtector(Serializable serializable, Cipher cipher)
    {
        super(serializable, cipher);
    }

    SealedObjectForKeyProtector(SealedObject sealedobject)
    {
        super(sealedobject);
    }

    final AlgorithmParameters a()
    {
        byte abyte0[] = super.encodedParams;
        AlgorithmParameters algorithmparameters = null;
        if (abyte0 != null)
        {
            try
            {
                algorithmparameters = AlgorithmParameters.getInstance("PBE", "SunJCE");
                algorithmparameters.init(super.encodedParams);
            }
            catch (NoSuchProviderException nosuchproviderexception)
            {
                return algorithmparameters;
            }
            catch (NoSuchAlgorithmException nosuchalgorithmexception)
            {
                return algorithmparameters;
            }
            catch (IOException ioexception)
            {
                return algorithmparameters;
            }
        }
        return algorithmparameters;
    }
}
