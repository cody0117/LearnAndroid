// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.gson;


// Referenced classes of package com.google.gson:
//            JsonElement

public final class LongSerializationPolicy extends Enum
{

    private static final LongSerializationPolicy $VALUES[];
    public static final LongSerializationPolicy DEFAULT;
    public static final LongSerializationPolicy STRING;
    private final Strategy strategy;

    private LongSerializationPolicy(String s, int i, Strategy strategy1)
    {
        super(s, i);
        strategy = strategy1;
    }

    public static LongSerializationPolicy valueOf(String s)
    {
        return (LongSerializationPolicy)Enum.valueOf(com/google/gson/LongSerializationPolicy, s);
    }

    public static final LongSerializationPolicy[] values()
    {
        return (LongSerializationPolicy[])$VALUES.clone();
    }

    public final JsonElement serialize(Long long1)
    {
        return strategy.serialize(long1);
    }

    static 
    {
        DEFAULT = new LongSerializationPolicy("DEFAULT", 0, new DefaultStrategy(null));
        STRING = new LongSerializationPolicy("STRING", 1, new StringStrategy(null));
        LongSerializationPolicy alongserializationpolicy[] = new LongSerializationPolicy[2];
        alongserializationpolicy[0] = DEFAULT;
        alongserializationpolicy[1] = STRING;
        $VALUES = alongserializationpolicy;
    }

    private class Strategy
    {

        public abstract JsonElement serialize(Long long1);
    }


    private class DefaultStrategy
        implements Strategy
    {

        public JsonElement serialize(Long long1)
        {
            return new JsonPrimitive(long1);
        }

        private DefaultStrategy()
        {
        }

        DefaultStrategy(_cls1 _pcls1)
        {
            this();
        }
    }


    private class StringStrategy
        implements Strategy
    {

        public JsonElement serialize(Long long1)
        {
            return new JsonPrimitive(String.valueOf(long1));
        }

        private StringStrategy()
        {
        }

        StringStrategy(_cls1 _pcls1)
        {
            this();
        }
    }

}
