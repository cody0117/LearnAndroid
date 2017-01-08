// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.gson;

import com.google.gson.internal.ConstructorConstructor;
import com.google.gson.internal.ParameterizedTypeHandlerMap;
import com.google.gson.internal.Primitives;
import com.google.gson.internal.Streams;
import com.google.gson.internal.bind.ArrayTypeAdapter;
import com.google.gson.internal.bind.BigDecimalTypeAdapter;
import com.google.gson.internal.bind.BigIntegerTypeAdapter;
import com.google.gson.internal.bind.CollectionTypeAdapterFactory;
import com.google.gson.internal.bind.DateTypeAdapter;
import com.google.gson.internal.bind.ExcludedTypeAdapterFactory;
import com.google.gson.internal.bind.JsonElementReader;
import com.google.gson.internal.bind.JsonElementWriter;
import com.google.gson.internal.bind.MapTypeAdapterFactory;
import com.google.gson.internal.bind.MiniGson;
import com.google.gson.internal.bind.ObjectTypeAdapter;
import com.google.gson.internal.bind.SqlDateTypeAdapter;
import com.google.gson.internal.bind.TimeTypeAdapter;
import com.google.gson.internal.bind.TypeAdapter;
import com.google.gson.internal.bind.TypeAdapters;
import com.google.gson.reflect.TypeToken;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import com.google.gson.stream.MalformedJsonException;
import java.io.EOFException;
import java.io.IOException;
import java.io.Reader;
import java.io.StringReader;
import java.io.StringWriter;
import java.io.Writer;
import java.lang.reflect.Type;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

// Referenced classes of package com.google.gson:
//            AnonymousAndLocalClassExclusionStrategy, SyntheticFieldExclusionStrategy, ModifierBasedExclusionStrategy, SerializedNameAnnotationInterceptingNamingPolicy, 
//            JavaFieldNamingPolicy, LongSerializationPolicy, GsonToMiniGsonTypeAdapterFactory, JsonIOException, 
//            JsonSyntaxException, DisjunctionExclusionStrategy, JsonNull, ExclusionStrategy, 
//            FieldNamingStrategy2, JsonElement

public final class Gson
{

    static final AnonymousAndLocalClassExclusionStrategy DEFAULT_ANON_LOCAL_CLASS_EXCLUSION_STRATEGY = new AnonymousAndLocalClassExclusionStrategy();
    private static final ExclusionStrategy DEFAULT_EXCLUSION_STRATEGY = createExclusionStrategy();
    static final boolean DEFAULT_JSON_NON_EXECUTABLE = false;
    static final ModifierBasedExclusionStrategy DEFAULT_MODIFIER_BASED_EXCLUSION_STRATEGY = new ModifierBasedExclusionStrategy(new int[] {
        128, 8
    });
    static final FieldNamingStrategy2 DEFAULT_NAMING_POLICY = new SerializedNameAnnotationInterceptingNamingPolicy(new JavaFieldNamingPolicy());
    static final SyntheticFieldExclusionStrategy DEFAULT_SYNTHETIC_FIELD_EXCLUSION_STRATEGY = new SyntheticFieldExclusionStrategy(true);
    static final ParameterizedTypeHandlerMap EMPTY_MAP = (new ParameterizedTypeHandlerMap()).makeUnmodifiable();
    private static final String JSON_NON_EXECUTABLE_PREFIX = ")]}'\n";
    private final ConstructorConstructor constructorConstructor;
    private final ExclusionStrategy deserializationExclusionStrategy;
    private final ParameterizedTypeHandlerMap deserializers;
    private final boolean generateNonExecutableJson;
    private final boolean htmlSafe;
    private final MiniGson miniGson;
    private final boolean prettyPrinting;
    private final ExclusionStrategy serializationExclusionStrategy;
    private final boolean serializeNulls;
    private final ParameterizedTypeHandlerMap serializers;

    public Gson()
    {
        this(DEFAULT_EXCLUSION_STRATEGY, DEFAULT_EXCLUSION_STRATEGY, DEFAULT_NAMING_POLICY, EMPTY_MAP, false, EMPTY_MAP, EMPTY_MAP, false, false, true, false, false, LongSerializationPolicy.DEFAULT, Collections.emptyList());
    }

    Gson(ExclusionStrategy exclusionstrategy, ExclusionStrategy exclusionstrategy1, FieldNamingStrategy2 fieldnamingstrategy2, ParameterizedTypeHandlerMap parameterizedtypehandlermap, boolean flag, ParameterizedTypeHandlerMap parameterizedtypehandlermap1, ParameterizedTypeHandlerMap parameterizedtypehandlermap2, 
            boolean flag1, boolean flag2, boolean flag3, boolean flag4, boolean flag5, LongSerializationPolicy longserializationpolicy, List list)
    {
        deserializationExclusionStrategy = exclusionstrategy;
        serializationExclusionStrategy = exclusionstrategy1;
        constructorConstructor = new ConstructorConstructor(parameterizedtypehandlermap);
        serializeNulls = flag;
        serializers = parameterizedtypehandlermap1;
        deserializers = parameterizedtypehandlermap2;
        generateNonExecutableJson = flag2;
        htmlSafe = flag3;
        prettyPrinting = flag4;
        _cls1 _lcls1 = new _cls1(fieldnamingstrategy2);
        com.google.gson.internal.bind.MiniGson.Builder builder = (new com.google.gson.internal.bind.MiniGson.Builder()).withoutDefaultFactories().factory(TypeAdapters.STRING_FACTORY).factory(TypeAdapters.INTEGER_FACTORY).factory(TypeAdapters.BOOLEAN_FACTORY).factory(TypeAdapters.BYTE_FACTORY).factory(TypeAdapters.SHORT_FACTORY).factory(TypeAdapters.newFactory(Long.TYPE, java/lang/Long, longAdapter(longserializationpolicy))).factory(TypeAdapters.newFactory(Double.TYPE, java/lang/Double, doubleAdapter(flag5))).factory(TypeAdapters.newFactory(Float.TYPE, java/lang/Float, floatAdapter(flag5))).factory(new ExcludedTypeAdapterFactory(exclusionstrategy1, exclusionstrategy)).factory(TypeAdapters.NUMBER_FACTORY).factory(TypeAdapters.CHARACTER_FACTORY).factory(TypeAdapters.STRING_BUILDER_FACTORY).factory(TypeAdapters.STRING_BUFFER_FACTORY).typeAdapter(java/math/BigDecimal, new BigDecimalTypeAdapter()).typeAdapter(java/math/BigInteger, new BigIntegerTypeAdapter()).factory(TypeAdapters.JSON_ELEMENT_FACTORY).factory(ObjectTypeAdapter.FACTORY);
        for (Iterator iterator = list.iterator(); iterator.hasNext(); builder.factory((com.google.gson.internal.bind.TypeAdapter.Factory)iterator.next())) { }
        builder.factory(new GsonToMiniGsonTypeAdapterFactory(this, parameterizedtypehandlermap1, parameterizedtypehandlermap2)).factory(new CollectionTypeAdapterFactory(constructorConstructor)).factory(TypeAdapters.URL_FACTORY).factory(TypeAdapters.URI_FACTORY).factory(TypeAdapters.UUID_FACTORY).factory(TypeAdapters.LOCALE_FACTORY).factory(TypeAdapters.INET_ADDRESS_FACTORY).factory(TypeAdapters.BIT_SET_FACTORY).factory(DateTypeAdapter.FACTORY).factory(TypeAdapters.CALENDAR_FACTORY).factory(TimeTypeAdapter.FACTORY).factory(SqlDateTypeAdapter.FACTORY).factory(TypeAdapters.TIMESTAMP_FACTORY).factory(new MapTypeAdapterFactory(constructorConstructor, flag1)).factory(ArrayTypeAdapter.FACTORY).factory(TypeAdapters.ENUM_FACTORY).factory(_lcls1);
        miniGson = builder.build();
    }

    private static void assertFullConsumption(Object obj, JsonReader jsonreader)
    {
        if (obj != null)
        {
            try
            {
                if (jsonreader.peek() != JsonToken.END_DOCUMENT)
                {
                    throw new JsonIOException("JSON document was not fully consumed.");
                }
            }
            catch (MalformedJsonException malformedjsonexception)
            {
                throw new JsonSyntaxException(malformedjsonexception);
            }
            catch (IOException ioexception)
            {
                throw new JsonIOException(ioexception);
            }
        }
    }

    private void checkValidFloatingPoint(double d)
    {
        if (Double.isNaN(d) || Double.isInfinite(d))
        {
            throw new IllegalArgumentException((new StringBuilder()).append(d).append(" is not a valid double value as per JSON specification. To override this behavior, use GsonBuilder.serializeSpecialDoubleValues() method.").toString());
        } else
        {
            return;
        }
    }

    private static ExclusionStrategy createExclusionStrategy()
    {
        LinkedList linkedlist = new LinkedList();
        linkedlist.add(DEFAULT_ANON_LOCAL_CLASS_EXCLUSION_STRATEGY);
        linkedlist.add(DEFAULT_SYNTHETIC_FIELD_EXCLUSION_STRATEGY);
        linkedlist.add(DEFAULT_MODIFIER_BASED_EXCLUSION_STRATEGY);
        return new DisjunctionExclusionStrategy(linkedlist);
    }

    private TypeAdapter doubleAdapter(boolean flag)
    {
        if (flag)
        {
            return TypeAdapters.DOUBLE;
        } else
        {
            return new _cls2();
        }
    }

    private TypeAdapter floatAdapter(boolean flag)
    {
        if (flag)
        {
            return TypeAdapters.FLOAT;
        } else
        {
            return new _cls3();
        }
    }

    private TypeAdapter longAdapter(LongSerializationPolicy longserializationpolicy)
    {
        if (longserializationpolicy == LongSerializationPolicy.DEFAULT)
        {
            return TypeAdapters.LONG;
        } else
        {
            return new _cls4();
        }
    }

    private JsonWriter newJsonWriter(Writer writer)
    {
        if (generateNonExecutableJson)
        {
            writer.write(")]}'\n");
        }
        JsonWriter jsonwriter = new JsonWriter(writer);
        if (prettyPrinting)
        {
            jsonwriter.setIndent("  ");
        }
        jsonwriter.setSerializeNulls(serializeNulls);
        return jsonwriter;
    }

    public final Object fromJson(JsonElement jsonelement, Class class1)
    {
        Object obj = fromJson(jsonelement, ((Type) (class1)));
        return Primitives.wrap(class1).cast(obj);
    }

    public final Object fromJson(JsonElement jsonelement, Type type)
    {
        if (jsonelement == null)
        {
            return null;
        } else
        {
            return fromJson(((JsonReader) (new JsonElementReader(jsonelement))), type);
        }
    }

    public final Object fromJson(JsonReader jsonreader, Type type)
    {
        boolean flag;
        boolean flag1;
        flag = true;
        flag1 = jsonreader.isLenient();
        jsonreader.setLenient(flag);
        jsonreader.peek();
        flag = false;
        Object obj = miniGson.getAdapter(TypeToken.get(type)).read(jsonreader);
        jsonreader.setLenient(flag1);
        return obj;
        EOFException eofexception;
        eofexception;
        if (flag)
        {
            jsonreader.setLenient(flag1);
            return null;
        }
        throw new JsonSyntaxException(eofexception);
        Exception exception;
        exception;
        jsonreader.setLenient(flag1);
        throw exception;
        IllegalStateException illegalstateexception;
        illegalstateexception;
        throw new JsonSyntaxException(illegalstateexception);
        IOException ioexception;
        ioexception;
        throw new JsonSyntaxException(ioexception);
    }

    public final Object fromJson(Reader reader, Class class1)
    {
        JsonReader jsonreader = new JsonReader(reader);
        Object obj = fromJson(jsonreader, ((Type) (class1)));
        assertFullConsumption(obj, jsonreader);
        return Primitives.wrap(class1).cast(obj);
    }

    public final Object fromJson(Reader reader, Type type)
    {
        JsonReader jsonreader = new JsonReader(reader);
        Object obj = fromJson(jsonreader, type);
        assertFullConsumption(obj, jsonreader);
        return obj;
    }

    public final Object fromJson(String s, Class class1)
    {
        Object obj = fromJson(s, ((Type) (class1)));
        return Primitives.wrap(class1).cast(obj);
    }

    public final Object fromJson(String s, Type type)
    {
        if (s == null)
        {
            return null;
        } else
        {
            return fromJson(((Reader) (new StringReader(s))), type);
        }
    }

    public final String toJson(JsonElement jsonelement)
    {
        StringWriter stringwriter = new StringWriter();
        toJson(jsonelement, ((Appendable) (stringwriter)));
        return stringwriter.toString();
    }

    public final String toJson(Object obj)
    {
        if (obj == null)
        {
            return toJson(((JsonElement) (JsonNull.INSTANCE)));
        } else
        {
            return toJson(obj, ((Type) (obj.getClass())));
        }
    }

    public final String toJson(Object obj, Type type)
    {
        StringWriter stringwriter = new StringWriter();
        toJson(obj, type, ((Appendable) (stringwriter)));
        return stringwriter.toString();
    }

    public final void toJson(JsonElement jsonelement, JsonWriter jsonwriter)
    {
        boolean flag;
        boolean flag1;
        boolean flag2;
        flag = jsonwriter.isLenient();
        jsonwriter.setLenient(true);
        flag1 = jsonwriter.isHtmlSafe();
        jsonwriter.setHtmlSafe(htmlSafe);
        flag2 = jsonwriter.getSerializeNulls();
        jsonwriter.setSerializeNulls(serializeNulls);
        Streams.write(jsonelement, jsonwriter);
        jsonwriter.setLenient(flag);
        jsonwriter.setHtmlSafe(flag1);
        jsonwriter.setSerializeNulls(flag2);
        return;
        IOException ioexception;
        ioexception;
        throw new JsonIOException(ioexception);
        Exception exception;
        exception;
        jsonwriter.setLenient(flag);
        jsonwriter.setHtmlSafe(flag1);
        jsonwriter.setSerializeNulls(flag2);
        throw exception;
    }

    public final void toJson(JsonElement jsonelement, Appendable appendable)
    {
        try
        {
            toJson(jsonelement, newJsonWriter(Streams.writerForAppendable(appendable)));
            return;
        }
        catch (IOException ioexception)
        {
            throw new RuntimeException(ioexception);
        }
    }

    public final void toJson(Object obj, Appendable appendable)
    {
        if (obj != null)
        {
            toJson(obj, ((Type) (obj.getClass())), appendable);
            return;
        } else
        {
            toJson(((JsonElement) (JsonNull.INSTANCE)), appendable);
            return;
        }
    }

    public final void toJson(Object obj, Type type, JsonWriter jsonwriter)
    {
        TypeAdapter typeadapter;
        boolean flag;
        boolean flag1;
        boolean flag2;
        typeadapter = miniGson.getAdapter(TypeToken.get(type));
        flag = jsonwriter.isLenient();
        jsonwriter.setLenient(true);
        flag1 = jsonwriter.isHtmlSafe();
        jsonwriter.setHtmlSafe(htmlSafe);
        flag2 = jsonwriter.getSerializeNulls();
        jsonwriter.setSerializeNulls(serializeNulls);
        typeadapter.write(jsonwriter, obj);
        jsonwriter.setLenient(flag);
        jsonwriter.setHtmlSafe(flag1);
        jsonwriter.setSerializeNulls(flag2);
        return;
        IOException ioexception;
        ioexception;
        throw new JsonIOException(ioexception);
        Exception exception;
        exception;
        jsonwriter.setLenient(flag);
        jsonwriter.setHtmlSafe(flag1);
        jsonwriter.setSerializeNulls(flag2);
        throw exception;
    }

    public final void toJson(Object obj, Type type, Appendable appendable)
    {
        try
        {
            toJson(obj, type, newJsonWriter(Streams.writerForAppendable(appendable)));
            return;
        }
        catch (IOException ioexception)
        {
            throw new JsonIOException(ioexception);
        }
    }

    public final JsonElement toJsonTree(Object obj)
    {
        if (obj == null)
        {
            return JsonNull.INSTANCE;
        } else
        {
            return toJsonTree(obj, ((Type) (obj.getClass())));
        }
    }

    public final JsonElement toJsonTree(Object obj, Type type)
    {
        JsonElementWriter jsonelementwriter = new JsonElementWriter();
        toJson(obj, type, jsonelementwriter);
        return jsonelementwriter.get();
    }

    public final String toString()
    {
        return (new StringBuilder("{serializeNulls:")).append(serializeNulls).append(",serializers:").append(serializers).append(",deserializers:").append(deserializers).append(",instanceCreators:").append(constructorConstructor).append("}").toString();
    }





    private class _cls1 extends ReflectiveTypeAdapterFactory
    {

        final Gson this$0;
        final FieldNamingStrategy2 val$fieldNamingPolicy;

        public boolean deserializeField(Class class1, Field field, Type type)
        {
            ExclusionStrategy exclusionstrategy = deserializationExclusionStrategy;
            return !exclusionstrategy.shouldSkipClass(field.getType()) && !exclusionstrategy.shouldSkipField(new FieldAttributes(class1, field));
        }

        public String getFieldName(Class class1, Field field, Type type)
        {
            return fieldNamingPolicy.translateName(new FieldAttributes(class1, field));
        }

        public boolean serializeField(Class class1, Field field, Type type)
        {
            ExclusionStrategy exclusionstrategy = serializationExclusionStrategy;
            return !exclusionstrategy.shouldSkipClass(field.getType()) && !exclusionstrategy.shouldSkipField(new FieldAttributes(class1, field));
        }

        _cls1(FieldNamingStrategy2 fieldnamingstrategy2)
        {
            this$0 = Gson.this;
            fieldNamingPolicy = fieldnamingstrategy2;
            super(final_constructorconstructor);
        }
    }


    private class _cls2 extends TypeAdapter
    {

        final Gson this$0;

        public Double read(JsonReader jsonreader)
        {
            if (jsonreader.peek() == JsonToken.NULL)
            {
                jsonreader.nextNull();
                return null;
            } else
            {
                return Double.valueOf(jsonreader.nextDouble());
            }
        }

        public volatile Object read(JsonReader jsonreader)
        {
            return read(jsonreader);
        }

        public void write(JsonWriter jsonwriter, Number number)
        {
            if (number == null)
            {
                jsonwriter.nullValue();
                return;
            } else
            {
                double d = number.doubleValue();
                checkValidFloatingPoint(d);
                jsonwriter.value(number);
                return;
            }
        }

        public volatile void write(JsonWriter jsonwriter, Object obj)
        {
            write(jsonwriter, (Number)obj);
        }

        _cls2()
        {
            this$0 = Gson.this;
            super();
        }
    }


    private class _cls3 extends TypeAdapter
    {

        final Gson this$0;

        public Float read(JsonReader jsonreader)
        {
            if (jsonreader.peek() == JsonToken.NULL)
            {
                jsonreader.nextNull();
                return null;
            } else
            {
                return Float.valueOf((float)jsonreader.nextDouble());
            }
        }

        public volatile Object read(JsonReader jsonreader)
        {
            return read(jsonreader);
        }

        public void write(JsonWriter jsonwriter, Number number)
        {
            if (number == null)
            {
                jsonwriter.nullValue();
                return;
            } else
            {
                float f = number.floatValue();
                checkValidFloatingPoint(f);
                jsonwriter.value(number);
                return;
            }
        }

        public volatile void write(JsonWriter jsonwriter, Object obj)
        {
            write(jsonwriter, (Number)obj);
        }

        _cls3()
        {
            this$0 = Gson.this;
            super();
        }
    }


    private class _cls4 extends TypeAdapter
    {

        final Gson this$0;

        public Number read(JsonReader jsonreader)
        {
            if (jsonreader.peek() == JsonToken.NULL)
            {
                jsonreader.nextNull();
                return null;
            } else
            {
                return Long.valueOf(jsonreader.nextLong());
            }
        }

        public volatile Object read(JsonReader jsonreader)
        {
            return read(jsonreader);
        }

        public void write(JsonWriter jsonwriter, Number number)
        {
            if (number == null)
            {
                jsonwriter.nullValue();
                return;
            } else
            {
                jsonwriter.value(number.toString());
                return;
            }
        }

        public volatile void write(JsonWriter jsonwriter, Object obj)
        {
            write(jsonwriter, (Number)obj);
        }

        _cls4()
        {
            this$0 = Gson.this;
            super();
        }
    }

}
