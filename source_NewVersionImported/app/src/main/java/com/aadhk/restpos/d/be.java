// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.view.View;
import android.widget.AdapterView;
import com.aadhk.restpos.MgrModifierActivity;
import com.aadhk.restpos.bean.ModifierGroup;
import java.util.List;

// Referenced classes of package com.aadhk.restpos.d:
//            bd

final class be
    implements android.widget.AdapterView.OnItemClickListener
{

    final bd a;

    private be(bd bd1)
    {
        a = bd1;
        super();
    }

    be(bd bd1, byte byte0)
    {
        this(bd1);
    }

    public final void onItemClick(AdapterView adapterview, View view, int i, long l)
    {
        bd.b(a).a((ModifierGroup)bd.a(a).get(i));
    }
}
