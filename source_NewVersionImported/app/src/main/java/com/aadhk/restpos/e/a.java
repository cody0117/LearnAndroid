// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.e;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import com.aadhk.restpos.POSApp;
import com.aadhk.restpos.bean.Order;
import com.aadhk.restpos.bean.OrderItem;
import com.aadhk.restpos.bean.OrderModifier;
import com.aadhk.restpos.bean.POSPrinterSetting;
import com.aadhk.restpos.bean.User;
import com.aadhk.restpos.f.i;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.aadhk.restpos.e:
//            b

public final class a extends b
{

    private Context D;
    private List E;
    private Order F;
    private String G;
    private boolean H;
    private String I;

    private a(Context context, Order order, List list, POSPrinterSetting posprintersetting, boolean flag)
    {
        D = context;
        E = list;
        F = order;
        H = flag;
        I = posprintersetting.getName();
        G = ((POSApp)context.getApplicationContext()).c().getAccount();
        a(context, posprintersetting);
    }

    public static Bitmap a(Context context, Order order, List list, POSPrinterSetting posprintersetting)
    {
        return a(context, order, list, posprintersetting, false);
    }

    public static Bitmap a(Context context, Order order, List list, POSPrinterSetting posprintersetting, boolean flag)
    {
        return (new a(context, order, list, posprintersetting, flag)).b.e();
    }

    protected final void a()
    {
        l.setTextSize(d);
        s = s + g;
        if (H)
        {
            s = s + f;
            c.drawText(D.getString(0x7f090137), v, s, l);
        }
        s = s + f;
        if (F.getTableId() == 0L)
        {
            c.drawText(F.getTableName(), v, s, l);
        } else
        {
            c.drawText((new StringBuilder()).append(F.getTableName()).append("(").append(F.getPersonNum()).append(")").toString(), v, s, l);
        }
        s = s + f;
        c.drawText((new StringBuilder()).append(F.getOrderNum()).toString(), t, s, k);
        c.drawText(I, u, s, m);
        s = s + f;
        c.drawText(i.c(F.getStartTime()), t, s, k);
        c.drawText(G, u, s, m);
    }

    public final void b()
    {
        this.s = this.s + f;
        c.drawLine(t, this.s - f / 4, u, this.s - f / 4, n);
        c.drawLine(t, 6 + (this.s - f / 4), u, 6 + (this.s - f / 4), n);
        l.setTextSize(4 + d);
        for (int j = 0; j < E.size(); j++)
        {
            OrderItem orderitem = (OrderItem)E.get(j);
            this.s = this.s + f;
            c.drawText((new StringBuilder()).append(orderitem.getNum()).append("X").toString(), t, this.s, k);
            this.s = this.s + f;
            String s;
            List list;
            if (orderitem.getStatus() == 1)
            {
                s = (new StringBuilder()).append(orderitem.getItemName()).append("(").append(D.getString(0x7f090273)).append(")").toString();
            } else
            if (orderitem.getStatus() == 2)
            {
                s = (new StringBuilder()).append(orderitem.getItemName()).append("(").append(D.getString(0x7f090274)).append(")").toString();
            } else
            {
                s = orderitem.getItemName();
            }
            c.drawText(s, t, this.s, k);
            if (orderitem.getRemark() != null)
            {
                this.s = this.s + f;
                c.drawText((new StringBuilder(" ")).append(orderitem.getRemark()).toString(), 16 + t, this.s, k);
            }
            list = orderitem.getOrderModifiers();
            if (list != null)
            {
                Iterator iterator = list.iterator();
                while (iterator.hasNext()) 
                {
                    OrderModifier ordermodifier = (OrderModifier)iterator.next();
                    this.s = this.s + f;
                    c.drawText((new StringBuilder()).append(ordermodifier.getQty()).append("X").toString(), 16 + t, this.s, k);
                    String s1;
                    if (ordermodifier.getType() == 1)
                    {
                        s1 = "+";
                    } else
                    {
                        s1 = "-";
                    }
                    this.s = this.s + f;
                    c.drawText((new StringBuilder()).append(s1).append(ordermodifier.getModifierName()).toString(), 16 + t, this.s, k);
                }
            }
            if (j < -1 + E.size())
            {
                this.s = this.s + f;
            }
        }

    }

    protected final void c()
    {
        s = s + f;
        c.drawLine(t, s - f / 4, u, s - f / 4, n);
        c.drawLine(t, 6 + (s - f / 4), u, 6 + (s - f / 4), n);
        s = s + f;
        l.setTextSize(d);
        c.drawText(i.c(F.getStartTime(), B), t, s, k);
        s = s + h;
    }

    protected final void d()
    {
        int j = 3 * f + f + g + h + 2 * f;
        if (H)
        {
            j += f;
        }
        Iterator iterator = E.iterator();
        int k = j;
        while (iterator.hasNext()) 
        {
            OrderItem orderitem = (OrderItem)iterator.next();
            int l = k + 3 * f;
            if (orderitem.getRemark() != null)
            {
                l += f;
            }
            List list = orderitem.getOrderModifiers();
            int i1;
            if (list != null)
            {
                i1 = l + 2 * f * list.size();
            } else
            {
                i1 = l;
            }
            k = i1;
        }
        b = Bitmap.createBitmap(r, k, android.graphics.Bitmap.Config.ARGB_8888);
        b.setDensity(320);
        c = new Canvas(b);
        c.drawColor(-1);
    }

    public final volatile Bitmap e()
    {
        return super.e();
    }
}
