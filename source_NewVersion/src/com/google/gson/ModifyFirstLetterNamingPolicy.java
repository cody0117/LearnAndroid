// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.gson;

import java.lang.reflect.Type;
import java.util.Collection;

// Referenced classes of package com.google.gson:
//            RecursiveFieldNamingPolicy

final class ModifyFirstLetterNamingPolicy extends RecursiveFieldNamingPolicy
{

    private final LetterModifier letterModifier;

    ModifyFirstLetterNamingPolicy(LetterModifier lettermodifier)
    {
        letterModifier = (LetterModifier)com.google.gson.internal..Gson.Preconditions.checkNotNull(lettermodifier);
    }

    private String modifyString(char c, String s, int i)
    {
        if (i < s.length())
        {
            return (new StringBuilder()).append(c).append(s.substring(i)).toString();
        } else
        {
            return String.valueOf(c);
        }
    }

    protected final String translateName(String s, Type type, Collection collection)
    {
        StringBuilder stringbuilder = new StringBuilder();
        char c = s.charAt(0);
        int i;
        for (i = 0; i < -1 + s.length() && !Character.isLetter(c); c = s.charAt(i))
        {
            stringbuilder.append(c);
            i++;
        }

        if (i == s.length())
        {
            s = stringbuilder.toString();
        } else
        {
            LetterModifier lettermodifier = letterModifier;
            LetterModifier lettermodifier1 = LetterModifier.UPPER;
            boolean flag = false;
            if (lettermodifier == lettermodifier1)
            {
                flag = true;
            }
            if (flag && !Character.isUpperCase(c))
            {
                return stringbuilder.append(modifyString(Character.toUpperCase(c), s, i + 1)).toString();
            }
            if (!flag && Character.isUpperCase(c))
            {
                return stringbuilder.append(modifyString(Character.toLowerCase(c), s, i + 1)).toString();
            }
        }
        return s;
    }

    private class LetterModifier extends Enum
    {

        private static final LetterModifier $VALUES[];
        public static final LetterModifier LOWER;
        public static final LetterModifier UPPER;

        public static LetterModifier valueOf(String s)
        {
            return (LetterModifier)Enum.valueOf(com/google/gson/ModifyFirstLetterNamingPolicy$LetterModifier, s);
        }

        public static final LetterModifier[] values()
        {
            return (LetterModifier[])$VALUES.clone();
        }

        static 
        {
            UPPER = new LetterModifier("UPPER", 0);
            LOWER = new LetterModifier("LOWER", 1);
            LetterModifier alettermodifier[] = new LetterModifier[2];
            alettermodifier[0] = UPPER;
            alettermodifier[1] = LOWER;
            $VALUES = alettermodifier;
        }

        private LetterModifier(String s, int i)
        {
            super(s, i);
        }
    }

}
