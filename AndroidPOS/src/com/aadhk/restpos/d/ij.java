// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.support.v4.app.FragmentActivity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.CheckBox;
import android.widget.TextView;
import com.aadhk.restpos.bean.RolePermission;
import java.util.List;

// Referenced classes of package com.aadhk.restpos.d:
//            ii, im, ik, il

final class ij extends BaseAdapter
{

    final ii a;
    private im b;

    private ij(ii ii1)
    {
        a = ii1;
        super();
    }

    ij(ii ii1, byte byte0)
    {
        this(ii1);
    }

    public final int getCount()
    {
        return ii.b(a).size();
    }

    public final Object getItem(int i)
    {
        return ii.b(a).get(i);
    }

    public final long getItemId(int i)
    {
        return (long)i;
    }

    public final View getView(int i, View view, ViewGroup viewgroup)
    {
        RolePermission rolepermission;
        if (view == null)
        {
            view = a.getActivity().getLayoutInflater().inflate(0x7f0300a0, null);
            b = new im(this, (byte)0);
            b.a = (TextView)view.findViewById(0x7f090273);
            b.b = (CheckBox)view.findViewById(0x7f090275);
            b.c = (CheckBox)view.findViewById(0x7f090277);
            view.setTag(b);
        } else
        {
            b = (im)view.getTag();
        }
        if (ii.a(a) == 1)
        {
            b.b.setEnabled(false);
            b.c.setEnabled(false);
        } else
        {
            b.b.setEnabled(true);
            b.c.setEnabled(true);
        }
        rolepermission = (RolePermission)getItem(i);
        b.a.setText(ii.a(a, rolepermission.getFunction()));
        b.b.setChecked(rolepermission.isShow());
        b.c.setChecked(rolepermission.isManagerPermission());
        b.b.setOnClickListener(new ik(this, rolepermission));
        b.c.setOnClickListener(new il(this, rolepermission));
        return view;
    }
}
