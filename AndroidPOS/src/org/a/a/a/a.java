// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.a.a.a;

import java.io.IOException;
import java.io.Reader;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import org.a.a.c;

// Referenced classes of package org.a.a.a:
//            c, d, b

public final class a
{

    private LinkedList a;
    private org.a.a.a.c b;
    private d c;
    private int d;

    public a()
    {
        b = new org.a.a.a.c();
        c = null;
        d = 0;
    }

    private static int a(LinkedList linkedlist)
    {
        if (linkedlist.size() == 0)
        {
            return -1;
        } else
        {
            return ((Integer)linkedlist.getFirst()).intValue();
        }
    }

    public final Object a(Reader reader)
    {
        LinkedList linkedlist;
        LinkedList linkedlist1;
        b.a(reader);
        c = null;
        d = 0;
        a = null;
        linkedlist = new LinkedList();
        linkedlist1 = new LinkedList();
_L70:
        c = b.b();
        if (c == null)
        {
            c = new d(-1, null);
        }
        d;
        JVM INSTR tableswitch -1 4: default 112
    //                   -1 958
    //                   0 145
    //                   1 294
    //                   2 330
    //                   3 729
    //                   4 479;
           goto _L1 _L2 _L3 _L4 _L5 _L6 _L7
_L14:
        IOException ioexception;
        if (d == -1)
        {
            throw new b(b.a(), 1, c);
        }
          goto _L8
_L3:
        c.a;
        JVM INSTR tableswitch 0 3: default 184
    //                   0 192
    //                   1 226
    //                   2 184
    //                   3 260;
           goto _L9 _L10 _L11 _L9 _L12
_L16:
        if (true) goto _L14; else goto _L13
_L13:
_L18:
        if (true) goto _L16; else goto _L15
_L15:
_L20:
        if (true) goto _L18; else goto _L17
_L17:
_L22:
        if (true) goto _L20; else goto _L19
_L19:
_L24:
        if (true) goto _L22; else goto _L21
_L21:
_L26:
        if (true) goto _L24; else goto _L23
_L23:
_L28:
        if (true) goto _L26; else goto _L25
_L25:
_L30:
        if (true) goto _L28; else goto _L27
_L27:
_L32:
        if (true) goto _L30; else goto _L29
_L29:
_L34:
        if (true) goto _L32; else goto _L31
_L31:
_L36:
        if (true) goto _L34; else goto _L33
_L33:
_L38:
        if (true) goto _L36; else goto _L35
_L35:
_L40:
        if (true) goto _L38; else goto _L37
_L37:
_L42:
        if (true) goto _L40; else goto _L39
_L39:
_L44:
        if (true) goto _L42; else goto _L41
_L41:
_L46:
        if (true) goto _L44; else goto _L43
_L43:
_L48:
        if (true) goto _L46; else goto _L45
_L45:
_L1:
        if (true) goto _L48; else goto _L47
_L47:
_L9:
        d = -1;
          goto _L14
_L10:
        try
        {
            d = 1;
            linkedlist.addFirst(new Integer(d));
            linkedlist1.addFirst(c.b);
        }
        // Misplaced declaration of an exception variable
        catch (IOException ioexception)
        {
            throw ioexception;
        }
          goto _L14
_L11:
        d = 2;
        linkedlist.addFirst(new Integer(d));
        linkedlist1.addFirst(new c());
          goto _L14
_L12:
        d = 3;
        linkedlist.addFirst(new Integer(d));
        linkedlist1.addFirst(new org.a.a.a());
          goto _L14
_L4:
        if (c.a == -1)
        {
            return linkedlist1.removeFirst();
        } else
        {
            throw new b(b.a(), 1, c);
        }
_L5:
        c.a;
        JVM INSTR tableswitch 0 5: default 376
    //                   0 384
    //                   1 376
    //                   2 442
    //                   3 376
    //                   4 376
    //                   5 112;
           goto _L49 _L50 _L49 _L51 _L49 _L49 _L14
_L49:
        d = -1;
          goto _L14
_L50:
        if (!(c.b instanceof String)) goto _L53; else goto _L52
_L52:
        linkedlist1.addFirst((String)c.b);
        d = 4;
        linkedlist.addFirst(new Integer(d));
          goto _L14
_L53:
        d = -1;
          goto _L14
_L51:
        if (linkedlist1.size() <= 1) goto _L55; else goto _L54
_L54:
        linkedlist.removeFirst();
        linkedlist1.removeFirst();
        d = a(linkedlist);
          goto _L14
_L55:
        d = 1;
          goto _L14
_L7:
        c.a;
        JVM INSTR tableswitch 0 6: default 528
    //                   0 536
    //                   1 656
    //                   2 528
    //                   3 583
    //                   4 528
    //                   5 528
    //                   6 112;
           goto _L56 _L57 _L58 _L56 _L59 _L56 _L56 _L60
_L60:
        if (true) goto _L14; else goto _L61
_L61:
_L56:
        d = -1;
          goto _L14
_L57:
        linkedlist.removeFirst();
        String s2 = (String)linkedlist1.removeFirst();
        ((Map)linkedlist1.getFirst()).put(s2, c.b);
        d = a(linkedlist);
          goto _L14
_L59:
        linkedlist.removeFirst();
        String s1 = (String)linkedlist1.removeFirst();
        Map map1 = (Map)linkedlist1.getFirst();
        org.a.a.a a2 = new org.a.a.a();
        map1.put(s1, a2);
        d = 3;
        linkedlist.addFirst(new Integer(d));
        linkedlist1.addFirst(a2);
          goto _L14
_L58:
        linkedlist.removeFirst();
        String s = (String)linkedlist1.removeFirst();
        Map map = (Map)linkedlist1.getFirst();
        c c2 = new c();
        map.put(s, c2);
        d = 2;
        linkedlist.addFirst(new Integer(d));
        linkedlist1.addFirst(c2);
          goto _L14
_L6:
        c.a;
        JVM INSTR tableswitch 0 5: default 776
    //                   0 784
    //                   1 844
    //                   2 776
    //                   3 901
    //                   4 807
    //                   5 112;
           goto _L62 _L63 _L64 _L62 _L65 _L66 _L14
_L62:
        d = -1;
          goto _L14
_L63:
        ((List)linkedlist1.getFirst()).add(c.b);
          goto _L14
_L66:
        if (linkedlist1.size() <= 1) goto _L68; else goto _L67
_L67:
        linkedlist.removeFirst();
        linkedlist1.removeFirst();
        d = a(linkedlist);
          goto _L14
_L68:
        d = 1;
          goto _L14
_L64:
        List list1 = (List)linkedlist1.getFirst();
        c c1 = new c();
        list1.add(c1);
        d = 2;
        linkedlist.addFirst(new Integer(d));
        linkedlist1.addFirst(c1);
          goto _L14
_L65:
        List list = (List)linkedlist1.getFirst();
        org.a.a.a a1 = new org.a.a.a();
        list.add(a1);
        d = 3;
        linkedlist.addFirst(new Integer(d));
        linkedlist1.addFirst(a1);
          goto _L14
_L2:
        throw new b(b.a(), 1, c);
_L8:
        int i = c.a;
        if (i == -1)
        {
            throw new b(b.a(), 1, c);
        }
        if (true) goto _L70; else goto _L69
_L69:
    }
}
