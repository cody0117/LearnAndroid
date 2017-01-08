// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.view.MotionEvent;
import android.view.View;

// Referenced classes of package com.google.android.gms.internal:
//            tz, ts

final class tu
    implements android.view.View.OnTouchListener
{

    final tz a;
    final ts b;

    tu(ts ts, tz tz1)
    {
        b = ts;
        a = tz1;
        super();
    }

    public final boolean onTouch(View view, MotionEvent motionevent)
    {
        a.a();
        return false;
    }
}
