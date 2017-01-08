// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.gson;


// Referenced classes of package com.google.gson:
//            ExclusionStrategy, FieldAttributes

final class InnerClassExclusionStrategy
    implements ExclusionStrategy
{

    InnerClassExclusionStrategy()
    {
    }

    private boolean isInnerClass(Class class1)
    {
        return class1.isMemberClass() && !isStatic(class1);
    }

    private boolean isStatic(Class class1)
    {
        return (8 & class1.getModifiers()) != 0;
    }

    public final boolean shouldSkipClass(Class class1)
    {
        return isInnerClass(class1);
    }

    public final boolean shouldSkipField(FieldAttributes fieldattributes)
    {
        return isInnerClass(fieldattributes.getDeclaredClass());
    }
}
