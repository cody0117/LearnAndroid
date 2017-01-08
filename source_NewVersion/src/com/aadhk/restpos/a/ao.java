// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.a;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import com.aadhk.restpos.bean.Note;
import java.util.List;

// Referenced classes of package com.aadhk.restpos.a:
//            ap

public final class ao extends BaseAdapter
{

    private List a;
    private LayoutInflater b;

    public ao(Context context, List list)
    {
        a = list;
        b = LayoutInflater.from(context);
    }

    public final int getCount()
    {
        return a.size();
    }

    public final Object getItem(int i)
    {
        return a.get(i);
    }

    public final long getItemId(int i)
    {
        return (long)i;
    }

    public final View getView(int i, View view, ViewGroup viewgroup)
    {
        ap ap1;
        Note note;
        if (view == null)
        {
            view = b.inflate(0x7f030098, null);
            ap1 = new ap(this, (byte)0);
            ap1.a = (TextView)view.findViewById(0x7f0b011f);
            view.setTag(ap1);
        } else
        {
            ap1 = (ap)view.getTag();
        }
        note = (Note)getItem(i);
        ap1.a.setText(note.getName());
        return view;
    }
}
