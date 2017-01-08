// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.c;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseExpandableListAdapter;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.aadhk.restpos.bean.Modifier;
import com.aadhk.restpos.bean.ModifierGroup;
import com.aadhk.restpos.util.p;
import java.util.List;

// Referenced classes of package com.aadhk.restpos.c:
//            bf, bk, bi, bj

final class bh extends BaseExpandableListAdapter
{

    final bf a;

    private bh(bf bf1)
    {
        a = bf1;
        super();
    }

    bh(bf bf1, byte byte0)
    {
        this(bf1);
    }

    public final Object getChild(int i, int j)
    {
        return ((ModifierGroup)bf.a(a).get(i)).getModifiers().get(j);
    }

    public final long getChildId(int i, int j)
    {
        return (long)j;
    }

    public final View getChildView(int i, int j, boolean flag, View view, ViewGroup viewgroup)
    {
        bk bk1;
        Modifier modifier;
        if (view == null)
        {
            view = bf.b(a).inflate(0x7f0300b8, null);
            bk1 = new bk(this, (byte)0);
            bk1.e = (TextView)view.findViewById(0x7f09018a);
            bk1.c = (TextView)view.findViewById(0x7f090171);
            bk1.a = (LinearLayout)view.findViewById(0x7f09017b);
            bk1.d = (TextView)view.findViewById(0x7f0900f3);
            view.setTag(bk1);
        } else
        {
            bk1 = (bk)view.getTag();
        }
        modifier = (Modifier)((ModifierGroup)bf.a(a).get(i)).getModifiers().get(j);
        bk1.c.setText(modifier.getName());
        bk1.d.setText(p.a(bf.c(a), modifier.getPrice(), bf.d(a)));
        if (modifier.getType() == 2)
        {
            if (modifier.getQty() > 0)
            {
                bk1.e.setText((new StringBuilder("-")).append(modifier.getQty()).toString());
            } else
            {
                bk1.e.setText((new StringBuilder()).append(modifier.getQty()).toString());
            }
        } else
        if (modifier.getQty() > 0)
        {
            bk1.e.setText((new StringBuilder("+")).append(modifier.getQty()).toString());
        } else
        {
            bk1.e.setText((new StringBuilder()).append(modifier.getQty()).toString());
        }
        bk1.e.setOnClickListener(new bi(this, modifier));
        bk1.a.setOnClickListener(new bj(this, modifier, bk1));
        return view;
    }

    public final int getChildrenCount(int i)
    {
        return ((ModifierGroup)bf.a(a).get(i)).getModifiers().size();
    }

    public final Object getGroup(int i)
    {
        return bf.a(a).get(i);
    }

    public final int getGroupCount()
    {
        return bf.a(a).size();
    }

    public final long getGroupId(int i)
    {
        return (long)i;
    }

    public final View getGroupView(int i, boolean flag, View view, ViewGroup viewgroup)
    {
        bk bk1;
        if (view == null)
        {
            view = bf.b(a).inflate(0x7f030073, null);
            bk bk2 = new bk(this, (byte)0);
            bk2.b = (TextView)view.findViewById(0x7f090171);
            view.setTag(bk2);
            bk1 = bk2;
        } else
        {
            bk1 = (bk)view.getTag();
        }
        bk1.b.setText(((ModifierGroup)bf.a(a).get(i)).getName());
        return view;
    }

    public final boolean hasStableIds()
    {
        return true;
    }

    public final boolean isChildSelectable(int i, int j)
    {
        return true;
    }
}
