// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.e;

import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.widget.Toast;
import com.aadhk.printer.i;
import com.aadhk.product.library.c.c;
import com.aadhk.restpos.POSApp;
import com.aadhk.restpos.StatisticService;
import com.aadhk.restpos.bean.Customer;
import com.aadhk.restpos.bean.Order;
import com.aadhk.restpos.bean.OrderItem;
import com.aadhk.restpos.bean.POSPrinterSetting;
import com.aadhk.restpos.util.f;
import com.aadhk.restpos.util.k;
import com.aadhk.restpos.util.q;
import com.bugsense.trace.BugSenseHandler;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;

// Referenced classes of package com.aadhk.restpos.e:
//            d, b, a, e

public final class g
{

    private final Context a;

    public g(Context context)
    {
        a = context;
    }

    private static POSPrinterSetting a(List list, int j)
    {
        for (Iterator iterator = list.iterator(); iterator.hasNext();)
        {
            POSPrinterSetting posprintersetting = (POSPrinterSetting)iterator.next();
            if (posprintersetting.getId() == j)
            {
                return posprintersetting;
            }
        }

        return null;
    }

    public final void a(POSPrinterSetting posprintersetting)
    {
        i.a(a, posprintersetting);
    }

    public final void a(POSPrinterSetting posprintersetting, Order order, Customer customer, List list)
    {
        if (posprintersetting == null)
        {
            break MISSING_BLOCK_LABEL_144;
        }
        android.graphics.Bitmap bitmap = d.a(a, order, customer, list, posprintersetting, false);
        i.a(a, posprintersetting, bitmap);
        POSApp.a = 1 + POSApp.a;
        posprintersetting.setDeviceId(android.provider.Settings.Secure.getString(a.getContentResolver(), "android_id"));
        posprintersetting.setUpdateDate(c.c());
        posprintersetting.setUser(order.getWaiterName());
        posprintersetting.setLocale((new StringBuilder()).append(Build.MODEL).append(" ").append(android.os.Build.VERSION.SDK_INT).append(" ").append(Locale.getDefault()).toString());
        Intent intent = new Intent(a, com/aadhk/restpos/StatisticService);
        intent.putExtra("bundlePrinter", posprintersetting);
        a.startService(intent);
        return;
        Exception exception;
        exception;
        BugSenseHandler.sendException(exception);
        exception.printStackTrace();
        return;
    }

    public final void a(POSPrinterSetting posprintersetting, Order order, List list)
    {
        if (posprintersetting == null)
        {
            break MISSING_BLOCK_LABEL_141;
        }
        android.graphics.Bitmap bitmap = com.aadhk.restpos.e.b.a(a, order, list, posprintersetting);
        i.a(a, posprintersetting, bitmap);
        POSApp.a = 1 + POSApp.a;
        posprintersetting.setDeviceId(android.provider.Settings.Secure.getString(a.getContentResolver(), "android_id"));
        posprintersetting.setUpdateDate(c.c());
        posprintersetting.setUser(order.getWaiterName());
        posprintersetting.setLocale((new StringBuilder()).append(Build.MODEL).append(" ").append(android.os.Build.VERSION.SDK_INT).append(" ").append(Locale.getDefault()).toString());
        Intent intent = new Intent(a, com/aadhk/restpos/StatisticService);
        intent.putExtra("bundlePrinter", posprintersetting);
        a.startService(intent);
        return;
        Exception exception;
        exception;
        BugSenseHandler.sendException(exception);
        exception.printStackTrace();
        return;
    }

    public final void a(POSPrinterSetting posprintersetting, Order order, List list, Customer customer)
    {
        if (posprintersetting == null)
        {
            break MISSING_BLOCK_LABEL_214;
        }
        android.graphics.Bitmap bitmap;
        Intent intent;
        if (posprintersetting.getPrintType() == 1)
        {
            bitmap = d.a(a, order, customer, list, posprintersetting, false);
        } else
        {
            bitmap = com.aadhk.restpos.e.a.a(a, order, list, posprintersetting);
        }
        i.a(a, posprintersetting, bitmap);
        k.a(bitmap, (new StringBuilder()).append(f.c).append("/").append(com.aadhk.product.library.c.f.e(a.getString(0x7f08015e))).append(".jpg").toString());
        POSApp.a = 1 + POSApp.a;
        posprintersetting.setDeviceId(android.provider.Settings.Secure.getString(a.getContentResolver(), "android_id"));
        posprintersetting.setUpdateDate(c.c());
        posprintersetting.setUser((new StringBuilder("test:")).append(order.getWaiterName()).toString());
        posprintersetting.setLocale((new StringBuilder()).append(Build.MODEL).append(" ").append(android.os.Build.VERSION.SDK_INT).append(" ").append(Locale.getDefault()).toString());
        intent = new Intent(a, com/aadhk/restpos/StatisticService);
        intent.putExtra("bundlePrinter", posprintersetting);
        a.startService(intent);
        return;
        Exception exception;
        exception;
        BugSenseHandler.sendException(exception);
        exception.printStackTrace();
        return;
    }

    public final void a(POSPrinterSetting posprintersetting, Order order, List list, Customer customer, String s, boolean flag)
    {
        if (posprintersetting == null)
        {
            break MISSING_BLOCK_LABEL_119;
        }
        android.graphics.Bitmap bitmap;
        String as[];
        String s1;
        try
        {
            bitmap = d.a(a, order, customer, list, posprintersetting, flag);
        }
        catch (IOException ioexception)
        {
            BugSenseHandler.sendException(ioexception);
            ioexception.printStackTrace();
            return;
        }
        as = null;
        if (customer == null)
        {
            break MISSING_BLOCK_LABEL_43;
        }
        as = new String[1];
        as[0] = customer.getEmail();
        (new File(f.c)).mkdirs();
        s1 = (new StringBuilder()).append(f.c).append("/").append(com.aadhk.product.library.c.f.e(a.getString(0x7f08015e))).append(".jpg").toString();
        q.a(a, k.a(bitmap, s1), as, s);
        return;
        Toast.makeText(a, 0x7f08016e, 1).show();
        return;
    }

    public final void a(POSPrinterSetting posprintersetting, List list, String s, String s1, String s2, String s3, String s4)
    {
        if (posprintersetting != null)
        {
            android.graphics.Bitmap bitmap = e.a(a, posprintersetting, list, s, s1, s2, s3, s4);
            i.a(a, posprintersetting, bitmap);
        }
    }

    public final void a(String s, POSPrinterSetting posprintersetting, List list, String s1, String s2, String s3, String s4, 
            String s5)
    {
        if (posprintersetting != null)
        {
            try
            {
                android.graphics.Bitmap bitmap = e.a(a, posprintersetting, list, s1, s2, s3, s4, s5);
                (new File(f.c)).mkdirs();
                String s6 = (new StringBuilder()).append(f.c).append("/").append(com.aadhk.product.library.c.f.e(s1)).append(".jpg").toString();
                q.a(a, k.a(bitmap, s6), new String[] {
                    s
                }, s1);
                return;
            }
            catch (IOException ioexception)
            {
                BugSenseHandler.sendException(ioexception);
                ioexception.printStackTrace();
                return;
            }
        }
        Toast.makeText(a, 0x7f08016e, 1).show();
        return;
    }

    public final void a(List list, Order order, List list1, boolean flag)
    {
        HashMap hashmap = new HashMap();
        ArrayList arraylist = new ArrayList();
        if (!list.isEmpty())
        {
            Iterator iterator = list1.iterator();
            do
            {
                if (!iterator.hasNext())
                {
                    break;
                }
                OrderItem orderitem1 = (OrderItem)iterator.next();
                int j = orderitem1.getPrinterId();
                if (j != 0)
                {
                    Object obj = (List)hashmap.get(Integer.valueOf(j));
                    if (obj == null)
                    {
                        POSPrinterSetting posprintersetting1 = a(list, j);
                        if (posprintersetting1 != null)
                        {
                            obj = new ArrayList();
                            arraylist.add(posprintersetting1);
                            hashmap.put(Integer.valueOf(j), obj);
                        }
                    }
                    ((List) (obj)).add(orderitem1);
                }
            } while (true);
            for (Iterator iterator1 = arraylist.iterator(); iterator1.hasNext();)
            {
                POSPrinterSetting posprintersetting = (POSPrinterSetting)iterator1.next();
                List list2 = (List)hashmap.get(Integer.valueOf(posprintersetting.getId()));
                if (posprintersetting.isPrintSeparate())
                {
                    ArrayList arraylist1 = new ArrayList();
                    android.graphics.Bitmap bitmap;
                    for (Iterator iterator2 = list2.iterator(); iterator2.hasNext(); i.a(a, posprintersetting, bitmap))
                    {
                        OrderItem orderitem = (OrderItem)iterator2.next();
                        arraylist1.clear();
                        arraylist1.add(orderitem);
                        bitmap = com.aadhk.restpos.e.a.a(a, order, arraylist1, posprintersetting, flag);
                    }

                } else
                {
                    android.graphics.Bitmap bitmap1 = com.aadhk.restpos.e.a.a(a, order, list2, posprintersetting, flag);
                    i.a(a, posprintersetting, bitmap1);
                }
                POSApp.a = 1 + POSApp.a;
                try
                {
                    posprintersetting.setDeviceId(android.provider.Settings.Secure.getString(a.getContentResolver(), "android_id"));
                    posprintersetting.setUpdateDate(c.c());
                    posprintersetting.setUser(order.getWaiterName());
                    posprintersetting.setLocale((new StringBuilder()).append(Build.MODEL).append(" ").append(android.os.Build.VERSION.SDK_INT).append(" ").append(Locale.getDefault()).toString());
                    Intent intent = new Intent(a, com/aadhk/restpos/StatisticService);
                    intent.putExtra("bundlePrinter", posprintersetting);
                    a.startService(intent);
                }
                catch (Exception exception)
                {
                    BugSenseHandler.sendException(exception);
                    exception.printStackTrace();
                }
            }

        }
    }

    public final void b(POSPrinterSetting posprintersetting)
    {
        if (posprintersetting != null)
        {
            i.b(a, posprintersetting);
        }
    }
}
