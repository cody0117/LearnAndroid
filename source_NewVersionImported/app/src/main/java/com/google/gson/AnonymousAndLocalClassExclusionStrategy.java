// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.gson;


// Referenced classes of package com.google.gson:
//            ExclusionStrategy, FieldAttributes

final class AnonymousAndLocalClassExclusionStrategy
    implements ExclusionStrategy
{

    AnonymousAndLocalClassExclusionStrategy()
    {
    }

    private boolean isAnonymousOrLocal(Class class1)
    {
        return !java/lang/Enum.isAssignableFrom(class1) && (class1.isAnonymousClass() || class1.isLocalClass());
    }

    public final boolean shouldSkipClass(Class class1)
    {
        return isAnonymousOrLocal(class1);
    }

    public final boolean shouldSkipField(FieldAttributes fieldattributes)
    {
        return isAnonymousOrLocal(fieldattributes.getDeclaredClass());
    }
}
