// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.e;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.text.StaticLayout;
import android.text.TextUtils;
import com.aadhk.product.library.c.c;
import com.aadhk.restpos.POSApp;
import com.aadhk.restpos.bean.Order;
import com.aadhk.restpos.bean.OrderItem;
import com.aadhk.restpos.bean.OrderModifier;
import com.aadhk.restpos.bean.POSPrinterSetting;
import com.aadhk.restpos.bean.User;
import com.aadhk.restpos.util.o;
import com.aadhk.restpos.util.r;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.aadhk.restpos.e:
//            c

public final class a extends com.aadhk.restpos.e.c
{

    private Context E;
    private List F;
    private Order G;
    private String H;
    private boolean I;
    private String J;

    private a(Context context, Order order, List list, POSPrinterSetting posprintersetting, boolean flag)
    {
        E = context;
        F = list;
        G = order;
        I = flag;
        J = posprintersetting.getPrinterName();
        H = ((POSApp)context.getApplicationContext()).d().getAccount();
        a(context, posprintersetting);
    }

    public static Bitmap a(Context context, Order order, List list, POSPrinterSetting posprintersetting)
    {
        return a(context, order, list, posprintersetting, false);
    }

    public static Bitmap a(Context context, Order order, List list, POSPrinterSetting posprintersetting, boolean flag)
    {
        return (new a(context, order, list, posprintersetting, flag)).c.e();
    }

    protected final void a()
    {
        l.setTextSize(d);
        s = s + g;
        if (G.getOrderCount() > 0 || !TextUtils.isEmpty(G.getKitchenRemark()) || I)
        {
            s = s + f;
            c.drawLine(t, s - f / 2, u, s - f / 2, n);
            if (I)
            {
                s = s + f;
                c.drawText(E.getString(0x7f080169), v, s, l);
            }
            if (G.getOrderCount() > 0 && !I)
            {
                s = s + f;
                c.drawText((new StringBuilder()).append(E.getString(0x7f080294)).append(" ").append(G.getOrderCount()).toString(), v, s, l);
            }
            if (!TextUtils.isEmpty(G.getKitchenRemark()))
            {
                s = s + f;
                c.drawText(G.getKitchenRemark(), v, s, l);
            }
            s = s + f;
            c.drawLine(t, s - f / 2, u, s - f / 2, n);
        }
        s = s + f;
        if (G.getTableId() <= 0L)
        {
            c.drawText(G.getTableName(), v, s, l);
        } else
        {
            c.drawText((new StringBuilder()).append(G.getTableName()).append("(").append(G.getPersonNum()).append(")").toString(), v, s, l);
        }
        s = s + f;
        c.drawText((new StringBuilder()).append(G.getOrderNum()).toString(), t, s, k);
        c.drawText(J, u, s, m);
        s = s + f;
        c.drawText(o.d(G.getOrderTime(), y.d()), t, s, k);
        c.drawText(H, u, s, m);
    }

    public final void b()
    {
        this.s = this.s + f;
        c.drawLine(t, this.s - f / 4, u, this.s - f / 4, n);
        c.drawLine(t, 6 + (this.s - f / 4), u, 6 + (this.s - f / 4), n);
        l.setTextSize(4 + d);
        for (int i = 0; i < F.size(); i++)
        {
            OrderItem orderitem = (OrderItem)F.get(i);
            this.s = this.s + f;
            c.drawText((new StringBuilder()).append(orderitem.getQty()).append("X").toString(), t, this.s, k);
            this.s = this.s + f;
            String s;
            List list;
            if (orderitem.getStatus() == 1)
            {
                s = (new StringBuilder()).append(orderitem.getItemName()).append("(").append(E.getString(0x7f0802d1)).append(")").toString();
            } else
            if (orderitem.getStatus() == 2)
            {
                s = (new StringBuilder()).append(orderitem.getItemName()).append("(").append(E.getString(0x7f0802d2)).append(")").toString();
            } else
            {
                s = orderitem.getItemName();
            }
            c.drawText(s, t, this.s, k);
            if (orderitem.getRemark() != null)
            {
                c.save();
                StaticLayout staticlayout = new StaticLayout(orderitem.getRemark(), o, r, android.text.Layout.Alignment.ALIGN_NORMAL, 1.0F, 0.0F, false);
                c.translate(t, this.s);
                staticlayout.draw(c);
                c.restore();
                this.s = this.s + (-1 + f * staticlayout.getLineCount());
            }
            list = orderitem.getOrderModifiers();
            if (list != null)
            {
                OrderModifier ordermodifier;
                for (Iterator iterator = list.iterator(); iterator.hasNext(); c.drawText(ordermodifier.getModifierName(), 16 + t, this.s, k))
                {
                    ordermodifier = (OrderModifier)iterator.next();
                    this.s = this.s + f;
                    c.drawText((new StringBuilder()).append(ordermodifier.getQty()).append("X").toString(), 16 + t, this.s, k);
                    this.s = this.s + f;
                }

            }
            if (i < -1 + F.size())
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
        c.drawText(o.a(com.aadhk.product.library.c.c.c(), B, C), t, s, k);
        s = s + h;
    }

    protected final void d()
    {
        int i = 3 * f + f + g + h + 2 * f;
        if (G.getOrderCount() > 0 || !TextUtils.isEmpty(G.getKitchenRemark()) || I)
        {
            int j = i + f;
            if (I)
            {
                j += f;
            }
            if (G.getOrderCount() > 0 && !I)
            {
                j += f;
            }
            if (!TextUtils.isEmpty(G.getKitchenRemark()))
            {
                j += f;
            }
            i = j + f;
        }
        Iterator iterator = F.iterator();
        int k = i;
        while (iterator.hasNext()) 
        {
            OrderItem orderitem = (OrderItem)iterator.next();
            int l = k + 3 * f;
            int i1;
            List list;
            if (orderitem.getRemark() != null)
            {
                StaticLayout staticlayout = new StaticLayout(orderitem.getRemark(), o, r, android.text.Layout.Alignment.ALIGN_NORMAL, 1.0F, 0.0F, false);
                i1 = l + (-1 + f * staticlayout.getLineCount());
            } else
            {
                i1 = l;
            }
            list = orderitem.getOrderModifiers();
            if (list != null)
            {
                i1 += 2 * f * list.size();
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
