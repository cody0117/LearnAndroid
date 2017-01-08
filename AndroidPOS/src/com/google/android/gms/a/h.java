// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.a;

import android.content.Context;
import android.os.IBinder;
import com.google.android.gms.common.f;
import com.google.android.gms.internal.px;

// Referenced classes of package com.google.android.gms.a:
//            i

public abstract class h
{

    private final String a;
    private Object b;

    protected h(String s)
    {
        a = s;
    }

    protected final Object a(Context context)
    {
        if (b == null)
        {
            px.a(context);
            Context context1 = f.d(context);
            if (context1 == null)
            {
                throw new i("Could not get remote context.");
            }
            ClassLoader classloader = context1.getClassLoader();
            try
            {
                b = a((IBinder)classloader.loadClass(a).newInstance());
            }
            catch (ClassNotFoundException classnotfoundexception)
            {
                throw new i("Could not load creator class.", classnotfoundexception);
            }
            catch (InstantiationException instantiationexception)
            {
                throw new i("Could not instantiate creator.", instantiationexception);
            }
            catch (IllegalAccessException illegalaccessexception)
            {
                throw new i("Could not access creator.", illegalaccessexception);
            }
        }
        return b;
    }

    protected abstract Object a(IBinder ibinder);
}
