// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.product.library.b;

import android.app.Dialog;
import android.content.Context;
import android.view.LayoutInflater;
import android.widget.ProgressBar;
import com.aadhk.product.library.c;
import com.aadhk.product.library.e;

public final class n extends Dialog
{

    private n(Context context)
    {
        super(context, e.a);
    }

    public static n a(Context context, boolean flag, android.content.DialogInterface.OnCancelListener oncancellistener)
    {
        n n1 = new n(context);
        n1.setTitle(null);
        n1.setCancelable(flag);
        n1.setOnCancelListener(oncancellistener);
        n1.addContentView((ProgressBar)LayoutInflater.from(context).inflate(c.a, null), new android.view.ViewGroup.LayoutParams(-2, -2));
        n1.show();
        return n1;
    }
}
