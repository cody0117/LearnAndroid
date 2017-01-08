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
import android.widget.ListView;
import android.widget.TextView;
import com.aadhk.product.library.a.d;
import com.aadhk.restpos.MgrModifierActivity;
import com.aadhk.restpos.g.l;
import java.util.List;

// Referenced classes of package com.aadhk.restpos.d:
//            do, dq, dn

public final class dm extends Fragment
{

    private MgrModifierActivity a;
    private View b;
    private TextView c;
    private List d;
    private ListView e;
    private LayoutInflater f;
    private do g;
    private l h;

    public dm()
    {
    }

    static l a(dm dm1)
    {
        return dm1.h;
    }

    static List a(dm dm1, List list)
    {
        dm1.d = list;
        return list;
    }

    private void a()
    {
        g = new do(this, (byte)0);
        e.setAdapter(g);
        if (d.size() > 0)
        {
            c.setVisibility(8);
            return;
        } else
        {
            c.setVisibility(0);
            return;
        }
    }

    static void b(dm dm1)
    {
        dm1.a();
    }

    static MgrModifierActivity c(dm dm1)
    {
        return dm1.a;
    }

    static List d(dm dm1)
    {
        return dm1.d;
    }

    static LayoutInflater e(dm dm1)
    {
        return dm1.f;
    }

    public final void a(List list)
    {
        d = list;
        a();
    }

    public final void onActivityCreated(Bundle bundle)
    {
        super.onActivityCreated(bundle);
        h = a.a();
        (new d(new dq(this, (byte)0), a, (byte)0)).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null);
        e.setOnItemClickListener(new dn(this, (byte)0));
    }

    public final void onAttach(Activity activity)
    {
        a = (MgrModifierActivity)activity;
        super.onAttach(activity);
    }

    public final void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        f = LayoutInflater.from(a);
    }

    public final View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        b = layoutinflater.inflate(0x7f0300b3, viewgroup, false);
        e = (ListView)b.findViewById(0x7f0900a4);
        c = (TextView)b.findViewById(0x7f09016e);
        return b;
    }
}
