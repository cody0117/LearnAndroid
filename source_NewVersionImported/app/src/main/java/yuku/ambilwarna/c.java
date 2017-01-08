// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package yuku.ambilwarna;

import android.view.View;
import android.view.ViewTreeObserver;

// Referenced classes of package yuku.ambilwarna:
//            a

final class c
    implements android.view.ViewTreeObserver.OnGlobalLayoutListener
{

    final a a;

    c(a a1)
    {
        a = a1;
        super();
    }

    public final void onGlobalLayout()
    {
        a.a();
        a.b();
        if (android.os.Build.VERSION.SDK_INT > 15)
        {
            yuku.ambilwarna.a.h(a).getViewTreeObserver().removeOnGlobalLayoutListener(this);
            return;
        } else
        {
            yuku.ambilwarna.a.h(a).getViewTreeObserver().removeGlobalOnLayoutListener(this);
            return;
        }
    }
}
