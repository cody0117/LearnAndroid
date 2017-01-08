// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.app.Activity;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListView;
import android.widget.TextView;
import com.aadhk.restpos.MgrModifierActivity;
import com.aadhk.restpos.b.k;
import java.util.List;

// Referenced classes of package com.aadhk.restpos.d:
//            bf, be

public final class bd extends Fragment
{

    private MgrModifierActivity a;
    private View b;
    private TextView c;
    private List d;
    private ListView e;
    private k f;
    private LayoutInflater g;
    private bf h;

    public bd()
    {
    }

    static List a(bd bd1)
    {
        return bd1.d;
    }

    static MgrModifierActivity b(bd bd1)
    {
        return bd1.a;
    }

    static LayoutInflater c(bd bd1)
    {
        return bd1.g;
    }

    public final void onActivityCreated(Bundle bundle)
    {
        super.onActivityCreated(bundle);
        f = new k(a.a());
        d = f.a();
        h = new bf(this, (byte)0);
        e.setAdapter(h);
        if (d.size() > 0)
        {
            c.setVisibility(8);
        } else
        {
            c.setVisibility(0);
        }
        e.setOnItemClickListener(new be(this, (byte)0));
    }

    public final void onAttach(Activity activity)
    {
        a = (MgrModifierActivity)activity;
        super.onAttach(activity);
    }

    public final void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        g = LayoutInflater.from(a);
    }

    public final View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        b = layoutinflater.inflate(0x7f030096, viewgroup, false);
        e = (ListView)b.findViewById(0x7f0b0086);
        c = (TextView)b.findViewById(0x7f0b012a);
        return b;
    }
}
