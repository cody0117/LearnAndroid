// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.a;

import android.content.ClipData;
import android.view.View;

// Referenced classes of package com.aadhk.restpos.a:
//            an, al

final class am
    implements android.view.View.OnLongClickListener
{

    final al a;

    am(al al)
    {
        a = al;
        super();
    }

    public final boolean onLongClick(View view)
    {
        android.content.ClipData.Item item = new android.content.ClipData.Item((CharSequence)view.getTag());
        return view.startDrag(new ClipData((CharSequence)view.getTag(), new String[] {
            "text/plain"
        }, item), new an(view), null, 0);
    }
}
