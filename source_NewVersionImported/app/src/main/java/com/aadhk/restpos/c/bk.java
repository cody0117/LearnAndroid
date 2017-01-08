// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.c;

import android.content.Context;
import android.view.View;
import android.widget.Button;
import android.widget.ListView;
import android.widget.TextView;
import com.aadhk.product.library.b.e;
import com.aadhk.restpos.bean.ReportItem;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.aadhk.restpos.c:
//            bl

public final class bk extends e
    implements android.view.View.OnClickListener
{

    private Button f;
    private List g;
    private bl h;
    private ListView i;
    private String j;
    private int k;
    private double l;
    private int m;
    private int n;
    private int o;

    public bk(Context context, List list, String s, int i1)
    {
        super(context, 0x7f030050);
        g = list;
        j = s;
        i = (ListView)findViewById(0x7f0b0086);
        f = (Button)findViewById(0x7f0b00b3);
        f.setOnClickListener(this);
        ((TextView)findViewById(0x7f0b0111)).setText(j);
        h = new bl(this, e, g);
        i.setAdapter(h);
        m = i1;
        for (Iterator iterator = list.iterator(); iterator.hasNext();)
        {
            ReportItem reportitem = (ReportItem)iterator.next();
            k = k + reportitem.getCount();
            l = l + reportitem.getAmount();
        }

        if (i1 == 5)
        {
            a(1, l);
            return;
        } else
        {
            a(2, k);
            return;
        }
    }

    static int a(bk bk1)
    {
        return bk1.m;
    }

    private void a(int i1, double d)
    {
        if (!g.isEmpty())
        {
            Iterator iterator = g.iterator();
            while (iterator.hasNext()) 
            {
                ReportItem reportitem1 = (ReportItem)iterator.next();
                int j1;
                if (i1 == 1)
                {
                    j1 = (int)((100D * reportitem1.getAmount()) / d);
                } else
                {
                    j1 = (int)((double)(100 * reportitem1.getCount()) / d);
                }
                reportitem1.setPercentage(j1);
                n = j1 + n;
            }
            o = 100 - n;
            if (o > 0)
            {
                do
                {
                    Iterator iterator1 = g.iterator();
                    do
                    {
                        if (!iterator1.hasNext())
                        {
                            break;
                        }
                        ReportItem reportitem = (ReportItem)iterator1.next();
                        o = -1 + o;
                        reportitem.setPercentage(1 + reportitem.getPercentage());
                    } while (o != 0);
                } while (o > 0);
            }
        }
    }

    public final void onClick(View view)
    {
        if (view == f)
        {
            dismiss();
        }
    }
}
