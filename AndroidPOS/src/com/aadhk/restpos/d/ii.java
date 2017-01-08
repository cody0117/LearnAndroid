// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.app.Activity;
import android.content.res.Resources;
import android.os.AsyncTask;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ListView;
import com.aadhk.product.library.a.d;
import com.aadhk.product.library.c.h;
import com.aadhk.restpos.RolePermissionActivity;
import com.aadhk.restpos.g.y;
import java.util.List;

// Referenced classes of package com.aadhk.restpos.d:
//            in, io

public final class ii extends Fragment
    implements android.view.View.OnClickListener
{

    private RolePermissionActivity a;
    private View b;
    private Button c;
    private String d[];
    private String e[];
    private ListView f;
    private List g;
    private y h;
    private int i;

    public ii()
    {
        i = 1;
    }

    static int a(ii ii1)
    {
        return ii1.i;
    }

    static String a(ii ii1, int j)
    {
        for (int k = 0; k < ii1.e.length; k++)
        {
            if (com.aadhk.product.library.c.h.e(ii1.e[k]) == j)
            {
                return ii1.d[k];
            }
        }

        return "";
    }

    static List a(ii ii1, List list)
    {
        ii1.g = list;
        return list;
    }

    static List b(ii ii1)
    {
        return ii1.g;
    }

    static y c(ii ii1)
    {
        return ii1.h;
    }

    static ListView d(ii ii1)
    {
        return ii1.f;
    }

    static RolePermissionActivity e(ii ii1)
    {
        return ii1.a;
    }

    public final void onActivityCreated(Bundle bundle)
    {
        super.onActivityCreated(bundle);
        h = a.a();
        (new d(new in(this, (byte)0), a, (byte)0)).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null);
    }

    public final void onAttach(Activity activity)
    {
        a = (RolePermissionActivity)activity;
        super.onAttach(activity);
    }

    public final void onClick(View view)
    {
        if (view == c)
        {
            (new d(new io(this, (byte)0), a, (byte)0)).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null);
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
        d = getResources().getStringArray(0x7f0e000b);
        e = getResources().getStringArray(0x7f0e000c);
    }

    public final View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        b = layoutinflater.inflate(0x7f03009f, viewgroup, false);
        f = (ListView)b.findViewById(0x7f090271);
        c = (Button)b.findViewById(0x7f090272);
        c.setOnClickListener(this);
        return b;
    }
}
