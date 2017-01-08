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
import com.aadhk.restpos.f.j;
import java.util.List;

// Referenced classes of package com.aadhk.restpos.c:
//            ap, at, ar, as

final class aq extends BaseExpandableListAdapter
{

    final ap a;

    private aq(ap ap1)
    {
        a = ap1;
        super();
    }

    aq(ap ap1, byte byte0)
    {
        this(ap1);
    }

    public final Object getChild(int i, int k)
    {
        return ((ModifierGroup)ap.a(a).get(i)).getModifiers().get(k);
    }

    public final long getChildId(int i, int k)
    {
        return (long)k;
    }

    public final View getChildView(int i, int k, boolean flag, View view, ViewGroup viewgroup)
    {
        at at1;
        Modifier modifier;
        if (view == null)
        {
            view = ap.b(a).inflate(0x7f03009a, null);
            at1 = new at(this, (byte)0);
            at1.e = (TextView)view.findViewById(0x7f0b0144);
            at1.c = (TextView)view.findViewById(0x7f0b012c);
            at1.a = (LinearLayout)view.findViewById(0x7f0b0136);
            at1.d = (TextView)view.findViewById(0x7f0b00d3);
            view.setTag(at1);
        } else
        {
            at1 = (at)view.getTag();
        }
        modifier = (Modifier)((ModifierGroup)ap.a(a).get(i)).getModifiers().get(k);
        at1.c.setText(modifier.getName());
        at1.d.setText(j.a(ap.c(a), modifier.getPrice(), ap.d(a)));
        if (modifier.getType() == 2)
        {
            if (modifier.getQty() > 0)
            {
                at1.e.setText((new StringBuilder("-")).append(modifier.getQty()).toString());
            } else
            {
                at1.e.setText((new StringBuilder()).append(modifier.getQty()).toString());
            }
        } else
        if (modifier.getQty() > 0)
        {
            at1.e.setText((new StringBuilder("+")).append(modifier.getQty()).toString());
        } else
        {
            at1.e.setText((new StringBuilder()).append(modifier.getQty()).toString());
        }
        at1.e.setOnClickListener(new ar(this, modifier));
        at1.a.setOnClickListener(new as(this, modifier, at1));
        return view;
    }

    public final int getChildrenCount(int i)
    {
        return ((ModifierGroup)ap.a(a).get(i)).getModifiers().size();
    }

    public final Object getGroup(int i)
    {
        return ap.a(a).get(i);
    }

    public final int getGroupCount()
    {
        return ap.a(a).size();
    }

    public final long getGroupId(int i)
    {
        return (long)i;
    }

    public final View getGroupView(int i, boolean flag, View view, ViewGroup viewgroup)
    {
        at at1;
        if (view == null)
        {
            view = ap.b(a).inflate(0x7f03005e, null);
            at at2 = new at(this, (byte)0);
            at2.b = (TextView)view.findViewById(0x7f0b012c);
            view.setTag(at2);
            at1 = at2;
        } else
        {
            at1 = (at)view.getTag();
        }
        at1.b.setText(((ModifierGroup)ap.a(a).get(i)).getName());
        return view;
    }

    public final boolean hasStableIds()
    {
        return true;
    }

    public final boolean isChildSelectable(int i, int k)
    {
        return true;
    }
}
