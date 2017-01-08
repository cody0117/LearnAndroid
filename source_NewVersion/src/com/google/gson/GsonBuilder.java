// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.gson;

import com.google.gson.internal.ParameterizedTypeHandlerMap;
import com.google.gson.internal.Primitives;
import java.lang.reflect.Type;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Set;

// Referenced classes of package com.google.gson:
//            InnerClassExclusionStrategy, ExposeAnnotationDeserializationExclusionStrategy, ExposeAnnotationSerializationExclusionStrategy, Gson, 
//            LongSerializationPolicy, JsonDeserializerExceptionWrapper, JsonSerializer, JsonDeserializer, 
//            InstanceCreator, VersionExclusionStrategy, DisjunctionExclusionStrategy, ModifierBasedExclusionStrategy, 
//            FieldNamingPolicy, SerializedNameAnnotationInterceptingNamingPolicy, FieldNamingStrategy2Adapter, FieldNamingStrategy2, 
//            ExclusionStrategy, FieldNamingStrategy

public final class GsonBuilder
{

    private static final ExposeAnnotationDeserializationExclusionStrategy exposeAnnotationDeserializationExclusionStrategy = new ExposeAnnotationDeserializationExclusionStrategy();
    private static final ExposeAnnotationSerializationExclusionStrategy exposeAnnotationSerializationExclusionStrategy = new ExposeAnnotationSerializationExclusionStrategy();
    private static final InnerClassExclusionStrategy innerClassExclusionStrategy = new InnerClassExclusionStrategy();
    private boolean complexMapKeySerialization;
    private String datePattern;
    private int dateStyle;
    private final Set deserializeExclusionStrategies = new HashSet();
    private final ParameterizedTypeHandlerMap deserializers = new ParameterizedTypeHandlerMap();
    private boolean escapeHtmlChars;
    private boolean excludeFieldsWithoutExposeAnnotation;
    private FieldNamingStrategy2 fieldNamingPolicy;
    private boolean generateNonExecutableJson;
    private double ignoreVersionsAfter;
    private final ParameterizedTypeHandlerMap instanceCreators = new ParameterizedTypeHandlerMap();
    private LongSerializationPolicy longSerializationPolicy;
    private ModifierBasedExclusionStrategy modifierBasedExclusionStrategy;
    private boolean prettyPrinting;
    private final Set serializeExclusionStrategies = new HashSet();
    private boolean serializeInnerClasses;
    private boolean serializeNulls;
    private boolean serializeSpecialFloatingPointValues;
    private final ParameterizedTypeHandlerMap serializers = new ParameterizedTypeHandlerMap();
    private int timeStyle;
    private final List typeAdapterFactories = new ArrayList();

    public GsonBuilder()
    {
        complexMapKeySerialization = false;
        deserializeExclusionStrategies.add(Gson.DEFAULT_ANON_LOCAL_CLASS_EXCLUSION_STRATEGY);
        deserializeExclusionStrategies.add(Gson.DEFAULT_SYNTHETIC_FIELD_EXCLUSION_STRATEGY);
        serializeExclusionStrategies.add(Gson.DEFAULT_ANON_LOCAL_CLASS_EXCLUSION_STRATEGY);
        serializeExclusionStrategies.add(Gson.DEFAULT_SYNTHETIC_FIELD_EXCLUSION_STRATEGY);
        ignoreVersionsAfter = -1D;
        serializeInnerClasses = true;
        prettyPrinting = false;
        escapeHtmlChars = true;
        modifierBasedExclusionStrategy = Gson.DEFAULT_MODIFIER_BASED_EXCLUSION_STRATEGY;
        excludeFieldsWithoutExposeAnnotation = false;
        longSerializationPolicy = LongSerializationPolicy.DEFAULT;
        fieldNamingPolicy = Gson.DEFAULT_NAMING_POLICY;
        serializeNulls = false;
        dateStyle = 2;
        timeStyle = 2;
        serializeSpecialFloatingPointValues = false;
        generateNonExecutableJson = false;
    }

    private static void addTypeAdaptersForDate(String s, int i, int j, ParameterizedTypeHandlerMap parameterizedtypehandlermap, ParameterizedTypeHandlerMap parameterizedtypehandlermap1)
    {
        if (s == null || "".equals(s.trim())) goto _L2; else goto _L1
_L1:
        DefaultTypeAdapters.DefaultDateTypeAdapter defaultdatetypeadapter = new DefaultTypeAdapters.DefaultDateTypeAdapter(s);
_L4:
        if (defaultdatetypeadapter != null)
        {
            registerIfAbsent(java/util/Date, parameterizedtypehandlermap, defaultdatetypeadapter);
            registerIfAbsent(java/util/Date, parameterizedtypehandlermap1, defaultdatetypeadapter);
            registerIfAbsent(java/sql/Timestamp, parameterizedtypehandlermap, defaultdatetypeadapter);
            registerIfAbsent(java/sql/Timestamp, parameterizedtypehandlermap1, defaultdatetypeadapter);
            registerIfAbsent(java/sql/Date, parameterizedtypehandlermap, defaultdatetypeadapter);
            registerIfAbsent(java/sql/Date, parameterizedtypehandlermap1, defaultdatetypeadapter);
        }
        return;
_L2:
        defaultdatetypeadapter = null;
        if (i != 2)
        {
            defaultdatetypeadapter = null;
            if (j != 2)
            {
                defaultdatetypeadapter = new DefaultTypeAdapters.DefaultDateTypeAdapter(i, j);
            }
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    private GsonBuilder registerDeserializer(Type type, JsonDeserializer jsondeserializer, boolean flag)
    {
        deserializers.register(type, new JsonDeserializerExceptionWrapper(jsondeserializer), flag);
        return this;
    }

    private GsonBuilder registerDeserializerForTypeHierarchy(Class class1, JsonDeserializer jsondeserializer, boolean flag)
    {
        deserializers.registerForTypeHierarchy(class1, new JsonDeserializerExceptionWrapper(jsondeserializer), flag);
        return this;
    }

    private static void registerIfAbsent(Class class1, ParameterizedTypeHandlerMap parameterizedtypehandlermap, Object obj)
    {
        if (!parameterizedtypehandlermap.hasSpecificHandlerFor(class1))
        {
            parameterizedtypehandlermap.register(class1, obj, false);
        }
    }

    private GsonBuilder registerInstanceCreator(Type type, InstanceCreator instancecreator, boolean flag)
    {
        instanceCreators.register(type, instancecreator, flag);
        return this;
    }

    private GsonBuilder registerInstanceCreatorForTypeHierarchy(Class class1, InstanceCreator instancecreator, boolean flag)
    {
        instanceCreators.registerForTypeHierarchy(class1, instancecreator, flag);
        return this;
    }

    private GsonBuilder registerSerializer(Type type, JsonSerializer jsonserializer, boolean flag)
    {
        serializers.register(type, jsonserializer, flag);
        return this;
    }

    private GsonBuilder registerSerializerForTypeHierarchy(Class class1, JsonSerializer jsonserializer, boolean flag)
    {
        serializers.registerForTypeHierarchy(class1, jsonserializer, flag);
        return this;
    }

    private GsonBuilder registerTypeAdapter(Type type, Object obj, boolean flag)
    {
        boolean flag1;
        if ((obj instanceof JsonSerializer) || (obj instanceof JsonDeserializer) || (obj instanceof InstanceCreator) || (obj instanceof com.google.gson.internal.bind.TypeAdapter.Factory))
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        com.google.gson.internal..Gson.Preconditions.checkArgument(flag1);
        if (Primitives.isPrimitive(type) || Primitives.isWrapperType(type))
        {
            throw new IllegalArgumentException((new StringBuilder("Cannot register type adapters for ")).append(type).toString());
        }
        if (obj instanceof InstanceCreator)
        {
            registerInstanceCreator(type, (InstanceCreator)obj, flag);
        }
        if (obj instanceof JsonSerializer)
        {
            registerSerializer(type, (JsonSerializer)obj, flag);
        }
        if (obj instanceof JsonDeserializer)
        {
            registerDeserializer(type, (JsonDeserializer)obj, flag);
        }
        if (obj instanceof com.google.gson.internal.bind.TypeAdapter.Factory)
        {
            typeAdapterFactories.add((com.google.gson.internal.bind.TypeAdapter.Factory)obj);
        }
        return this;
    }

    private GsonBuilder registerTypeHierarchyAdapter(Class class1, Object obj, boolean flag)
    {
        boolean flag1;
        if ((obj instanceof JsonSerializer) || (obj instanceof JsonDeserializer) || (obj instanceof InstanceCreator))
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        com.google.gson.internal..Gson.Preconditions.checkArgument(flag1);
        if (obj instanceof InstanceCreator)
        {
            registerInstanceCreatorForTypeHierarchy(class1, (InstanceCreator)obj, flag);
        }
        if (obj instanceof JsonSerializer)
        {
            registerSerializerForTypeHierarchy(class1, (JsonSerializer)obj, flag);
        }
        if (obj instanceof JsonDeserializer)
        {
            registerDeserializerForTypeHierarchy(class1, (JsonDeserializer)obj, flag);
        }
        return this;
    }

    public final GsonBuilder addDeserializationExclusionStrategy(ExclusionStrategy exclusionstrategy)
    {
        deserializeExclusionStrategies.add(exclusionstrategy);
        return this;
    }

    public final GsonBuilder addSerializationExclusionStrategy(ExclusionStrategy exclusionstrategy)
    {
        serializeExclusionStrategies.add(exclusionstrategy);
        return this;
    }

    public final Gson create()
    {
        LinkedList linkedlist = new LinkedList(deserializeExclusionStrategies);
        LinkedList linkedlist1 = new LinkedList(serializeExclusionStrategies);
        linkedlist.add(modifierBasedExclusionStrategy);
        linkedlist1.add(modifierBasedExclusionStrategy);
        if (!serializeInnerClasses)
        {
            linkedlist.add(innerClassExclusionStrategy);
            linkedlist1.add(innerClassExclusionStrategy);
        }
        if (ignoreVersionsAfter != -1D)
        {
            VersionExclusionStrategy versionexclusionstrategy = new VersionExclusionStrategy(ignoreVersionsAfter);
            linkedlist.add(versionexclusionstrategy);
            linkedlist1.add(versionexclusionstrategy);
        }
        if (excludeFieldsWithoutExposeAnnotation)
        {
            linkedlist.add(exposeAnnotationDeserializationExclusionStrategy);
            linkedlist1.add(exposeAnnotationSerializationExclusionStrategy);
        }
        addTypeAdaptersForDate(datePattern, dateStyle, timeStyle, serializers, deserializers);
        return new Gson(new DisjunctionExclusionStrategy(linkedlist), new DisjunctionExclusionStrategy(linkedlist1), fieldNamingPolicy, instanceCreators.copyOf().makeUnmodifiable(), serializeNulls, serializers.copyOf().makeUnmodifiable(), deserializers.copyOf().makeUnmodifiable(), complexMapKeySerialization, generateNonExecutableJson, escapeHtmlChars, prettyPrinting, serializeSpecialFloatingPointValues, longSerializationPolicy, typeAdapterFactories);
    }

    public final GsonBuilder disableHtmlEscaping()
    {
        escapeHtmlChars = false;
        return this;
    }

    public final GsonBuilder disableInnerClassSerialization()
    {
        serializeInnerClasses = false;
        return this;
    }

    public final GsonBuilder enableComplexMapKeySerialization()
    {
        complexMapKeySerialization = true;
        return this;
    }

    public final transient GsonBuilder excludeFieldsWithModifiers(int ai[])
    {
        modifierBasedExclusionStrategy = new ModifierBasedExclusionStrategy(ai);
        return this;
    }

    public final GsonBuilder excludeFieldsWithoutExposeAnnotation()
    {
        excludeFieldsWithoutExposeAnnotation = true;
        return this;
    }

    public final GsonBuilder generateNonExecutableJson()
    {
        generateNonExecutableJson = true;
        return this;
    }

    public final GsonBuilder registerTypeAdapter(Type type, Object obj)
    {
        return registerTypeAdapter(type, obj, false);
    }

    public final GsonBuilder registerTypeHierarchyAdapter(Class class1, Object obj)
    {
        return registerTypeHierarchyAdapter(class1, obj, false);
    }

    public final GsonBuilder serializeNulls()
    {
        serializeNulls = true;
        return this;
    }

    public final GsonBuilder serializeSpecialFloatingPointValues()
    {
        serializeSpecialFloatingPointValues = true;
        return this;
    }

    public final GsonBuilder setDateFormat(int i)
    {
        dateStyle = i;
        datePattern = null;
        return this;
    }

    public final GsonBuilder setDateFormat(int i, int j)
    {
        dateStyle = i;
        timeStyle = j;
        datePattern = null;
        return this;
    }

    public final GsonBuilder setDateFormat(String s)
    {
        datePattern = s;
        return this;
    }

    public final transient GsonBuilder setExclusionStrategies(ExclusionStrategy aexclusionstrategy[])
    {
        List list = Arrays.asList(aexclusionstrategy);
        serializeExclusionStrategies.addAll(list);
        deserializeExclusionStrategies.addAll(list);
        return this;
    }

    public final GsonBuilder setFieldNamingPolicy(FieldNamingPolicy fieldnamingpolicy)
    {
        return setFieldNamingStrategy(fieldnamingpolicy.getFieldNamingPolicy());
    }

    final GsonBuilder setFieldNamingStrategy(FieldNamingStrategy2 fieldnamingstrategy2)
    {
        fieldNamingPolicy = new SerializedNameAnnotationInterceptingNamingPolicy(fieldnamingstrategy2);
        return this;
    }

    public final GsonBuilder setFieldNamingStrategy(FieldNamingStrategy fieldnamingstrategy)
    {
        return setFieldNamingStrategy(((FieldNamingStrategy2) (new FieldNamingStrategy2Adapter(fieldnamingstrategy))));
    }

    public final GsonBuilder setLongSerializationPolicy(LongSerializationPolicy longserializationpolicy)
    {
        longSerializationPolicy = longserializationpolicy;
        return this;
    }

    public final GsonBuilder setPrettyPrinting()
    {
        prettyPrinting = true;
        return this;
    }

    public final GsonBuilder setVersion(double d)
    {
        ignoreVersionsAfter = d;
        return this;
    }

}
