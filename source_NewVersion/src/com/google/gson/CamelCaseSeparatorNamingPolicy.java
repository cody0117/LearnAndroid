// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.gson;

import java.lang.reflect.Type;
import java.util.Collection;

// Referenced classes of package com.google.gson:
//            RecursiveFieldNamingPolicy

final class CamelCaseSeparatorNamingPolicy extends RecursiveFieldNamingPolicy
{

    private final String separatorString;

    public CamelCaseSeparatorNamingPolicy(String s)
    {
        com.google.gson.internal..Gson.Preconditions.checkNotNull(s);
        boolean flag;
        if (!"".equals(s))
        {
            flag = true;
        } else
        {
            flag = false;
        }
        com.google.gson.internal..Gson.Preconditions.checkArgument(flag);
        separatorString = s;
    }

    protected final String translateName(String s, Type type, Collection collection)
    {
        StringBuilder stringbuilder = new StringBuilder();
        for (int i = 0; i < s.length(); i++)
        {
            char c = s.charAt(i);
            if (Character.isUpperCase(c) && stringbuilder.length() != 0)
            {
                stringbuilder.append(separatorString);
            }
            stringbuilder.append(c);
        }

        return stringbuilder.toString();
    }
}
