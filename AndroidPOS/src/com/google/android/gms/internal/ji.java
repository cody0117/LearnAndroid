// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.lang.reflect.Field;

public abstract class ji
    implements SafeParcelable
{

    private static final Object a = new Object();
    private static ClassLoader b = null;
    private static Integer c = null;
    private boolean d;

    public ji()
    {
        d = false;
    }

    protected static Integer B()
    {
        Integer integer;
        synchronized (a)
        {
            integer = c;
        }
        return integer;
    }

    private static ClassLoader a()
    {
        ClassLoader classloader;
        synchronized (a)
        {
            classloader = b;
        }
        return classloader;
    }

    private static boolean a(Class class1)
    {
        boolean flag;
        try
        {
            flag = "SAFE_PARCELABLE_NULL_STRING".equals(class1.getField("NULL").get(null));
        }
        catch (NoSuchFieldException nosuchfieldexception)
        {
            return false;
        }
        catch (IllegalAccessException illegalaccessexception)
        {
            return false;
        }
        return flag;
    }

    protected static boolean b(String s)
    {
        ClassLoader classloader = a();
        if (classloader == null)
        {
            return true;
        }
        boolean flag;
        try
        {
            flag = a(classloader.loadClass(s));
        }
        catch (Exception exception)
        {
            return false;
        }
        return flag;
    }

    protected final boolean C()
    {
        return d;
    }

}
