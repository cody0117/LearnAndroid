// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.http.entity.mime;

import org.apache.james.mime4j.MimeException;

public class UnexpectedMimeException extends RuntimeException
{

    private static final long serialVersionUID = 0x124647444120c4dbL;

    public UnexpectedMimeException(MimeException mimeexception)
    {
        super(mimeexception.getMessage(), mimeexception);
    }
}
