// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.gson;


public final class  extends Enum
{

    private static final .VALUES $VALUES[];
    public static final .VALUES LOWER;
    public static final .VALUES UPPER;

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(com/google/gson/ModifyFirstLetterNamingPolicy$LetterModifier, s);
    }

    public static final [] values()
    {
        return ([])$VALUES.clone();
    }

    static 
    {
        UPPER = new <init>("UPPER", 0);
        LOWER = new <init>("LOWER", 1);
        r_3B_.clone aclone[] = new <init>[2];
        aclone[0] = UPPER;
        aclone[1] = LOWER;
        $VALUES = aclone;
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
