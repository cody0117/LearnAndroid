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
import com.aadhk.restpos.f.d;
import com.aadhk.restpos.f.h;
import com.aadhk.restpos.f.i;
import com.aadhk.restpos.f.j;
import com.aadhk.restpos.f.l;
import java.util.Iterator;
import java.util.List;
import java.util.Scanner;

// Referenced classes of package com.aadhk.restpos.e:
//            b

public final class c extends b
{

    protected Bitmap D;
    protected float E;
    protected boolean F;
    private Context G;
    private String H;
    private Order I;
    private Customer J;
    private List K;
    private List L;
    private String M;
    private String N;
    private boolean O;
    private boolean P;
    private boolean Q;

    private c(Context context, Order order, Customer customer, List list, POSPrinterSetting posprintersetting, boolean flag)
    {
        G = context;
        I = order;
        J = customer;
        K = list;
        Q = flag;
        L = order.getOrderPayments();
        a(context, posprintersetting);
        N = posprintersetting.getHeader();
        M = posprintersetting.getFooter();
        P = posprintersetting.isEnableTip();
        H = ((POSApp)context.getApplicationContext()).c().getAccount();
        O = C.isIncludeTax();
        if (!TextUtils.isEmpty(posprintersetting.getLogoName()))
        {
            D = BitmapFactory.decodeFile((new StringBuilder()).append(d.b).append("/").append(posprintersetting.getLogoName()).toString());
            if (D != null)
            {
                E = (float)(r - i - j) / (float)D.getWidth();
            }
        }
        F = y.k();
    }

    public static Bitmap a(Context context, Order order, Customer customer, List list, POSPrinterSetting posprintersetting, boolean flag)
    {
        return (new c(context, order, customer, list, posprintersetting, flag)).b.e();
    }

    protected final void a()
    {
        this.s = this.s + g;
        if (D != null)
        {
            this.s = this.s + e;
            Matrix matrix = new Matrix();
            matrix.postScale(E, E);
            matrix.postTranslate(t, this.s);
            c.drawBitmap(D, matrix, k);
            this.s = (int)((float)this.s + (float)D.getHeight() * E);
            this.s = this.s + e;
        }
        if (Q)
        {
            l.setTextSize(4 + d);
            this.s = this.s + e;
            c.drawText(G.getString(0x7f090137), v, this.s, l);
        }
        if (N != null)
        {
            l.setTextSize(d);
            Scanner scanner;
            for (scanner = new Scanner(N); scanner.hasNextLine(); c.drawText(scanner.nextLine(), v, this.s, l))
            {
                this.s = this.s + e;
            }

            scanner.close();
        }
        this.s = this.s + e;
        c.drawLine(t, 2 + (this.s - e / 2), u, 2 + (this.s - e / 2), n);
        if (I.getTableId() == 0L)
        {
            this.s = this.s + e;
            l.setTextSize(4 + d);
            c.drawText(G.getString(0x7f0902c4), v, this.s, l);
        } else
        if (I.getTableId() == -1L)
        {
            this.s = this.s + e;
            l.setTextSize(4 + d);
            c.drawText(G.getString(0x7f0900ca), v, this.s, l);
        } else
        if (I.getTableId() == -2L)
        {
            this.s = this.s + e;
            l.setTextSize(4 + d);
            c.drawText(G.getString(0x7f0900cb), v, this.s, l);
        }
        if (J != null)
        {
            l.setTextSize(d);
            if (!TextUtils.isEmpty(J.getName()))
            {
                this.s = this.s + e;
                c.drawText(J.getName(), v, this.s, l);
            }
            if (!TextUtils.isEmpty(J.getAddress1()))
            {
                this.s = this.s + e;
                c.drawText(J.getAddress1(), v, this.s, l);
            }
            if (!TextUtils.isEmpty(J.getAddress2()))
            {
                String s = J.getAddress2();
                if (!TextUtils.isEmpty(J.getAddress3()))
                {
                    s = (new StringBuilder()).append(s).append(", ").append(J.getAddress3()).toString();
                }
                this.s = this.s + e;
                c.drawText(s, v, this.s, l);
            }
            this.s = this.s + e;
            c.drawText((new StringBuilder()).append(G.getString(0x7f090139)).append(" ").append(J.getTel()).toString(), v, this.s, l);
            this.s = this.s + e;
            c.drawLine(t, 2 + (this.s - e / 2), u, 2 + (this.s - e / 2), n);
        }
        this.s = this.s + e;
        if (I.getTableId() == 0L || I.getTableId() == -1L || I.getTableId() == -2L)
        {
            c.drawText((new StringBuilder()).append(G.getString(0x7f09011c)).append(" ").append(H).toString(), t, this.s, k);
        } else
        {
            c.drawText((new StringBuilder()).append(G.getString(0x7f090191)).append(" ").append(I.getTableName()).toString(), t, this.s, k);
            c.drawText((new StringBuilder()).append(G.getString(0x7f09011c)).append(" ").append(H).toString(), u, this.s, m);
        }
        this.s = this.s + e;
        if (I.getTableId() == 0L || I.getTableId() == -1L || I.getTableId() == -2L)
        {
            c.drawText((new StringBuilder()).append(G.getString(0x7f090192)).append(" ").append(I.getOrderNum()).toString(), t, this.s, k);
        } else
        {
            c.drawText((new StringBuilder()).append(G.getString(0x7f090192)).append(" ").append(I.getOrderNum()).toString(), t, this.s, k);
            c.drawText((new StringBuilder()).append(G.getString(0x7f090193)).append(" ").append(I.getPersonNum()).toString(), u, this.s, m);
        }
        this.s = this.s + e;
        c.drawText((new StringBuilder()).append(G.getString(0x7f09011f)).append(" ").append(i.c(I.getStartTime(), B)).toString(), t, this.s, k);
        if (!TextUtils.isEmpty(C.getTaxNumber()))
        {
            this.s = this.s + e;
            c.drawText((new StringBuilder()).append(G.getString(0x7f09011e)).append(" ").append(C.getTaxNumber()).toString(), t, this.s, k);
        }
        if (!TextUtils.isEmpty(I.getReceiptNote()))
        {
            this.s = this.s + e;
            c.drawText((new StringBuilder()).append(G.getString(0x7f09011d)).append(" ").append(I.getReceiptNote()).toString(), t, this.s, k);
        }
    }

    protected final void b()
    {
        this.s = this.s + e;
        c.drawLine(t, 2 + (this.s - e / 2), u, 2 + (this.s - e / 2), n);
        Iterator iterator = K.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            OrderItem orderitem = (OrderItem)iterator.next();
            if (orderitem.getStatus() != 1 || F)
            {
                String s4;
                String s5;
                StaticLayout staticlayout;
                List list;
                if (orderitem.getStatus() == 1)
                {
                    s4 = (new StringBuilder()).append(orderitem.getItemName()).append("(").append(G.getString(0x7f090273)).append(")").toString();
                    s5 = "-";
                } else
                {
                    s4 = orderitem.getItemName();
                    s5 = j.a(A, orderitem.getItemPrice(), z);
                }
                c.save();
                staticlayout = new StaticLayout((new StringBuilder()).append(orderitem.getNum()).append(" ").append(s4).toString(), o, c.getWidth(), android.text.Layout.Alignment.ALIGN_NORMAL, 1.0F, 0.0F, false);
                c.translate(t, this.s);
                staticlayout.draw(c);
                c.restore();
                this.s = this.s + staticlayout.getHeight();
                c.drawText(s5, u, this.s, m);
                if (orderitem.getDisAmt() != 0.0D && orderitem.getStatus() != 1)
                {
                    String s8 = (new StringBuilder("\t-")).append(j.a(A, orderitem.getDisAmt(), z)).append(": ").append(orderitem.getDisName()).toString();
                    c.save();
                    StaticLayout staticlayout2 = new StaticLayout(s8, o, c.getWidth(), android.text.Layout.Alignment.ALIGN_NORMAL, 1.0F, 0.0F, false);
                    c.translate(16 + t, this.s);
                    staticlayout2.draw(c);
                    c.restore();
                    this.s = this.s + staticlayout2.getHeight();
                }
                list = orderitem.getOrderModifiers();
                if (list != null && !list.isEmpty())
                {
                    Iterator iterator2 = list.iterator();
                    while (iterator2.hasNext()) 
                    {
                        OrderModifier ordermodifier = (OrderModifier)iterator2.next();
                        String s6;
                        String s7;
                        StaticLayout staticlayout1;
                        if (ordermodifier.getType() == 1)
                        {
                            s6 = " +";
                        } else
                        {
                            s6 = " -";
                        }
                        if (orderitem.getStatus() == 1)
                        {
                            s7 = "-";
                        } else
                        {
                            s7 = j.a(A, ordermodifier.getModifierPrice(), z);
                        }
                        c.save();
                        staticlayout1 = new StaticLayout((new StringBuilder()).append(s6).append(ordermodifier.getQty()).append(" ").append(ordermodifier.getModifierName()).toString(), o, c.getWidth(), android.text.Layout.Alignment.ALIGN_NORMAL, 1.0F, 0.0F, false);
                        c.translate(16 + t, this.s);
                        staticlayout1.draw(c);
                        c.restore();
                        this.s = this.s + staticlayout1.getHeight();
                        c.drawText(s7, u, this.s, m);
                    }
                }
            }
        } while (true);
        if (I.getSplitType() != 1) goto _L2; else goto _L1
_L1:
        this.s = this.s + e;
        l.setTextSize(2 + d);
        c.drawText(G.getString(0x7f0901e5), v, this.s, l);
        this.s = this.s + e;
_L4:
        this.s = this.s + e;
        c.drawLine(t, 2 + (this.s - e / 2), u, 2 + (this.s - e / 2), n);
        k.setTextAlign(android.graphics.Paint.Align.LEFT);
        if (I.getDiscountAmt() > 0.0D || I.getServiceAmt() > 0.0D || !O && (I.getTax1Amt() > 0.0D || I.getTax2Amt() > 0.0D))
        {
            this.s = this.s + e;
            c.drawText(G.getString(0x7f09018e), t, this.s, k);
            c.drawText(j.a(A, I.getSubTotal(), z), u, this.s, m);
        }
        if (I.getDiscountAmt() > 0.0D)
        {
            this.s = this.s + e;
            c.drawText(G.getString(0x7f09018f), t, this.s, k);
            c.drawText(j.a(A, I.getDiscountAmt(), z), u, this.s, m);
            if (!TextUtils.isEmpty(I.getDiscountReason()))
            {
                this.s = this.s + e;
                c.drawText(I.getDiscountReason(), 16 + t, this.s, k);
            }
        }
        if (!O && I.getTax1Amt() > 0.0D)
        {
            this.s = this.s + e;
            c.drawText((new StringBuilder()).append(I.getTax1Name()).append(":").toString(), t, this.s, k);
            c.drawText(j.a(A, I.getTax1Amt(), z), u, this.s, m);
        }
        if (!O && I.getTax2Amt() > 0.0D)
        {
            this.s = this.s + e;
            c.drawText((new StringBuilder()).append(I.getTax2Name()).append(":").toString(), t, this.s, k);
            c.drawText(j.a(A, I.getTax2Amt(), z), u, this.s, m);
        }
        if (I.getServiceAmt() > 0.0D)
        {
            this.s = this.s + e;
            c.drawText(G.getString(0x7f090138), t, this.s, k);
            c.drawText(j.a(A, I.getServiceAmt(), z), u, this.s, m);
        }
        this.s = this.s + e;
        this.s = this.s + e;
        m.setTextSize(12 + d);
        m.setTypeface(q);
        c.drawText(G.getString(0x7f090190), t, this.s, k);
        c.drawText(j.a(A, I.getAmount(), z), u, this.s, m);
        m.setTextSize(d);
        m.setTypeface(p);
        Iterator iterator1 = L.iterator();
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
                c.drawText(j.a(A, orderpayment.getPaid(), z), u, this.s, m);
            }
            if (orderpayment.getChangeAmt() > 0.0D)
            {
                this.s = this.s + e;
                c.drawText(G.getString(0x7f090319), t, this.s, k);
                c.drawText(j.a(A, orderpayment.getChangeAmt(), z), u, this.s, m);
            }
        } while (true);
        break; /* Loop/switch isn't completed */
_L2:
        if (I.getSplitType() == 2)
        {
            this.s = this.s + e;
            l.setTextSize(2 + d);
            c.drawText(G.getString(0x7f0901e4), v, this.s, l);
            this.s = this.s + e;
        }
        if (true) goto _L4; else goto _L3
_L3:
        if (O && I.getTax1Amt() > 0.0D)
        {
            this.s = this.s + e;
            this.s = this.s + e;
            String s2 = G.getString(0x7f0902bb);
            Object aobj1[] = new Object[1];
            aobj1[0] = I.getTax1Name();
            String s3 = String.format(s2, aobj1);
            c.drawText((new StringBuilder()).append(s3).append(":").toString(), t, this.s, k);
            c.drawText(j.a(A, I.getTax1Amt(), z), u, this.s, m);
        }
        if (O && I.getTax2Amt() > 0.0D)
        {
            this.s = this.s + e;
            String s = G.getString(0x7f0902bb);
            Object aobj[] = new Object[1];
            aobj[0] = I.getTax2Name();
            String s1 = String.format(s, aobj);
            c.drawText((new StringBuilder()).append(s1).append(":").toString(), t, this.s, k);
            c.drawText(j.a(A, I.getTax2Amt(), z), u, this.s, m);
        }
        return;
    }

    protected final void c()
    {
        this.s = this.s + e;
        if (M != null)
        {
            l.setTextSize(d);
            Scanner scanner;
            for (scanner = new Scanner(M); scanner.hasNextLine(); c.drawText(scanner.nextLine(), v, this.s, l))
            {
                this.s = this.s + e;
            }

            scanner.close();
        }
        this.s = this.s + e;
        if (P)
        {
            l.setTextSize(d);
            this.s = this.s + e;
            c.drawText(G.getString(0x7f090135), v, this.s, l);
            String s = j.a(A, h.a(I.getAmount(), 10, A), z);
            String s1 = j.a(A, h.a(I.getAmount(), 15, A), z);
            this.s = this.s + e;
            c.drawText((new StringBuilder("10%=")).append(s).append("  15%=").append(s1).toString(), v, this.s, l);
        }
        this.s = this.s + h;
    }

    protected final void d()
    {
        int k = 3 * e + 4 * e + e + 2 * e + (g + h) + e;
        if (D != null)
        {
            k = (int)((float)(k + e) + (float)D.getHeight() * E) + e;
        }
        if (N != null)
        {
            Scanner scanner;
            for (scanner = new Scanner(N); scanner.hasNextLine();)
            {
                scanner.nextLine();
                k += e;
            }

            scanner.close();
        }
        if (M != null)
        {
            Scanner scanner1;
            for (scanner1 = new Scanner(M); scanner1.hasNextLine();)
            {
                scanner1.nextLine();
                k += e;
            }

            scanner1.close();
        }
        if (Q)
        {
            k += e;
        }
        if (I.getTableId() == 0L || I.getTableId() == -1L || I.getTableId() == -2L)
        {
            k += e;
        }
        if (!O && I.getTax1Amt() > 0.0D)
        {
            k += e;
        }
        if (!O && I.getTax2Amt() > 0.0D)
        {
            k += e;
        }
        if (O && I.getTax1Amt() > 0.0D)
        {
            k = k + e + e;
        }
        if (O && I.getTax2Amt() > 0.0D)
        {
            k += e;
        }
        if (I.getServiceAmt() > 0.0D)
        {
            k += e;
        }
        if (I.getDiscountAmt() > 0.0D)
        {
            k += e;
            if (!TextUtils.isEmpty(I.getDiscountReason()))
            {
                k += e;
            }
        }
        if (I.getDiscountAmt() > 0.0D || I.getServiceAmt() > 0.0D || !O && (I.getTax1Amt() > 0.0D || I.getTax2Amt() > 0.0D))
        {
            k += e;
        }
        Iterator iterator = L.iterator();
        int i1 = k;
        while (iterator.hasNext()) 
        {
            OrderPayment orderpayment = (OrderPayment)iterator.next();
            if (orderpayment.getPaid() > 0.0D)
            {
                i1 += e;
            }
            Iterator iterator1;
            int j1;
            OrderItem orderitem;
            String s;
            int k1;
            int l1;
            List list;
            Iterator iterator2;
            int i2;
            OrderModifier ordermodifier;
            int j2;
            int k2;
            if (orderpayment.getChangeAmt() > 0.0D)
            {
                k2 = i1 + e;
            } else
            {
                k2 = i1;
            }
            i1 = k2;
        }
        if (C.getTaxNumber() != null && !C.getTaxNumber().equals(""))
        {
            i1 += e;
        }
        if (P)
        {
            i1 += 2 * e;
        }
        if (I.getSplitType() > 0)
        {
            i1 += 2 * e;
        }
        if (J != null)
        {
            j2 = i1 + e;
            if (!TextUtils.isEmpty(J.getName()))
            {
                j2 += e;
            }
            if (!TextUtils.isEmpty(J.getAddress1()))
            {
                j2 += e;
            }
            if (!TextUtils.isEmpty(J.getAddress2()))
            {
                j2 += e;
            }
            i1 = j2 + e + e;
        }
        iterator1 = K.iterator();
        j1 = i1;
        while (iterator1.hasNext()) 
        {
            orderitem = (OrderItem)iterator1.next();
            if (orderitem.getStatus() != 1 || F)
            {
                if (orderitem.getStatus() == 1)
                {
                    s = (new StringBuilder()).append(orderitem.getItemName()).append("(").append(G.getString(0x7f090273)).append(")").toString();
                } else
                {
                    s = orderitem.getItemName();
                }
                k1 = j1 + (new StaticLayout((new StringBuilder()).append(orderitem.getNum()).append(" ").append(s).toString(), o, r, android.text.Layout.Alignment.ALIGN_NORMAL, 1.0F, 0.0F, false)).getHeight();
                if (orderitem.getDisAmt() != 0.0D && orderitem.getStatus() != 1)
                {
                    l1 = k1 + (new StaticLayout((new StringBuilder("\t-")).append(j.a(A, orderitem.getDisAmt(), z)).append(": ").append(orderitem.getDisName()).toString(), o, r, android.text.Layout.Alignment.ALIGN_NORMAL, 1.0F, 0.0F, false)).getHeight();
                } else
                {
                    l1 = k1;
                }
                list = orderitem.getOrderModifiers();
                if (list != null && !list.isEmpty())
                {
                    iterator2 = list.iterator();
                    for (i2 = l1; iterator2.hasNext(); i2 += (new StaticLayout((new StringBuilder(" +")).append(ordermodifier.getQty()).append(" ").append(ordermodifier.getModifierName()).toString(), o, r, android.text.Layout.Alignment.ALIGN_NORMAL, 1.0F, 0.0F, false)).getHeight())
                    {
                        ordermodifier = (OrderModifier)iterator2.next();
                    }

                    l1 = i2;
                }
            } else
            {
                l1 = j1;
            }
            j1 = l1;
        }
        b = Bitmap.createBitmap(r, j1, android.graphics.Bitmap.Config.ARGB_8888);
        b.setDensity(960);
        c = new Canvas(b);
        c.drawColor(-1);
    }

    public final volatile Bitmap e()
    {
        return super.e();
    }
}
