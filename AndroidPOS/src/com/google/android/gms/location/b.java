// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.location;

import java.util.Comparator;

// Referenced classes of package com.google.android.gms.location:
//            DetectedActivity

final class b
    implements Comparator
{

    b()
    {
    }

    public final int compare(Object obj, Object obj1)
    {
        DetectedActivity detectedactivity = (DetectedActivity)obj;
        DetectedActivity detectedactivity1 = (DetectedActivity)obj1;
        int i = Integer.valueOf(detectedactivity1.b()).compareTo(Integer.valueOf(detectedactivity.b()));
        if (i == 0)
        {
            i = Integer.valueOf(detectedactivity.a()).compareTo(Integer.valueOf(detectedactivity1.a()));
        }
        return i;
    }
}
