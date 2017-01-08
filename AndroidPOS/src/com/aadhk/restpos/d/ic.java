// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.view.View;
import android.widget.ExpandableListView;
import com.aadhk.restpos.ReservationActivity;
import com.aadhk.restpos.bean.Reservation;
import java.util.List;
import java.util.Map;

// Referenced classes of package com.aadhk.restpos.d:
//            ia

final class ic
    implements android.widget.ExpandableListView.OnChildClickListener
{

    final ia a;

    ic(ia ia1)
    {
        a = ia1;
        super();
    }

    public final boolean onChildClick(ExpandableListView expandablelistview, View view, int i, int j, long l)
    {
        ia.c(a).a((Reservation)((List)ia.b(a).get(ia.a(a).get(i))).get(j));
        return true;
    }
}
