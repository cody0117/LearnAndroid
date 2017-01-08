// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.sun.crypto.provider;

import java.security.CodeSource;
import java.security.PrivilegedAction;
import java.security.ProtectionDomain;

final class a
    implements PrivilegedAction
{

    final Class a;

    public final Object run()
    {
        return a.getProtectionDomain().getCodeSource().getLocation();
    }

    (Class class1)
    {
        a = class1;
        super();
    }
}
