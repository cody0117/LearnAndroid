// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.a.a;

import java.lang.reflect.Field;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

// Referenced classes of package com.google.a.a:
//            g, f

public abstract class e
{

    public e()
    {
    }

    public final void a(Map map)
    {
        HashMap hashmap = new HashMap();
        Field afield[] = getClass().getFields();
        int i = afield.length;
        for (int j = 0; j < i; j++)
        {
            Field field2 = afield[j];
            g g1 = (g)field2.getAnnotation(com/google/a/a/g);
            if (g1 != null)
            {
                hashmap.put(g1.a(), field2);
            }
        }

        hashmap.isEmpty();
        for (Iterator iterator = map.entrySet().iterator(); iterator.hasNext();)
        {
            java.util.Map.Entry entry = (java.util.Map.Entry)iterator.next();
            Field field1 = (Field)hashmap.remove(entry.getKey());
            if (field1 != null)
            {
                try
                {
                    field1.set(this, entry.getValue());
                }
                catch (IllegalAccessException illegalaccessexception)
                {
                    (new StringBuilder("Server option \"")).append((String)entry.getKey()).append("\" could not be set: Illegal Access");
                }
                catch (IllegalArgumentException illegalargumentexception)
                {
                    (new StringBuilder("Server option \"")).append((String)entry.getKey()).append("\" could not be set: Bad Type");
                }
            } else
            {
                (new StringBuilder("Unexpected server option: ")).append((String)entry.getKey()).append(" = \"").append((String)entry.getValue()).append("\"");
            }
        }

        StringBuilder stringbuilder = new StringBuilder();
        Iterator iterator1 = hashmap.values().iterator();
        do
        {
            if (!iterator1.hasNext())
            {
                break;
            }
            Field field = (Field)iterator1.next();
            if (((g)field.getAnnotation(com/google/a/a/g)).b())
            {
                (new StringBuilder("Required server option missing: ")).append(((g)field.getAnnotation(com/google/a/a/g)).a());
                if (stringbuilder.length() > 0)
                {
                    stringbuilder.append(", ");
                }
                stringbuilder.append(((g)field.getAnnotation(com/google/a/a/g)).a());
            }
        } while (true);
        if (stringbuilder.length() > 0)
        {
            throw new f((new StringBuilder("Required server option(s) missing: ")).append(stringbuilder.toString()).toString());
        } else
        {
            return;
        }
    }
}
