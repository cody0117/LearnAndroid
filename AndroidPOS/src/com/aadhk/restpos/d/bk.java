// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.app.Activity;
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
import com.aadhk.restpos.KitchenNoteActivity;
import com.aadhk.restpos.a.ae;
import com.aadhk.restpos.bean.KitchenNote;
import com.aadhk.restpos.g.g;
import java.util.List;

// Referenced classes of package com.aadhk.restpos.d:
//            bl

public final class bk extends Fragment
    implements android.widget.AdapterView.OnItemClickListener
{

    private KitchenNoteActivity a;
    private View b;
    private ListView c;
    private TextView d;
    private List e;
    private g f;

    public bk()
    {
    }

    static g a(bk bk1)
    {
        return bk1.f;
    }

    static List a(bk bk1, List list)
    {
        bk1.e = list;
        return list;
    }

    private void a()
    {
        if (e.size() > 0)
        {
            d.setVisibility(8);
            c.setVisibility(0);
            c.setAdapter(new ae(a, e));
            return;
        } else
        {
            d.setVisibility(0);
            c.setVisibility(8);
            return;
        }
    }

    static void b(bk bk1)
    {
        bk1.a();
    }

    static KitchenNoteActivity c(bk bk1)
    {
        return bk1.a;
    }

    public final void a(List list)
    {
        e = list;
        a();
    }

    public final void onActivityCreated(Bundle bundle)
    {
        super.onActivityCreated(bundle);
        f = a.b();
        (new d(new bl(this, (byte)0), a, (byte)0)).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null);
    }

    public final void onAttach(Activity activity)
    {
        super.onAttach(activity);
        a = (KitchenNoteActivity)activity;
    }

    public final void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
    }

    public final View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        b = layoutinflater.inflate(0x7f0300b3, viewgroup, false);
        d = (TextView)b.findViewById(0x7f09016e);
        c = (ListView)b.findViewById(0x7f0900a4);
        c.setOnItemClickListener(this);
        return b;
    }

    public final void onItemClick(AdapterView adapterview, View view, int i, long l)
    {
        a.a((KitchenNote)e.get(i));
    }
}
