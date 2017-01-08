// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.content.Context;
import android.view.MotionEvent;
import android.widget.RelativeLayout;

// Referenced classes of package com.google.android.gms.internal:
//            lv

final class fm extends RelativeLayout
{

    private final lv a;

    public fm(Context context, String s)
    {
        super(context);
        a = new lv(context, s);
    }

    public final boolean onInterceptTouchEvent(MotionEvent motionevent)
    {
        a.a(motionevent);
        return false;
    }
}
