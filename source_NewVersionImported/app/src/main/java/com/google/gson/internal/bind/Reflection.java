// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.gson.internal.bind;

import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;

final class Reflection
{

    Reflection()
    {
    }

    public static Type getRuntimeTypeIfMoreSpecific(Type type, Object obj)
    {
        if (obj != null && (type == java/lang/Object || (type instanceof TypeVariable) || (type instanceof Class)))
        {
            type = obj.getClass();
        }
        return type;
    }
}
