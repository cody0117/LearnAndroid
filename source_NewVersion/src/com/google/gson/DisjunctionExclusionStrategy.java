// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.gson;

import java.util.Collection;
import java.util.Iterator;

// Referenced classes of package com.google.gson:
//            ExclusionStrategy, FieldAttributes

final class DisjunctionExclusionStrategy
    implements ExclusionStrategy
{

    private final Collection strategies;

    DisjunctionExclusionStrategy(Collection collection)
    {
        strategies = (Collection)com.google.gson.internal..Gson.Preconditions.checkNotNull(collection);
    }

    public final boolean shouldSkipClass(Class class1)
    {
        for (Iterator iterator = strategies.iterator(); iterator.hasNext();)
        {
            if (((ExclusionStrategy)iterator.next()).shouldSkipClass(class1))
            {
                return true;
            }
        }

        return false;
    }

    public final boolean shouldSkipField(FieldAttributes fieldattributes)
    {
        for (Iterator iterator = strategies.iterator(); iterator.hasNext();)
        {
            if (((ExclusionStrategy)iterator.next()).shouldSkipField(fieldattributes))
            {
                return true;
            }
        }

        return false;
    }
}
