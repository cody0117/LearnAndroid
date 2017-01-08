// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.c;

import android.view.View;
import android.widget.ExpandableListView;

// Referenced classes of package com.aadhk.restpos.c:
//            bn

final class bo
    implements android.widget.ExpandableListView.OnGroupClickListener
{

    final bn a;

    bo(bn bn)
    {
        a = bn;
        super();
    }

    public final boolean onGroupClick(ExpandableListView expandablelistview, View view, int i, long l)
    {
        return true;
    }
}
