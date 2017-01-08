// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.a.a;

import android.content.Context;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.apache.http.NameValuePair;
import org.apache.http.client.utils.URLEncodedUtils;

// Referenced classes of package com.google.android.a.a:
//            p, q, r, o

public final class s
    implements p
{

    private long a;
    private long b;
    private long c;
    private long d;
    private long e;
    private int f;
    private q g;

    public s(Context context, o o)
    {
        e = 0L;
        g = new q(context.getSharedPreferences("com.android.vending.licensing.ServerManagedPolicy", 0), o);
        f = Integer.parseInt(g.b("lastResponse", Integer.toString(291)));
        a = Long.parseLong(g.b("validityTimestamp", "0"));
        b = Long.parseLong(g.b("retryUntil", "0"));
        c = Long.parseLong(g.b("maxRetries", "0"));
        d = Long.parseLong(g.b("retryCount", "0"));
    }

    private void a(long l)
    {
        d = l;
        g.a("retryCount", Long.toString(l));
    }

    private void a(String s1)
    {
        Long long2 = Long.valueOf(Long.parseLong(s1));
        Long long1 = long2;
_L2:
        a = long1.longValue();
        g.a("validityTimestamp", s1);
        return;
        NumberFormatException numberformatexception;
        numberformatexception;
        long1 = Long.valueOf(60000L + System.currentTimeMillis());
        s1 = Long.toString(long1.longValue());
        if (true) goto _L2; else goto _L1
_L1:
    }

    private void b(String s1)
    {
        Long long2 = Long.valueOf(Long.parseLong(s1));
        Long long1 = long2;
_L2:
        b = long1.longValue();
        g.a("retryUntil", s1);
        return;
        NumberFormatException numberformatexception;
        numberformatexception;
        s1 = "0";
        long1 = Long.valueOf(0L);
        if (true) goto _L2; else goto _L1
_L1:
    }

    private void c(String s1)
    {
        Long long2 = Long.valueOf(Long.parseLong(s1));
        Long long1 = long2;
_L2:
        c = long1.longValue();
        g.a("maxRetries", s1);
        return;
        NumberFormatException numberformatexception;
        numberformatexception;
        s1 = "0";
        long1 = Long.valueOf(0L);
        if (true) goto _L2; else goto _L1
_L1:
    }

    private static Map d(String s1)
    {
        HashMap hashmap = new HashMap();
        Iterator iterator = URLEncodedUtils.parse(new URI((new StringBuilder("?")).append(s1).toString()), "UTF-8").iterator();
        do
        {
            if (!iterator.hasNext())
            {
                return hashmap;
            }
            try
            {
                NameValuePair namevaluepair = (NameValuePair)iterator.next();
                hashmap.put(namevaluepair.getName(), namevaluepair.getValue());
            }
            catch (URISyntaxException urisyntaxexception)
            {
                return hashmap;
            }
        } while (true);
    }

    public final void a(int i, r r1)
    {
        if (i != 291)
        {
            a(0L);
        } else
        {
            a(1L + d);
        }
        if (i != 256) goto _L2; else goto _L1
_L1:
        Map map = d(r1.g);
        f = i;
        a((String)map.get("VT"));
        b((String)map.get("GT"));
        c((String)map.get("GR"));
_L4:
        e = System.currentTimeMillis();
        f = i;
        g.a("lastResponse", Integer.toString(i));
        g.a();
        return;
_L2:
        if (i == 561)
        {
            a("0");
            b("0");
            c("0");
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public final boolean a()
    {
        long l = System.currentTimeMillis();
        if (f != 256) goto _L2; else goto _L1
_L1:
        if (l > a) goto _L4; else goto _L3
_L3:
        return true;
_L2:
        if (f != 291 || l >= 60000L + e)
        {
            break; /* Loop/switch isn't completed */
        }
        if (l > b && d > c)
        {
            return false;
        }
        if (true) goto _L3; else goto _L4
_L4:
        return false;
    }
}
