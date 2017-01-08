// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.os.AsyncTask;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ListView;
import android.widget.TextView;
import com.aadhk.product.library.a.d;
import com.aadhk.restpos.MgrItemActivity;
import com.aadhk.restpos.a.ap;
import com.aadhk.restpos.bean.Category;
import com.aadhk.restpos.bean.Item;
import java.util.List;
import java.util.Map;

// Referenced classes of package com.aadhk.restpos.d:
//            cs

public final class cr extends Fragment
    implements android.widget.AdapterView.OnItemClickListener
{

    private View a;
    private ListView b;
    private TextView c;
    private List d;

    public cr()
    {
    }

    static cr a(Category category)
    {
        cr cr1 = new cr();
        cr1.d = category.getItemList();
        return cr1;
    }

    public final void a(Map map)
    {
        (new d(new cs(this, map), getActivity(), (byte)0)).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null);
    }

    public final View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        a = layoutinflater.inflate(0x7f0300be, viewgroup, false);
        b = (ListView)a.findViewById(0x7f0900a4);
        c = (TextView)a.findViewById(0x7f09016e);
        if (d.size() > 0)
        {
            b.setAdapter(new ap(getActivity(), this, d));
            b.setOnItemClickListener(this);
            b.setVisibility(0);
            c.setVisibility(8);
        } else
        {
            b.setVisibility(8);
            c.setVisibility(0);
        }
        return a;
    }

    public final void onItemClick(AdapterView adapterview, View view, int i, long l)
    {
        ((MgrItemActivity)getActivity()).a((Item)d.get(i));
    }
}
