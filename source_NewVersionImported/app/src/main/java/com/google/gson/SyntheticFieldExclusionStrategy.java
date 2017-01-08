// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.gson;


// Referenced classes of package com.google.gson:
//            ExclusionStrategy, FieldAttributes

final class SyntheticFieldExclusionStrategy
    implements ExclusionStrategy
{

    private final boolean skipSyntheticFields;

    SyntheticFieldExclusionStrategy(boolean flag)
    {
        skipSyntheticFields = flag;
    }

    public final boolean shouldSkipClass(Class class1)
    {
        return false;
    }

    public final boolean shouldSkipField(FieldAttributes fieldattributes)
    {
        return skipSyntheticFields && fieldattributes.isSynthetic();
    }
}
