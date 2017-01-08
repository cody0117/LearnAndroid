// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.e;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.text.TextUtils;
import com.aadhk.restpos.bean.POSPrinterSetting;
import com.aadhk.restpos.bean.Report;
import com.aadhk.restpos.bean.ReportItem;
import com.aadhk.restpos.f.i;
import com.aadhk.restpos.f.j;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.aadhk.restpos.e:
//            b

public final class d extends b
{

    private Context D;
    private List E;
    private String F;
    private String G;
    private String H;
    private String I;
    private String J;

    private d(Context context, POSPrinterSetting posprintersetting, List list, String s, String s1, String s2, String s3, 
            String s4)
    {
        D = context;
        E = list;
        F = s4;
        G = s1;
        H = s2;
        I = s3;
        J = s;
        a(context, posprintersetting);
    }

    public static Bitmap a(Context context, POSPrinterSetting posprintersetting, List list, String s, String s1, String s2, String s3, String s4)
    {
        return (new d(context, posprintersetting, list, s, s1, s2, s3, s4)).b.e();
    }

    protected final void a()
    {
        s = s + g;
    }

    public final void b()
    {
        this.s = this.s + e;
        c.drawText(J, v, this.s, l);
        l.setTextSize(d);
        if (!TextUtils.isEmpty(G))
        {
            this.s = this.s + e;
            c.drawText((new StringBuilder()).append(a.getString(0x7f0901bb)).append(" ").append(i.c(G, B)).toString(), v, this.s, l);
        }
        if (!TextUtils.isEmpty(H))
        {
            this.s = this.s + e;
            c.drawText((new StringBuilder()).append(a.getString(0x7f0901bc)).append(" ").append(i.c(H, B)).toString(), v, this.s, l);
        }
        l.setTextSize(4 + d);
        Iterator iterator = E.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            Report report = (Report)iterator.next();
            this.s = this.s + e;
            c.drawLine(t, 6 + (this.s - e / 2), u, 6 + (this.s - e / 2), n);
            if (!TextUtils.isEmpty(report.getName()))
            {
                this.s = this.s + e;
                c.drawText(report.getName(), v, this.s, l);
            }
            Iterator iterator1 = report.getReportItems().iterator();
            while (iterator1.hasNext()) 
            {
                ReportItem reportitem = (ReportItem)iterator1.next();
                this.s = this.s + e;
                c.drawText(reportitem.getName(), t, this.s, k);
                String s1;
                if (report.getId() == 12)
                {
                    s1 = (new StringBuilder()).append(reportitem.getPercentage()).append("% ").append(j.a(A, reportitem.getAmount(), z)).toString();
                } else
                if (report.getId() == 13)
                {
                    s1 = (new StringBuilder()).append(reportitem.getPercentage()).append("% ").append(reportitem.getCount()).toString();
                } else
                if (report.getId() == 14)
                {
                    if (reportitem.getId() == 1L)
                    {
                        s1 = (new StringBuilder()).append(reportitem.getCount()).toString();
                    } else
                    {
                        s1 = j.a(A, reportitem.getAmount(), z);
                    }
                } else
                {
                    String s = j.a(A, reportitem.getAmount(), z);
                    if (report.getId() != 10 && report.getId() != 11)
                    {
                        s1 = (new StringBuilder()).append(reportitem.getCount()).append(" ").append(s).toString();
                    } else
                    {
                        s1 = s;
                    }
                }
                c.drawText(s1, u, this.s, m);
            }
            if (report.getReportItems().isEmpty())
            {
                l.setTextSize(d);
                this.s = this.s + e;
                c.drawText(a.getString(0x7f090054), v, this.s, l);
            }
        } while (true);
        this.s = this.s + e;
        c.drawLine(t, 6 + (this.s - e / 2), u, 6 + (this.s - e / 2), n);
        this.s = this.s + e;
        l.setTextSize(d);
        c.drawText((new StringBuilder()).append(a.getString(0x7f0901ba)).append(" ").append(i.c(I, B)).toString(), v, this.s, l);
        if (!TextUtils.isEmpty(F))
        {
            this.s = this.s + e;
            c.drawText((new StringBuilder()).append(a.getString(0x7f0901c3)).append(" ").append(F).toString(), v, this.s, l);
        }
    }

    protected final void c()
    {
        s = s + h;
    }

    protected final void d()
    {
        int k = 0 + 3 * e + g + h;
        if (!TextUtils.isEmpty(G))
        {
            k += e;
        }
        if (!TextUtils.isEmpty(H))
        {
            k += e;
        }
        if (!TextUtils.isEmpty(F))
        {
            k += e;
        }
        Iterator iterator = E.iterator();
        int l = k;
        while (iterator.hasNext()) 
        {
            Report report = (Report)iterator.next();
            int i1 = l + e;
            if (!TextUtils.isEmpty(report.getName()))
            {
                i1 += e;
            }
            int j1 = i1 + e * report.getReportItems().size();
            int k1;
            if (report.getReportItems().isEmpty())
            {
                k1 = j1 + e;
            } else
            {
                k1 = j1;
            }
            l = k1;
        }
        b = Bitmap.createBitmap(r, l, android.graphics.Bitmap.Config.ARGB_8888);
        c = new Canvas(b);
        c.drawColor(-1);
    }

    public final volatile Bitmap e()
    {
        return super.e();
    }
}
