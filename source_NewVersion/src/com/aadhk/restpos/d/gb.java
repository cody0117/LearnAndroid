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
//            ga, ge, gc, gd

final class gb extends BaseAdapter
{

    final ga a;
    private ge b;

    private gb(ga ga1)
    {
        a = ga1;
        super();
    }

    gb(ga ga1, byte byte0)
    {
        this(ga1);
    }

    public final int getCount()
    {
        return ga.b(a).size();
    }

    public final Object getItem(int i)
    {
        return ga.b(a).get(i);
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
            view = a.getActivity().getLayoutInflater().inflate(0x7f03008f, null);
            b = new ge(this, (byte)0);
            b.a = (TextView)view.findViewById(0x7f0b022b);
            b.b = (CheckBox)view.findViewById(0x7f0b022d);
            b.c = (CheckBox)view.findViewById(0x7f0b022e);
            view.setTag(b);
        } else
        {
            b = (ge)view.getTag();
        }
        if (ga.a(a) == 1)
        {
            b.b.setEnabled(false);
            b.c.setEnabled(false);
        } else
        {
            b.b.setEnabled(true);
            b.c.setEnabled(true);
        }
        rolepermission = (RolePermission)getItem(i);
        b.a.setText(ga.a(a, rolepermission.getFunction()));
        b.b.setChecked(rolepermission.isShow());
        b.c.setChecked(rolepermission.isManagerPermission());
        b.b.setOnClickListener(new gc(this, rolepermission));
        b.c.setOnClickListener(new gd(this, rolepermission));
        return view;
    }
}
