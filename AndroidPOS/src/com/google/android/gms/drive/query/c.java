// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.drive.query;

import com.google.android.gms.drive.metadata.a;
import com.google.android.gms.drive.metadata.g;
import com.google.android.gms.drive.query.internal.Operator;
import com.google.android.gms.drive.query.internal.f;
import java.util.Iterator;
import java.util.List;

public final class c
    implements f
{

    public c()
    {
    }

    public final Object a()
    {
        return "all()";
    }

    public final Object a(a a1)
    {
        Object aobj[] = new Object[1];
        aobj[0] = a1.a();
        return String.format("fieldOnly(%s)", aobj);
    }

    public final Object a(a a1, Object obj)
    {
        Object aobj[] = new Object[2];
        aobj[0] = a1.a();
        aobj[1] = obj;
        return String.format("has(%s,%s)", aobj);
    }

    public final Object a(g g1, Object obj)
    {
        Object aobj[] = new Object[2];
        aobj[0] = g1.a();
        aobj[1] = obj;
        return String.format("contains(%s,%s)", aobj);
    }

    public final Object a(Operator operator, a a1, Object obj)
    {
        Object aobj[] = new Object[3];
        aobj[0] = operator.a();
        aobj[1] = a1.a();
        aobj[2] = obj;
        return String.format("cmp(%s,%s,%s)", aobj);
    }

    public final Object a(Operator operator, List list)
    {
        StringBuilder stringbuilder = new StringBuilder((new StringBuilder()).append(operator.a()).append("(").toString());
        Iterator iterator = list.iterator();
        for (String s = ""; iterator.hasNext(); s = ",")
        {
            String s1 = (String)iterator.next();
            stringbuilder.append(s);
            stringbuilder.append(s1);
        }

        return stringbuilder.append(")").toString();
    }

    public final Object a(Object obj)
    {
        return String.format("not(%s)", new Object[] {
            (String)obj
        });
    }
}
