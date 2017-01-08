// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.e;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.text.StaticLayout;
import android.text.TextUtils;
import com.aadhk.restpos.POSApp;
import com.aadhk.restpos.bean.Company;
import com.aadhk.restpos.bean.Customer;
import com.aadhk.restpos.bean.Order;
import com.aadhk.restpos.bean.OrderItem;
import com.aadhk.restpos.bean.OrderModifier;
import com.aadhk.restpos.bean.OrderPayment;
import com.aadhk.restpos.bean.POSPrinterSetting;
import com.aadhk.restpos.bean.User;
import com.aadhk.restpos.util.f;
import com.aadhk.restpos.util.m;
import com.aadhk.restpos.util.o;
import com.aadhk.restpos.util.p;
import com.aadhk.restpos.util.r;
import java.text.Bidi;
import java.util.Iterator;
import java.util.List;
import java.util.Scanner;

// Referenced classes of package com.aadhk.restpos.e:
//            c

public final class d extends c
{

    private Context E;
    private String F;
    private Order G;
    private Customer H;
    private List I;
    private List J;
    private String K;
    private String L;
    private boolean M;
    private boolean N;
    private Bitmap O;
    private float P;
    private boolean Q;

    private d(Context context, Order order, Customer customer, List list, POSPrinterSetting posprintersetting, boolean flag)
    {
        E = context;
        G = order;
        H = customer;
        I = list;
        N = flag;
        J = order.getOrderPayments();
        a(context, posprintersetting);
        L = posprintersetting.getHeader();
        K = posprintersetting.getFooter();
        F = ((POSApp)context.getApplicationContext()).d().getAccount();
        M = D.isItemPriceIncludeTax();
        if (!TextUtils.isEmpty(posprintersetting.getLogoName()))
        {
            O = BitmapFactory.decodeFile((new StringBuilder()).append(f.b).append("/").append(posprintersetting.getLogoName()).toString());
            if (O != null)
            {
                P = (float)(r - i - j) / (float)O.getWidth();
            }
        }
        Q = y.l();
    }

    public static Bitmap a(Context context, Order order, Customer customer, List list, POSPrinterSetting posprintersetting, boolean flag)
    {
        return (new d(context, order, customer, list, posprintersetting, flag)).c.e();
    }

    protected final void a()
    {
        this.s = this.s + g;
        if (O != null)
        {
            this.s = this.s + e;
            Matrix matrix = new Matrix();
            matrix.postScale(P, P);
            matrix.postTranslate(t, this.s);
            c.drawBitmap(O, matrix, k);
            this.s = (int)((float)this.s + (float)O.getHeight() * P);
            this.s = this.s + e;
        }
        if (N)
        {
            l.setTextSize(4 + d);
            this.s = this.s + e;
            c.drawText(E.getString(0x7f080169), v, this.s, l);
        }
        if (L != null)
        {
            l.setTextSize(d);
            Scanner scanner;
            for (scanner = new Scanner(L); scanner.hasNextLine(); c.drawText(scanner.nextLine(), v, this.s, l))
            {
                this.s = this.s + e;
            }

            scanner.close();
        }
        this.s = this.s + e;
        c.drawLine(t, 2 + (this.s - e / 2), u, 2 + (this.s - e / 2), n);
        if (G.getTableId() != 0L) goto _L2; else goto _L1
_L1:
        this.s = this.s + e;
        l.setTextSize(4 + d);
        c.drawText(E.getString(0x7f080322), v, this.s, l);
_L4:
        if (H != null)
        {
            l.setTextSize(d);
            if (!TextUtils.isEmpty(H.getName()))
            {
                this.s = this.s + e;
                c.drawText(H.getName(), v, this.s, l);
            }
            if (!TextUtils.isEmpty(H.getAddress1()))
            {
                this.s = this.s + e;
                c.drawText(H.getAddress1(), v, this.s, l);
            }
            if (!TextUtils.isEmpty(H.getAddress2()))
            {
                String s = H.getAddress2();
                if (!TextUtils.isEmpty(H.getAddress3()))
                {
                    s = (new StringBuilder()).append(s).append(", ").append(H.getAddress3()).toString();
                }
                this.s = this.s + e;
                c.drawText(s, v, this.s, l);
            }
            this.s = this.s + e;
            c.drawText((new StringBuilder()).append(E.getString(0x7f08016b)).append(" ").append(H.getTel()).toString(), v, this.s, l);
            this.s = this.s + e;
            c.drawLine(t, 2 + (this.s - e / 2), u, 2 + (this.s - e / 2), n);
        }
        if (G.getTableId() > 0L && y.z())
        {
            this.s = this.s + e;
            c.drawText((new StringBuilder()).append(E.getString(0x7f0801cb)).append(" ").append(G.getTableName()).append(", ").append(G.getPersonNum()).append(" ").append(E.getString(0x7f0801cd)).toString(), t, this.s, k);
        }
        if (y.A())
        {
            this.s = this.s + e;
            c.drawText((new StringBuilder()).append(E.getString(0x7f08014e)).append(" ").append(F).toString(), t, this.s, k);
        }
        if (y.B())
        {
            this.s = this.s + e;
            c.drawText((new StringBuilder()).append(E.getString(0x7f0801cc)).append(" ").append(G.getOrderNum()).toString(), t, this.s, k);
        }
        if (y.D())
        {
            this.s = this.s + e;
            c.drawText((new StringBuilder()).append(E.getString(0x7f080151)).append(" ").append(o.a(G.getOrderTime(), B, C)).toString(), t, this.s, k);
        }
        if (!TextUtils.isEmpty(D.getTaxNumber()) && y.C())
        {
            this.s = this.s + e;
            c.drawText((new StringBuilder()).append(E.getString(0x7f080150)).append(" ").append(D.getTaxNumber()).toString(), t, this.s, k);
        }
        if (!TextUtils.isEmpty(G.getReceiptNote()))
        {
            this.s = this.s + e;
            c.drawText((new StringBuilder()).append(E.getString(0x7f08014f)).append(" ").append(G.getReceiptNote()).toString(), t, this.s, k);
        }
        return;
_L2:
        if (G.getTableId() == -1L)
        {
            this.s = this.s + e;
            l.setTextSize(4 + d);
            c.drawText(E.getString(0x7f0800d7), v, this.s, l);
        } else
        if (G.getTableId() == -2L)
        {
            this.s = this.s + e;
            l.setTextSize(4 + d);
            c.drawText(E.getString(0x7f0800d8), v, this.s, l);
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    protected final void b()
    {
        this.s = this.s + e;
        c.drawLine(t, 2 + (this.s - e / 2), u, 2 + (this.s - e / 2), n);
        Iterator iterator = I.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            OrderItem orderitem = (OrderItem)iterator.next();
            if (orderitem.getStatus() != 1 || Q)
            {
                String s4;
                String s5;
                Bidi bidi;
                StaticLayout staticlayout;
                if (orderitem.getStatus() == 1)
                {
                    s4 = (new StringBuilder()).append(orderitem.getItemName()).append("(").append(E.getString(0x7f0802d1)).append(")").toString();
                    s5 = "-";
                } else
                {
                    s4 = orderitem.getItemName();
                    s5 = p.a(A, orderitem.getItemPrice() * (double)orderitem.getQty(), z);
                }
                c.save();
                bidi = new Bidi(s4, -2);
                if (bidi.getBaseLevel() == 0)
                {
                    staticlayout = new StaticLayout((new StringBuilder()).append(orderitem.getQty()).append(" ").append(s4).toString(), o, r, android.text.Layout.Alignment.ALIGN_NORMAL, 1.0F, 0.0F, false);
                } else
                {
                    staticlayout = new StaticLayout((new StringBuilder()).append(s4).append(" \u202B").append(orderitem.getQty()).toString(), o, r, android.text.Layout.Alignment.ALIGN_OPPOSITE, 1.0F, 0.0F, false);
                }
                c.translate(t, this.s);
                staticlayout.draw(c);
                c.restore();
                this.s = this.s + staticlayout.getHeight();
                c.drawText(s5, u, this.s, m);
                if (orderitem.getDiscountAmt() != 0.0D && orderitem.getStatus() != 1)
                {
                    String s8 = (new StringBuilder("-")).append(p.a(A, orderitem.getDiscountAmt(), z)).append(": ").append(orderitem.getDiscountName()).toString();
                    c.save();
                    List list;
                    Iterator iterator2;
                    StaticLayout staticlayout2;
                    if (bidi.getBaseLevel() == 0)
                    {
                        staticlayout2 = new StaticLayout(s8, o, r, android.text.Layout.Alignment.ALIGN_NORMAL, 1.0F, 0.0F, false);
                    } else
                    {
                        staticlayout2 = new StaticLayout(s8, o, r, android.text.Layout.Alignment.ALIGN_OPPOSITE, 1.0F, 0.0F, false);
                    }
                    c.translate(16 + t, this.s);
                    staticlayout2.draw(c);
                    c.restore();
                    this.s = this.s + staticlayout2.getHeight();
                }
                list = orderitem.getOrderModifiers();
                if (list != null && !list.isEmpty())
                {
                    iterator2 = list.iterator();
                    while (iterator2.hasNext()) 
                    {
                        OrderModifier ordermodifier = (OrderModifier)iterator2.next();
                        String s6;
                        String s7;
                        StaticLayout staticlayout1;
                        if (ordermodifier.getType() == 1)
                        {
                            s6 = "+";
                        } else
                        {
                            s6 = "-";
                        }
                        if (orderitem.getStatus() == 1)
                        {
                            s7 = "-";
                        } else
                        {
                            s7 = p.a(A, ordermodifier.getModifierPrice() * (double)ordermodifier.getQty(), z);
                        }
                        c.save();
                        if (bidi.getBaseLevel() == 0)
                        {
                            staticlayout1 = new StaticLayout((new StringBuilder()).append(s6).append(ordermodifier.getQty()).append(" ").append(ordermodifier.getModifierName()).toString(), o, r, android.text.Layout.Alignment.ALIGN_NORMAL, 1.0F, 0.0F, false);
                        } else
                        {
                            staticlayout1 = new StaticLayout((new StringBuilder()).append(ordermodifier.getModifierName()).append(" \u202B").append(s6).append(ordermodifier.getQty()).toString(), o, r, android.text.Layout.Alignment.ALIGN_OPPOSITE, 1.0F, 0.0F, false);
                        }
                        c.translate(16 + t, this.s);
                        staticlayout1.draw(c);
                        c.restore();
                        this.s = this.s + staticlayout1.getHeight();
                        c.drawText(s7, u, this.s, m);
                    }
                }
            }
        } while (true);
        if (G.getSplitType() != 1) goto _L2; else goto _L1
_L1:
        this.s = this.s + e;
        l.setTextSize(2 + d);
        c.drawText(E.getString(0x7f080224), v, this.s, l);
        this.s = this.s + e;
_L4:
        this.s = this.s + e;
        c.drawLine(t, 2 + (this.s - e / 2), u, 2 + (this.s - e / 2), n);
        k.setTextAlign(android.graphics.Paint.Align.LEFT);
        if (G.getDiscountAmt() > 0.0D || G.getServiceAmt() > 0.0D || !M && (G.getTax1Amt() > 0.0D || G.getTax2Amt() > 0.0D))
        {
            this.s = this.s + e;
            c.drawText(E.getString(0x7f0801c8), t, this.s, k);
            c.drawText(p.a(A, G.getSubTotal(), z), u, this.s, m);
        }
        if (G.getDiscountAmt() > 0.0D)
        {
            this.s = this.s + e;
            c.drawText(E.getString(0x7f0801c9), t, this.s, k);
            c.drawText(p.a(A, G.getDiscountAmt(), z), u, this.s, m);
            if (!TextUtils.isEmpty(G.getDiscountReason()))
            {
                this.s = this.s + e;
                c.drawText(G.getDiscountReason(), 16 + t, this.s, k);
            }
        }
        if (!M && G.getTax1Amt() > 0.0D)
        {
            this.s = this.s + e;
            c.drawText((new StringBuilder()).append(G.getTax1Name()).append(":").toString(), t, this.s, k);
            c.drawText(p.a(A, G.getTax1Amt(), z), u, this.s, m);
        }
        if (!M && G.getTax2Amt() > 0.0D)
        {
            this.s = this.s + e;
            c.drawText((new StringBuilder()).append(G.getTax2Name()).append(":").toString(), t, this.s, k);
            c.drawText(p.a(A, G.getTax2Amt(), z), u, this.s, m);
        }
        if (G.getServiceAmt() > 0.0D)
        {
            this.s = this.s + e;
            c.drawText(E.getString(0x7f08016a), t, this.s, k);
            c.drawText(p.a(A, G.getServiceAmt(), z), u, this.s, m);
        }
        this.s = this.s + e;
        this.s = this.s + e;
        m.setTextSize(12 + d);
        m.setTypeface(q);
        c.drawText(E.getString(0x7f0801ca), t, this.s, k);
        c.drawText(p.a(A, G.getAmount(), z), u, this.s, m);
        m.setTextSize(d);
        m.setTypeface(p);
        Iterator iterator1 = J.iterator();
        do
        {
            if (!iterator1.hasNext())
            {
                break;
            }
            OrderPayment orderpayment = (OrderPayment)iterator1.next();
            if (orderpayment.getPaid() > 0.0D)
            {
                this.s = this.s + e;
                c.drawText((new StringBuilder()).append(orderpayment.getPaymentMethodName()).append(":").toString(), t, this.s, k);
                c.drawText(p.a(A, orderpayment.getPaid(), z), u, this.s, m);
            }
            if (orderpayment.getChangeAmt() > 0.0D)
            {
                this.s = this.s + e;
                c.drawText(E.getString(0x7f080379), t, this.s, k);
                c.drawText(p.a(A, orderpayment.getChangeAmt(), z), u, this.s, m);
            }
        } while (true);
        break; /* Loop/switch isn't completed */
_L2:
        if (G.getSplitType() == 2)
        {
            this.s = this.s + e;
            l.setTextSize(2 + d);
            c.drawText(E.getString(0x7f080223), v, this.s, l);
            this.s = this.s + e;
        }
        if (true) goto _L4; else goto _L3
_L3:
        if (M && G.getTax1Amt() > 0.0D)
        {
            this.s = this.s + e;
            this.s = this.s + e;
            String s2 = E.getString(0x7f080319);
            Object aobj1[] = new Object[1];
            aobj1[0] = G.getTax1Name();
            String s3 = String.format(s2, aobj1);
            c.drawText((new StringBuilder()).append(s3).append(":").toString(), t, this.s, k);
            c.drawText(p.a(A, G.getTax1Amt(), z), u, this.s, m);
        }
        if (M && G.getTax2Amt() > 0.0D)
        {
            this.s = this.s + e;
            String s = E.getString(0x7f080319);
            Object aobj[] = new Object[1];
            aobj[0] = G.getTax2Name();
            String s1 = String.format(s, aobj);
            c.drawText((new StringBuilder()).append(s1).append(":").toString(), t, this.s, k);
            c.drawText(p.a(A, G.getTax2Amt(), z), u, this.s, m);
        }
        return;
    }

    protected final void c()
    {
        this.s = this.s + e;
        if (K != null)
        {
            l.setTextSize(d);
            Scanner scanner;
            for (scanner = new Scanner(K); scanner.hasNextLine(); c.drawText(scanner.nextLine(), v, this.s, l))
            {
                this.s = this.s + e;
            }

            scanner.close();
        }
        this.s = this.s + e;
        if (y.E())
        {
            l.setTextSize(d);
            this.s = this.s + e;
            c.drawText(E.getString(0x7f080167), v, this.s, l);
            String s = p.a(A, m.a(G.getAmount(), 10, A), z);
            String s1 = p.a(A, m.a(G.getAmount(), 15, A), z);
            this.s = this.s + e;
            c.drawText((new StringBuilder("10%=")).append(s).append("  15%=").append(s1).toString(), v, this.s, l);
        }
        this.s = this.s + h;
    }

    protected final void d()
    {
        int i = 0 * e + 4 * e + e + 2 * e + (g + h) + e;
        if (O != null)
        {
            i = (int)((float)(i + e) + (float)O.getHeight() * P) + e;
        }
        if (L != null)
        {
            Scanner scanner;
            for (scanner = new Scanner(L); scanner.hasNextLine();)
            {
                scanner.nextLine();
                i += e;
            }

            scanner.close();
        }
        if (K != null)
        {
            Scanner scanner1;
            for (scanner1 = new Scanner(K); scanner1.hasNextLine();)
            {
                scanner1.nextLine();
                i += e;
            }

            scanner1.close();
        }
        if (N)
        {
            i += e;
        }
        if (G.getTableId() > 0L && y.z())
        {
            i += e;
        }
        if (y.A())
        {
            i += e;
        }
        if (y.B())
        {
            i += e;
        }
        if (y.D())
        {
            i += e;
        }
        if (!TextUtils.isEmpty(D.getTaxNumber()) && y.C())
        {
            i += e;
        }
        if (!M && G.getTax1Amt() > 0.0D)
        {
            i += e;
        }
        if (!M && G.getTax2Amt() > 0.0D)
        {
            i += e;
        }
        if (M && G.getTax1Amt() > 0.0D)
        {
            i = i + e + e;
        }
        if (M && G.getTax2Amt() > 0.0D)
        {
            i += e;
        }
        if (G.getServiceAmt() > 0.0D)
        {
            i += e;
        }
        if (G.getDiscountAmt() > 0.0D)
        {
            i += e;
            if (!TextUtils.isEmpty(G.getDiscountReason()))
            {
                i += e;
            }
        }
        if (G.getDiscountAmt() > 0.0D || G.getServiceAmt() > 0.0D || !M && (G.getTax1Amt() > 0.0D || G.getTax2Amt() > 0.0D))
        {
            i += e;
        }
        Iterator iterator = J.iterator();
        int j = i;
        while (iterator.hasNext()) 
        {
            OrderPayment orderpayment = (OrderPayment)iterator.next();
            if (orderpayment.getPaid() > 0.0D)
            {
                j += e;
            }
            Iterator iterator1;
            int k;
            OrderItem orderitem;
            String s;
            int l;
            int i1;
            List list;
            Iterator iterator2;
            int j1;
            OrderModifier ordermodifier;
            int k1;
            int l1;
            if (orderpayment.getChangeAmt() > 0.0D)
            {
                l1 = j + e;
            } else
            {
                l1 = j;
            }
            j = l1;
        }
        if (D.getTaxNumber() != null && !D.getTaxNumber().equals(""))
        {
            j += e;
        }
        if (y.E())
        {
            j += 2 * e;
        }
        if (G.getSplitType() > 0)
        {
            j += 2 * e;
        }
        if (H != null)
        {
            k1 = j + e;
            if (!TextUtils.isEmpty(H.getName()))
            {
                k1 += e;
            }
            if (!TextUtils.isEmpty(H.getAddress1()))
            {
                k1 += e;
            }
            if (!TextUtils.isEmpty(H.getAddress2()))
            {
                k1 += e;
            }
            j = k1 + e + e;
        }
        iterator1 = I.iterator();
        k = j;
        while (iterator1.hasNext()) 
        {
            orderitem = (OrderItem)iterator1.next();
            if (orderitem.getStatus() != 1 || Q)
            {
                if (orderitem.getStatus() == 1)
                {
                    s = (new StringBuilder()).append(orderitem.getItemName()).append("(").append(E.getString(0x7f0802d1)).append(")").toString();
                } else
                {
                    s = orderitem.getItemName();
                }
                l = k + (new StaticLayout((new StringBuilder()).append(orderitem.getQty()).append(" ").append(s).toString(), o, r, android.text.Layout.Alignment.ALIGN_NORMAL, 1.0F, 0.0F, false)).getHeight();
                if (orderitem.getDiscountAmt() != 0.0D && orderitem.getStatus() != 1)
                {
                    i1 = l + (new StaticLayout((new StringBuilder("\t-")).append(p.a(A, orderitem.getDiscountAmt(), z)).append(": ").append(orderitem.getDiscountName()).toString(), o, r, android.text.Layout.Alignment.ALIGN_NORMAL, 1.0F, 0.0F, false)).getHeight();
                } else
                {
                    i1 = l;
                }
                list = orderitem.getOrderModifiers();
                if (list != null && !list.isEmpty())
                {
                    iterator2 = list.iterator();
                    for (j1 = i1; iterator2.hasNext(); j1 += (new StaticLayout((new StringBuilder("+")).append(ordermodifier.getQty()).append(" ").append(ordermodifier.getModifierName()).toString(), o, r, android.text.Layout.Alignment.ALIGN_NORMAL, 1.0F, 0.0F, false)).getHeight())
                    {
                        ordermodifier = (OrderModifier)iterator2.next();
                    }

                    i1 = j1;
                }
            } else
            {
                i1 = k;
            }
            k = i1;
        }
        b = Bitmap.createBitmap(r, k, android.graphics.Bitmap.Config.ARGB_8888);
        b.setDensity(960);
        c = new Canvas(b);
        c.drawColor(-1);
    }

    public final volatile Bitmap e()
    {
        return super.e();
    }
}
