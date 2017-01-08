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
import android.widget.Button;
import android.widget.ListView;
import android.widget.TextView;
import com.aadhk.restpos.MgrItemActivity;
import com.aadhk.restpos.b.k;
import com.aadhk.restpos.bean.Item;
import com.aadhk.restpos.bean.ModifierGroup;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.aadhk.restpos.d:
//            ar, at

public final class aq extends Fragment
    implements android.view.View.OnClickListener
{

    private MgrItemActivity a;
    private View b;
    private Button c;
    private TextView d;
    private List e;
    private List f;
    private ListView g;
    private k h;
    private LayoutInflater i;
    private ar j;
    private Item k;

    public aq()
    {
    }

    static List a(aq aq1)
    {
        return aq1.e;
    }

    static List b(aq aq1)
    {
        return aq1.f;
    }

    static Item c(aq aq1)
    {
        return aq1.k;
    }

    static MgrItemActivity d(aq aq1)
    {
        return aq1.a;
    }

    static LayoutInflater e(aq aq1)
    {
        return aq1.i;
    }

    public final void onActivityCreated(Bundle bundle)
    {
        super.onActivityCreated(bundle);
        h = new k(a.a());
        e = h.a();
        f = new ArrayList();
        j = new ar(this, (byte)0);
        g.setAdapter(j);
        if (e.size() > 0)
        {
            d.setVisibility(8);
        } else
        {
            d.setVisibility(0);
        }
        g.setOnItemClickListener(new at(this, (byte)0));
        if (k != null)
        {
            String s = k.getModifierGroupIds();
            if (s != null && !"".equals(s))
            {
                String as[] = s.split("\\,");
                for (Iterator iterator = e.iterator(); iterator.hasNext();)
                {
                    ModifierGroup modifiergroup = (ModifierGroup)iterator.next();
                    int l = 0;
                    while (l < as.length) 
                    {
                        if ((long)Integer.parseInt(as[l].trim()) == modifiergroup.getId())
                        {
                            f.add(modifiergroup);
                        }
                        l++;
                    }
                }

            }
        }
    }

    public final void onAttach(Activity activity)
    {
        a = (MgrItemActivity)activity;
        super.onAttach(activity);
    }

    public final void onClick(View view)
    {
label0:
        {
            if (view.getId() == 0x7f0b0056)
            {
                if (k != null)
                {
                    break label0;
                }
                a.b(f);
            }
            return;
        }
        a.a(k);
    }

    public final void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        a.setTitle(0x7f090266);
        i = LayoutInflater.from(a);
        Bundle bundle1 = getArguments();
        if (bundle1 != null)
        {
            k = (Item)bundle1.getParcelable("bundleItem");
        }
    }

    public final View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        b = layoutinflater.inflate(0x7f030066, viewgroup, false);
        g = (ListView)b.findViewById(0x7f0b0086);
        d = (TextView)b.findViewById(0x7f0b012a);
        c = (Button)b.findViewById(0x7f0b0056);
        c.setOnClickListener(this);
        if (k == null)
        {
            c.setVisibility(0);
        } else
        if (!a.b())
        {
            c.setVisibility(0);
        } else
        {
            c.setVisibility(8);
        }
        return b;
    }
}
