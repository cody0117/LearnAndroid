// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.gson;

import com.google.gson.annotations.Expose;

// Referenced classes of package com.google.gson:
//            ExclusionStrategy, FieldAttributes

final class ExposeAnnotationDeserializationExclusionStrategy
    implements ExclusionStrategy
{

    ExposeAnnotationDeserializationExclusionStrategy()
    {
    }

    public final boolean shouldSkipClass(Class class1)
    {
        return false;
    }

    public final boolean shouldSkipField(FieldAttributes fieldattributes)
    {
        Expose expose = (Expose)fieldattributes.getAnnotation(com/google/gson/annotations/Expose);
        if (expose == null)
        {
            return true;
        }
        return !expose.deserialize();
    }
}
