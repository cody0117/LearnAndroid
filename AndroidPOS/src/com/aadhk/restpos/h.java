// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos;

import android.view.View;
import android.widget.AdapterView;
import android.widget.TextView;

// Referenced classes of package com.aadhk.restpos:
//            DeliveryActivity

final class h
    implements android.widget.AdapterView.OnItemClickListener
{

    final DeliveryActivity a;

    h(DeliveryActivity deliveryactivity)
    {
        a = deliveryactivity;
        super();
    }

    public final void onItemClick(AdapterView adapterview, View view, int i, long l)
    {
        TextView textview = (TextView)view.findViewById(0x1020014);
        DeliveryActivity.a(a, textview.getText().toString());
    }
}
