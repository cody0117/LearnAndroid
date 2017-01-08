// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.gson.internal;

import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.logging.Level;
import java.util.logging.Logger;

// Referenced classes of package com.google.gson.internal:
//            Pair

public final class ParameterizedTypeHandlerMap
{

    private static final Logger logger = Logger.getLogger(com/google/gson/internal/ParameterizedTypeHandlerMap.getName());
    private boolean modifiable;
    private final Map systemMap = new HashMap();
    private final List systemTypeHierarchyList = new ArrayList();
    private final Map userMap = new HashMap();
    private final List userTypeHierarchyList = new ArrayList();

    public ParameterizedTypeHandlerMap()
    {
        modifiable = true;
    }

    private void appendList(StringBuilder stringbuilder, List list)
    {
        Iterator iterator = list.iterator();
        boolean flag = true;
        while (iterator.hasNext()) 
        {
            Pair pair = (Pair)iterator.next();
            boolean flag1;
            if (flag)
            {
                flag1 = false;
            } else
            {
                stringbuilder.append(',');
                flag1 = flag;
            }
            stringbuilder.append(typeToString((Type)pair.first)).append(':');
            stringbuilder.append(pair.second);
            flag = flag1;
        }
    }

    private void appendMap(StringBuilder stringbuilder, Map map)
    {
        Iterator iterator = map.entrySet().iterator();
        boolean flag = true;
        while (iterator.hasNext()) 
        {
            java.util.Map.Entry entry = (java.util.Map.Entry)iterator.next();
            boolean flag1;
            if (flag)
            {
                flag1 = false;
            } else
            {
                stringbuilder.append(',');
                flag1 = flag;
            }
            stringbuilder.append(typeToString((Type)entry.getKey())).append(':');
            stringbuilder.append(entry.getValue());
            flag = flag1;
        }
    }

    private Object getHandlerForTypeHierarchy(Class class1, boolean flag)
    {
label0:
        {
            if (flag)
            {
                break label0;
            }
            Iterator iterator1 = userTypeHierarchyList.iterator();
            Pair pair1;
            do
            {
                if (!iterator1.hasNext())
                {
                    break label0;
                }
                pair1 = (Pair)iterator1.next();
            } while (!((Class)pair1.first).isAssignableFrom(class1));
            return pair1.second;
        }
        for (Iterator iterator = systemTypeHierarchyList.iterator(); iterator.hasNext();)
        {
            Pair pair = (Pair)iterator.next();
            if (((Class)pair.first).isAssignableFrom(class1))
            {
                return pair.second;
            }
        }

        return null;
    }

    private static int getIndexOfAnOverriddenHandler(Class class1, List list)
    {
        for (int i = -1 + list.size(); i >= 0; i--)
        {
            if (class1.isAssignableFrom((Class)((Pair)list.get(i)).first))
            {
                return i;
            }
        }

        return -1;
    }

    private static int getIndexOfSpecificHandlerForTypeHierarchy(Class class1, List list)
    {
        for (int i = -1 + list.size(); i >= 0; i--)
        {
            if (class1.equals(((Pair)list.get(i)).first))
            {
                return i;
            }
        }

        return -1;
    }

    private String typeToString(Type type)
    {
        return .Gson.Types.getRawType(type).getSimpleName();
    }

    public final ParameterizedTypeHandlerMap copyOf()
    {
        this;
        JVM INSTR monitorenter ;
        ParameterizedTypeHandlerMap parameterizedtypehandlermap;
        parameterizedtypehandlermap = new ParameterizedTypeHandlerMap();
        parameterizedtypehandlermap.systemMap.putAll(systemMap);
        parameterizedtypehandlermap.userMap.putAll(userMap);
        parameterizedtypehandlermap.systemTypeHierarchyList.addAll(systemTypeHierarchyList);
        parameterizedtypehandlermap.userTypeHierarchyList.addAll(userTypeHierarchyList);
        this;
        JVM INSTR monitorexit ;
        return parameterizedtypehandlermap;
        Exception exception;
        exception;
        throw exception;
    }

    public final Object getHandlerFor(Type type, boolean flag)
    {
        this;
        JVM INSTR monitorenter ;
        if (flag) goto _L2; else goto _L1
_L1:
        Object obj2 = userMap.get(type);
        Object obj = obj2;
        if (obj == null) goto _L2; else goto _L3
_L3:
        this;
        JVM INSTR monitorexit ;
        return obj;
_L2:
        obj = systemMap.get(type);
        if (obj != null)
        {
            continue; /* Loop/switch isn't completed */
        }
        Class class1 = .Gson.Types.getRawType(type);
        if (class1 == type)
        {
            break MISSING_BLOCK_LABEL_75;
        }
        obj = getHandlerFor(((Type) (class1)), flag);
        if (obj != null)
        {
            continue; /* Loop/switch isn't completed */
        }
        Object obj1 = getHandlerForTypeHierarchy(class1, flag);
        obj = obj1;
        if (true) goto _L3; else goto _L4
_L4:
        Exception exception;
        exception;
        throw exception;
    }

    public final boolean hasSpecificHandlerFor(Type type)
    {
        this;
        JVM INSTR monitorenter ;
        if (userMap.containsKey(type)) goto _L2; else goto _L1
_L1:
        boolean flag1 = systemMap.containsKey(type);
        if (!flag1) goto _L3; else goto _L2
_L2:
        boolean flag = true;
_L5:
        this;
        JVM INSTR monitorexit ;
        return flag;
_L3:
        flag = false;
        if (true) goto _L5; else goto _L4
_L4:
        Exception exception;
        exception;
        throw exception;
    }

    public final ParameterizedTypeHandlerMap makeUnmodifiable()
    {
        this;
        JVM INSTR monitorenter ;
        modifiable = false;
        this;
        JVM INSTR monitorexit ;
        return this;
        Exception exception;
        exception;
        throw exception;
    }

    public final void register(Type type, Object obj, boolean flag)
    {
        this;
        JVM INSTR monitorenter ;
        if (!modifiable)
        {
            throw new IllegalStateException("Attempted to modify an unmodifiable map.");
        }
        break MISSING_BLOCK_LABEL_26;
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
        if (hasSpecificHandlerFor(type))
        {
            logger.log(Level.WARNING, "Overriding the existing type handler for {0}", type);
        }
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_69;
        }
        Map map = systemMap;
_L1:
        map.put(type, obj);
        this;
        JVM INSTR monitorexit ;
        return;
        map = userMap;
          goto _L1
    }

    public final void registerForTypeHierarchy(Pair pair, boolean flag)
    {
        this;
        JVM INSTR monitorenter ;
        if (!modifiable)
        {
            throw new IllegalStateException("Attempted to modify an unmodifiable map.");
        }
        break MISSING_BLOCK_LABEL_24;
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_152;
        }
        List list = systemTypeHierarchyList;
_L1:
        int i = getIndexOfSpecificHandlerForTypeHierarchy((Class)pair.first, list);
        if (i < 0)
        {
            break MISSING_BLOCK_LABEL_78;
        }
        logger.log(Level.WARNING, "Overriding the existing type handler for {0}", pair.first);
        list.remove(i);
        int j = getIndexOfAnOverriddenHandler((Class)pair.first, list);
        if (j < 0)
        {
            break MISSING_BLOCK_LABEL_161;
        }
        throw new IllegalArgumentException((new StringBuilder("The specified type handler for type ")).append(pair.first).append(" hides the previously registered type hierarchy handler for ").append(((Pair)list.get(j)).first).append(". Gson does not allow this.").toString());
        list = userTypeHierarchyList;
          goto _L1
        list.add(0, pair);
        this;
        JVM INSTR monitorexit ;
    }

    public final void registerForTypeHierarchy(Class class1, Object obj, boolean flag)
    {
        this;
        JVM INSTR monitorenter ;
        registerForTypeHierarchy(new Pair(class1, obj), flag);
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public final void registerIfAbsent(ParameterizedTypeHandlerMap parameterizedtypehandlermap)
    {
        this;
        JVM INSTR monitorenter ;
        if (!modifiable)
        {
            throw new IllegalStateException("Attempted to modify an unmodifiable map.");
        }
        break MISSING_BLOCK_LABEL_24;
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
        Iterator iterator = parameterizedtypehandlermap.userMap.entrySet().iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            java.util.Map.Entry entry1 = (java.util.Map.Entry)iterator.next();
            if (!userMap.containsKey(entry1.getKey()))
            {
                register((Type)entry1.getKey(), entry1.getValue(), false);
            }
        } while (true);
        Iterator iterator1 = parameterizedtypehandlermap.systemMap.entrySet().iterator();
        do
        {
            if (!iterator1.hasNext())
            {
                break;
            }
            java.util.Map.Entry entry = (java.util.Map.Entry)iterator1.next();
            if (!systemMap.containsKey(entry.getKey()))
            {
                register((Type)entry.getKey(), entry.getValue(), true);
            }
        } while (true);
        int i = -1 + parameterizedtypehandlermap.userTypeHierarchyList.size();
_L5:
        if (i < 0)
        {
            break MISSING_BLOCK_LABEL_247;
        }
        Pair pair = (Pair)parameterizedtypehandlermap.userTypeHierarchyList.get(i);
        if (getIndexOfSpecificHandlerForTypeHierarchy((Class)pair.first, userTypeHierarchyList) < 0)
        {
            registerForTypeHierarchy(pair, false);
        }
        break MISSING_BLOCK_LABEL_315;
        int j = -1 + parameterizedtypehandlermap.systemTypeHierarchyList.size();
_L3:
        if (j < 0) goto _L2; else goto _L1
_L1:
        Pair pair1 = (Pair)parameterizedtypehandlermap.systemTypeHierarchyList.get(j);
        if (getIndexOfSpecificHandlerForTypeHierarchy((Class)pair1.first, systemTypeHierarchyList) < 0)
        {
            registerForTypeHierarchy(pair1, true);
        }
        j--;
          goto _L3
_L2:
        this;
        JVM INSTR monitorexit ;
        return;
        i--;
        if (true) goto _L5; else goto _L4
_L4:
    }

    public final String toString()
    {
        StringBuilder stringbuilder = new StringBuilder("{userTypeHierarchyList:{");
        appendList(stringbuilder, userTypeHierarchyList);
        stringbuilder.append("},systemTypeHierarchyList:{");
        appendList(stringbuilder, systemTypeHierarchyList);
        stringbuilder.append("},userMap:{");
        appendMap(stringbuilder, userMap);
        stringbuilder.append("},systemMap:{");
        appendMap(stringbuilder, systemMap);
        stringbuilder.append("}");
        return stringbuilder.toString();
    }

}
