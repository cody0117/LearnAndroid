// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.analytics.tracking.android;


// Referenced classes of package com.google.analytics.tracking.android:
//            Utils

final class 
    implements 
{

    public final String format(String s)
    {
        if (Utils.safeParseBoolean(s))
        {
            return "1";
        } else
        {
            return "0";
        }
    }

    ()
    {
    }
}
