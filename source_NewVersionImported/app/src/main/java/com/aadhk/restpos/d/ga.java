// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.app.Activity;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ListView;
import com.aadhk.restpos.UserPermissionActivity;
import com.aadhk.restpos.b.t;
import java.util.List;

// Referenced classes of package com.aadhk.restpos.d:
//            gb

public final class ga extends Fragment
    implements android.view.View.OnClickListener
{

    private UserPermissionActivity a;
    private View b;
    private Button c;
    private t d;
    private String e[];
    private String f[];
    private ListView g;
    private List h;
    private int i;

    public ga()
    {
        i = 1;
    }

    static int a(ga ga1)
    {
        return ga1.i;
    }

    static String a(ga ga1, int j)
    {
        for (int k = 0; k < ga1.f.length; k++)
        {
            if (Integer.parseInt(ga1.f[k]) == j)
            {
                return ga1.e[k];
            }
        }

        return "";
    }

    static List b(ga ga1)
    {
        return ga1.h;
    }

    public final void onActivityCreated(Bundle bundle)
    {
        super.onActivityCreated(bundle);
        d = new t(a.a());
        h = d.a(i);
        g.setAdapter(new gb(this, (byte)0));
    }

    public final void onAttach(Activity activity)
    {
        a = (UserPermissionActivity)activity;
        super.onAttach(activity);
    }

    public final void onClick(View view)
    {
        if (view == c)
        {
            d.a(h);
            a.b();
        }
    }

    public final void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        Bundle bundle1 = getArguments();
        if (bundle1 != null)
        {
            i = bundle1.getInt("bundlePermission");
        }
        e = getResources().getStringArray(0x7f07000b);
        f = getResources().getStringArray(0x7f07000c);
    }

    public final View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        b = layoutinflater.inflate(0x7f03008e, viewgroup, false);
        g = (ListView)b.findViewById(0x7f0b0229);
        c = (Button)b.findViewById(0x7f0b022a);
        c.setOnClickListener(this);
        return b;
    }
}
