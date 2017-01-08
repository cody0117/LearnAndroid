// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.view.ViewGroup;

// Referenced classes of package com.google.android.gms.internal:
//            mg, fl

final class fn
{

    public final int a;
    public final android.view.ViewGroup.LayoutParams b;
    public final ViewGroup c;

    public fn(mg mg1)
    {
        b = mg1.getLayoutParams();
        android.view.ViewParent viewparent = mg1.getParent();
        if (viewparent instanceof ViewGroup)
        {
            c = (ViewGroup)viewparent;
            a = c.indexOfChild(mg1);
            c.removeView(mg1);
            mg1.a(true);
            return;
        } else
        {
            throw new fl("Could not get the parent of the WebView for an overlay.");
        }
    }
}
