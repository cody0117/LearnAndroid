// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.sun.crypto.provider;

import javax.crypto.SealedObject;

// Referenced classes of package com.sun.crypto.provider:
//            SealedObjectForKeyProtector

final class ai extends SealedObject
{

    static final long serialVersionUID = 0x9e2407c45560b92cL;

    ai(SealedObject sealedobject)
    {
        super(sealedobject);
    }

    final Object readResolve()
    {
        return new SealedObjectForKeyProtector(this);
    }
}
