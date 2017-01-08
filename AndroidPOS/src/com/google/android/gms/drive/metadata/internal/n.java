// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.drive.metadata.internal;

import java.util.Arrays;
import java.util.Collections;

// Referenced classes of package com.google.android.gms.drive.metadata.internal:
//            k

public final class n extends k
{

    public n(String s)
    {
        String as[] = new String[5];
        as[0] = a(s, "permissionId");
        as[1] = a(s, "displayName");
        as[2] = a(s, "picture");
        as[3] = a(s, "isAuthenticatedUser");
        as[4] = a(s, "emailAddress");
        super(s, Arrays.asList(as), Collections.emptyList(), 0x5b8d80);
    }

    private static String a(String s, String s1)
    {
        return (new StringBuilder(s)).append(".").append(s1).toString();
    }
}
