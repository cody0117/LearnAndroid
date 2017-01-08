// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.e;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.text.StaticLayout;
import com.aadhk.restpos.bean.Order;
import com.aadhk.restpos.bean.OrderItem;
import com.aadhk.restpos.bean.OrderModifier;
import com.aadhk.restpos.bean.POSPrinterSetting;
import com.aadhk.restpos.util.o;
import com.aadhk.restpos.util.p;
import com.aadhk.restpos.util.r;
import java.text.Bidi;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.aadhk.restpos.e:
//            c

public final class b extends c
{

    private Context E;
    private Order F;
    private List G;
    private boolean H;

    private b(Context context, Order order, List list, POSPrinterSetting posprintersetting)
    {
        E = context;
        F = order;
        G = list;
        a(context, posprintersetting);
        H = y.l();
    }

    public static Bitmap a(Context context, Order order, List list, POSPrinterSetting posprintersetting)
    {
        return (new b(context, order, list, posprintersetting)).c.e();
    }

    protected final void a()
    {
        String s;
        this.s = this.s + g;
        l.setTextSize(4 + d);
        this.s = this.s + e;
        c.drawText(E.getString(0x7f080295), v, this.s, l);
        this.s = this.s + e;
        c.drawLine(t, 2 + (this.s - e / 2), u, 2 + (this.s - e / 2), n);
        this.s = this.s + e;
        c.drawText((new StringBuilder()).append(E.getString(0x7f080151)).append(" ").append(o.c(F.getOrderTime())).toString(), t, this.s, k);
        s = F.getTableName();
        if (F.getTableId() != 0L) goto _L2; else goto _L1
_L1:
        s = E.getString(0x7f080322);
_L4:
        c.drawText((new StringBuilder()).append(E.getString(0x7f0801cb)).append(" ").append(s).toString(), u, this.s, m);
        this.s = this.s + e;
        c.drawText((new StringBuilder()).append(E.getString(0x7f08014e)).append(" ").append(F.getWaiterName()).toString(), t, this.s, k);
        if (F.getTableId() > 0L)
        {
            c.drawText((new StringBuilder()).append(E.getString(0x7f0801ce)).append(" ").append(F.getPersonNum()).toString(), u, this.s, m);
        }
        return;
_L2:
        if (F.getTableId() == -1L)
        {
            s = E.getString(0x7f0800d7);
        } else
        if (F.getTableId() == -2L)
        {
            s = E.getString(0x7f0800d8);
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    protected final void b()
    {
        this.s = this.s + e;
        c.drawLine(t, 2 + (this.s - e / 2), u, 2 + (this.s - e / 2), n);
        Iterator iterator = G.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            OrderItem orderitem = (OrderItem)iterator.next();
            if (orderitem.getStatus() != 1 || H)
            {
                String s;
                Bidi bidi;
                StaticLayout staticlayout;
                List list;
                if (orderitem.getStatus() == 1)
                {
                    s = (new StringBuilder()).append(orderitem.getItemName()).append("(").append(E.getString(0x7f0802d1)).append(")").toString();
                } else
                {
                    s = orderitem.getItemName();
                }
                c.save();
                bidi = new Bidi(s, -2);
                if (bidi.getBaseLevel() == 0)
                {
                    staticlayout = new StaticLayout((new StringBuilder()).append(orderitem.getQty()).append(" ").append(s).toString(), o, c.getWidth(), android.text.Layout.Alignment.ALIGN_NORMAL, 1.0F, 0.0F, false);
                } else
                {
                    staticlayout = new StaticLayout((new StringBuilder()).append(s).append(" \u202B").append(orderitem.getQty()).toString(), o, c.getWidth(), android.text.Layout.Alignment.ALIGN_OPPOSITE, 1.0F, 0.0F, false);
                }
                c.translate(t, this.s);
                staticlayout.draw(c);
                c.restore();
                this.s = this.s + staticlayout.getHeight();
                list = orderitem.getOrderModifiers();
                if (list != null && !list.isEmpty())
                {
                    Iterator iterator1 = list.iterator();
                    while (iterator1.hasNext()) 
                    {
                        OrderModifier ordermodifier = (OrderModifier)iterator1.next();
                        String s1;
                        StaticLayout staticlayout1;
                        if (ordermodifier.getType() == 1)
                        {
                            s1 = "+";
                        } else
                        {
                            s1 = "-";
                        }
                        c.save();
                        if (bidi.getBaseLevel() == 0)
                        {
                            staticlayout1 = new StaticLayout((new StringBuilder()).append(s1).append(ordermodifier.getQty()).append(" ").append(ordermodifier.getModifierName()).toString(), o, c.getWidth(), android.text.Layout.Alignment.ALIGN_NORMAL, 1.0F, 0.0F, false);
                        } else
                        {
                            staticlayout1 = new StaticLayout((new StringBuilder()).append(ordermodifier.getModifierName()).append(" \u202B").append(s1).append(ordermodifier.getQty()).toString(), o, c.getWidth(), android.text.Layout.Alignment.ALIGN_OPPOSITE, 1.0F, 0.0F, false);
                        }
                        c.translate(16 + t, this.s);
                        staticlayout1.draw(c);
                        c.restore();
                        this.s = this.s + staticlayout1.getHeight();
                    }
                }
            }
        } while (true);
    }

    protected final void c()
    {
    }

    protected final void d()
    {
        int i = 5 * e + e + (g + h);
        Iterator iterator = G.iterator();
        while (iterator.hasNext()) 
        {
            OrderItem orderitem = (OrderItem)iterator.next();
            int k;
            if (orderitem.getStatus() != 1 || H)
            {
                String s;
                int j;
                List list;
                if (orderitem.getStatus() == 1)
                {
                    s = (new StringBuilder()).append(orderitem.getItemName()).append("(").append(E.getString(0x7f0802d1)).append(")").toString();
                } else
                {
                    s = orderitem.getItemName();
                }
                j = i + (new StaticLayout((new StringBuilder()).append(orderitem.getQty()).append(" ").append(s).toString(), o, r, android.text.Layout.Alignment.ALIGN_NORMAL, 1.0F, 0.0F, false)).getHeight();
                if (orderitem.getDiscountAmt() != 0.0D && orderitem.getStatus() != 1)
                {
                    k = j + (new StaticLayout((new StringBuilder("\t-")).append(p.a(A, orderitem.getDiscountAmt(), z)).append(": ").append(orderitem.getDiscountName()).toString(), o, r, android.text.Layout.Alignment.ALIGN_NORMAL, 1.0F, 0.0F, false)).getHeight();
                } else
                {
                    k = j;
                }
                list = orderitem.getOrderModifiers();
                if (list != null && !list.isEmpty())
                {
                    Iterator iterator1 = list.iterator();
                    int l;
                    OrderModifier ordermodifier;
                    for (l = k; iterator1.hasNext(); l += (new StaticLayout((new StringBuilder("+")).append(ordermodifier.getQty()).append(" ").append(ordermodifier.getModifierName()).toString(), o, r, android.text.Layout.Alignment.ALIGN_NORMAL, 1.0F, 0.0F, false)).getHeight())
                    {
                        ordermodifier = (OrderModifier)iterator1.next();
                    }

                    k = l;
                }
            } else
            {
                k = i;
            }
            i = k;
        }
        b = Bitmap.createBitmap(r, i, android.graphics.Bitmap.Config.ARGB_8888);
        b.setDensity(960);
        c = new Canvas(b);
        c.drawColor(-1);
    }

    public final volatile Bitmap e()
    {
        return super.e();
    }
}
