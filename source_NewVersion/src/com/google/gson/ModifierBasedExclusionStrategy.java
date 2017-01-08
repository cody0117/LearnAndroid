// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.gson;

import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;

// Referenced classes of package com.google.gson:
//            ExclusionStrategy, FieldAttributes

final class ModifierBasedExclusionStrategy
    implements ExclusionStrategy
{

    private final Collection modifiers = new HashSet();

    public transient ModifierBasedExclusionStrategy(int ai[])
    {
        if (ai != null)
        {
            int i = ai.length;
            for (int j = 0; j < i; j++)
            {
                int k = ai[j];
                modifiers.add(Integer.valueOf(k));
            }

        }
    }

    public final boolean shouldSkipClass(Class class1)
    {
        return false;
    }

    public final boolean shouldSkipField(FieldAttributes fieldattributes)
    {
        for (Iterator iterator = modifiers.iterator(); iterator.hasNext();)
        {
            if (fieldattributes.hasModifier(((Integer)iterator.next()).intValue()))
            {
                return true;
            }
        }

        return false;
    }
}
