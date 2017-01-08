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
import com.aadhk.restpos.util.o;
import com.aadhk.restpos.util.p;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.aadhk.restpos.e:
//            c

public final class e extends c
{

    private Context E;
    private List F;
    private String G;
    private String H;
    private String I;
    private String J;
    private String K;

    private e(Context context, POSPrinterSetting posprintersetting, List list, String s, String s1, String s2, String s3, 
            String s4)
    {
        E = context;
        F = list;
        G = s4;
        H = s1;
        I = s2;
        J = s3;
        K = s;
        a(context, posprintersetting);
    }

    public static Bitmap a(Context context, POSPrinterSetting posprintersetting, List list, String s, String s1, String s2, String s3, String s4)
    {
        return (new e(context, posprintersetting, list, s, s1, s2, s3, s4)).c.e();
    }

    protected final void a()
    {
        s = s + g;
    }

    public final void b()
    {
        this.s = this.s + e;
        c.drawText(K, v, this.s, l);
        l.setTextSize(d);
        if (!TextUtils.isEmpty(H))
        {
            this.s = this.s + e;
            c.drawText((new StringBuilder()).append(a.getString(0x7f0801f6)).append(" ").append(o.a(H, B, C)).toString(), v, this.s, l);
        }
        if (!TextUtils.isEmpty(I))
        {
            this.s = this.s + e;
            c.drawText((new StringBuilder()).append(a.getString(0x7f0801f7)).append(" ").append(o.a(I, B, C)).toString(), v, this.s, l);
        }
        l.setTextSize(4 + d);
        Iterator iterator = F.iterator();
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
                    s1 = (new StringBuilder()).append(reportitem.getPercentage()).append("% ").append(p.a(A, reportitem.getAmount(), z)).toString();
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
                        s1 = p.a(A, reportitem.getAmount(), z);
                    }
                } else
                {
                    String s = p.a(A, reportitem.getAmount(), z);
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
                c.drawText(a.getString(0x7f080084), v, this.s, l);
            }
        } while (true);
        this.s = this.s + e;
        c.drawLine(t, 6 + (this.s - e / 2), u, 6 + (this.s - e / 2), n);
        this.s = this.s + e;
        l.setTextSize(d);
        c.drawText((new StringBuilder()).append(a.getString(0x7f0801f5)).append(" ").append(o.a(J, B, C)).toString(), v, this.s, l);
        if (!TextUtils.isEmpty(G))
        {
            this.s = this.s + e;
            c.drawText((new StringBuilder()).append(a.getString(0x7f080202)).append(" ").append(G).toString(), v, this.s, l);
        }
    }

    protected final void c()
    {
        s = s + h;
    }

    protected final void d()
    {
        int i = 0 + 3 * e + g + h;
        if (!TextUtils.isEmpty(H))
        {
            i += e;
        }
        if (!TextUtils.isEmpty(I))
        {
            i += e;
        }
        if (!TextUtils.isEmpty(G))
        {
            i += e;
        }
        Iterator iterator = F.iterator();
        int j = i;
        while (iterator.hasNext()) 
        {
            Report report = (Report)iterator.next();
            int k = j + e;
            if (!TextUtils.isEmpty(report.getName()))
            {
                k += e;
            }
            int l = k + e * report.getReportItems().size();
            int i1;
            if (report.getReportItems().isEmpty())
            {
                i1 = l + e;
            } else
            {
                i1 = l;
            }
            j = i1;
        }
        b = Bitmap.createBitmap(r, j, android.graphics.Bitmap.Config.ARGB_8888);
        c = new Canvas(b);
        c.drawColor(-1);
    }

    public final volatile Bitmap e()
    {
        return super.e();
    }
}
