// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.tagmanager;


// Referenced classes of package com.google.android.gms.tagmanager:
//            x

final class s
{

    public static int a()
    {
        int i;
        try
        {
            i = Integer.parseInt(android.os.Build.VERSION.SDK);
        }
        catch (NumberFormatException numberformatexception)
        {
            (new StringBuilder("Invalid version number: ")).append(android.os.Build.VERSION.SDK);
            x.a();
            return 0;
        }
        return i;
    }
}
