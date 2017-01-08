// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.gson;

import com.google.gson.annotations.Since;
import com.google.gson.annotations.Until;

// Referenced classes of package com.google.gson:
//            ExclusionStrategy, FieldAttributes

final class VersionExclusionStrategy
    implements ExclusionStrategy
{

    private final double version;

    VersionExclusionStrategy(double d)
    {
        boolean flag;
        if (d >= 0.0D)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        com.google.gson.internal..Gson.Preconditions.checkArgument(flag);
        version = d;
    }

    private boolean isValidSince(Since since)
    {
        return since == null || since.value() <= version;
    }

    private boolean isValidUntil(Until until)
    {
        return until == null || until.value() > version;
    }

    private boolean isValidVersion(Since since, Until until)
    {
        return isValidSince(since) && isValidUntil(until);
    }

    public final boolean shouldSkipClass(Class class1)
    {
        return !isValidVersion((Since)class1.getAnnotation(com/google/gson/annotations/Since), (Until)class1.getAnnotation(com/google/gson/annotations/Until));
    }

    public final boolean shouldSkipField(FieldAttributes fieldattributes)
    {
        return !isValidVersion((Since)fieldattributes.getAnnotation(com/google/gson/annotations/Since), (Until)fieldattributes.getAnnotation(com/google/gson/annotations/Until));
    }
}
