// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.a.a;

import java.io.Reader;
import java.util.List;
import java.util.Map;
import org.a.a.a.a;

// Referenced classes of package org.a.a:
//            b, c, a

public final class d
{

    public static Object a(Reader reader)
    {
        Object obj;
        try
        {
            obj = (new a()).a(reader);
        }
        catch (Exception exception)
        {
            return null;
        }
        return obj;
    }

    public static String a(Object obj)
    {
        if (obj == null)
        {
            return "null";
        }
        if (obj instanceof String)
        {
            StringBuffer stringbuffer = new StringBuffer("\"");
            String s = (String)obj;
            String s1;
            if (s == null)
            {
                s1 = null;
            } else
            {
                StringBuffer stringbuffer1 = new StringBuffer();
                a(s, stringbuffer1);
                s1 = stringbuffer1.toString();
            }
            return stringbuffer.append(s1).append("\"").toString();
        }
        if (obj instanceof Double)
        {
            if (((Double)obj).isInfinite() || ((Double)obj).isNaN())
            {
                return "null";
            } else
            {
                return obj.toString();
            }
        }
        if (obj instanceof Float)
        {
            if (((Float)obj).isInfinite() || ((Float)obj).isNaN())
            {
                return "null";
            } else
            {
                return obj.toString();
            }
        }
        if (obj instanceof Number)
        {
            return obj.toString();
        }
        if (obj instanceof Boolean)
        {
            return obj.toString();
        }
        if (obj instanceof b)
        {
            return ((b)obj).a();
        }
        if (obj instanceof Map)
        {
            return org.a.a.c.a((Map)obj);
        }
        if (obj instanceof List)
        {
            return a((List)obj);
        } else
        {
            return obj.toString();
        }
    }

    static void a(String s, StringBuffer stringbuffer)
    {
        int i = 0;
_L11:
        char c1;
        if (i >= s.length())
        {
            break MISSING_BLOCK_LABEL_275;
        }
        c1 = s.charAt(i);
        c1;
        JVM INSTR lookupswitch 8: default 92
    //                   8: 193
    //                   9: 233
    //                   10: 213
    //                   12: 203
    //                   13: 223
    //                   34: 170
    //                   47: 243
    //                   92: 183;
           goto _L1 _L2 _L3 _L4 _L5 _L6 _L7 _L8 _L9
_L9:
        break; /* Loop/switch isn't completed */
_L7:
        stringbuffer.append("\\\"");
_L12:
        i++;
        if (true) goto _L11; else goto _L10
_L10:
        stringbuffer.append("\\\\");
          goto _L12
_L2:
        stringbuffer.append("\\b");
          goto _L12
_L5:
        stringbuffer.append("\\f");
          goto _L12
_L4:
        stringbuffer.append("\\n");
          goto _L12
_L6:
        stringbuffer.append("\\r");
          goto _L12
_L3:
        stringbuffer.append("\\t");
          goto _L12
_L8:
        stringbuffer.append("\\/");
          goto _L12
_L1:
        if ((c1 < 0 || c1 > '\037') && (c1 < '\177' || c1 > '\237') && (c1 < '\u2000' || c1 > '\u20FF'))
        {
            break MISSING_BLOCK_LABEL_266;
        }
        String s1 = Integer.toHexString(c1);
        stringbuffer.append("\\u");
        for (int j = 0; j < 4 - s1.length(); j++)
        {
            stringbuffer.append('0');
        }

        stringbuffer.append(s1.toUpperCase());
        break; /* Loop/switch isn't completed */
        stringbuffer.append(c1);
          goto _L12
    }
}
