// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ListView;
import android.widget.TextView;
import com.aadhk.restpos.MgrItemActivity;
import com.aadhk.restpos.a.ak;
import com.aadhk.restpos.b.i;
import com.aadhk.restpos.bean.Item;
import java.util.List;

// Referenced classes of package com.aadhk.restpos.d:
//            ag

public final class ap extends Fragment
    implements android.widget.AdapterView.OnItemClickListener
{

    private long a;
    private View b;
    private ListView c;
    private TextView d;
    private List e;

    public ap()
    {
    }

    static ap a(long l)
    {
        ap ap1 = new ap();
        ap1.a = l;
        return ap1;
    }

    public final View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        b = layoutinflater.inflate(0x7f0300a0, viewgroup, false);
        c = (ListView)b.findViewById(0x7f0b0086);
        d = (TextView)b.findViewById(0x7f0b012a);
        e = ag.a().c(a);
        if (e.size() > 0)
        {
            c.setAdapter(new ak(getActivity(), e));
            c.setOnItemClickListener(this);
            c.setVisibility(0);
            d.setVisibility(8);
        } else
        {
            c.setVisibility(8);
            d.setVisibility(0);
        }
        return b;
    }

    public final void onItemClick(AdapterView adapterview, View view, int j, long l)
    {
        ((MgrItemActivity)getActivity()).c((Item)e.get(j));
    }
}
