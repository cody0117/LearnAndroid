// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.gson;

import com.google.gson.internal.Pair;
import java.lang.annotation.Annotation;
import java.lang.reflect.Field;
import java.lang.reflect.Type;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;

// Referenced classes of package com.google.gson:
//            LruCache, Cache

public final class FieldAttributes
{

    private static final Cache ANNOTATION_CACHE = new LruCache(getMaxCacheSize());
    private static final String MAX_CACHE_PROPERTY_NAME = "com.google.gson.annotation_cache_size_hint";
    private Collection annotations;
    private final Class declaredType;
    private final Class declaringClazz;
    private final Field field;
    private Type genericType;
    private final boolean isSynthetic;
    private final int modifiers;
    private final String name;

    FieldAttributes(Class class1, Field field1)
    {
        declaringClazz = (Class)com.google.gson.internal..Gson.Preconditions.checkNotNull(class1);
        name = field1.getName();
        declaredType = field1.getType();
        isSynthetic = field1.isSynthetic();
        modifiers = field1.getModifiers();
        field = field1;
    }

    private static Annotation getAnnotationFromArray(Collection collection, Class class1)
    {
        for (Iterator iterator = collection.iterator(); iterator.hasNext();)
        {
            Annotation annotation = (Annotation)iterator.next();
            if (annotation.annotationType() == class1)
            {
                return annotation;
            }
        }

        return null;
    }

    private static int getMaxCacheSize()
    {
        int i;
        try
        {
            i = Integer.parseInt(System.getProperty("com.google.gson.annotation_cache_size_hint", String.valueOf(2000)));
        }
        catch (NumberFormatException numberformatexception)
        {
            return 2000;
        }
        return i;
    }

    final Object get(Object obj)
    {
        return field.get(obj);
    }

    public final Annotation getAnnotation(Class class1)
    {
        return getAnnotationFromArray(getAnnotations(), class1);
    }

    public final Collection getAnnotations()
    {
        if (annotations == null)
        {
            Pair pair = new Pair(declaringClazz, name);
            Collection collection = (Collection)ANNOTATION_CACHE.getElement(pair);
            if (collection == null)
            {
                collection = Collections.unmodifiableCollection(Arrays.asList(field.getAnnotations()));
                ANNOTATION_CACHE.addElement(pair, collection);
            }
            annotations = collection;
        }
        return annotations;
    }

    public final Class getDeclaredClass()
    {
        return declaredType;
    }

    public final Type getDeclaredType()
    {
        if (genericType == null)
        {
            genericType = field.getGenericType();
        }
        return genericType;
    }

    public final Class getDeclaringClass()
    {
        return declaringClazz;
    }

    final Field getFieldObject()
    {
        return field;
    }

    public final String getName()
    {
        return name;
    }

    public final boolean hasModifier(int i)
    {
        return (i & modifiers) != 0;
    }

    final boolean isSynthetic()
    {
        return isSynthetic;
    }

}
