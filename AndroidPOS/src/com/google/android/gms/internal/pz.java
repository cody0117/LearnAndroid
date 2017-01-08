// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.content.Context;
import android.os.IBinder;
import android.view.View;
import com.google.android.gms.a.f;
import com.google.android.gms.a.h;
import com.google.android.gms.a.i;

// Referenced classes of package com.google.android.gms.internal:
//            pq, pr

public final class pz extends h
{

    private static final pz a = new pz();

    private pz()
    {
        super("com.google.android.gms.common.ui.SignInButtonCreatorImpl");
    }

    public static View a(Context context, int j, int k)
    {
        return a.b(context, j, k);
    }

    private View b(Context context, int j, int k)
    {
        View view;
        try
        {
            com.google.android.gms.a.c c = f.a(context);
            view = (View)f.a(((pq)a(context)).a(c, j, k));
        }
        catch (Exception exception)
        {
            throw new i((new StringBuilder("Could not get button with size ")).append(j).append(" and color ").append(k).toString(), exception);
        }
        return view;
    }

    public final Object a(IBinder ibinder)
    {
        return pr.a(ibinder);
    }

}
