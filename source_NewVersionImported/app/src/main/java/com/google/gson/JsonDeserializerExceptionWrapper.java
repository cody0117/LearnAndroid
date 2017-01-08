// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.gson;

import java.lang.reflect.Type;

// Referenced classes of package com.google.gson:
//            JsonDeserializer, JsonParseException, JsonElement, JsonDeserializationContext

final class JsonDeserializerExceptionWrapper
    implements JsonDeserializer
{

    private final JsonDeserializer _flddelegate;

    JsonDeserializerExceptionWrapper(JsonDeserializer jsondeserializer)
    {
        _flddelegate = (JsonDeserializer)com.google.gson.internal..Gson.Preconditions.checkNotNull(jsondeserializer);
    }

    public final Object deserialize(JsonElement jsonelement, Type type, JsonDeserializationContext jsondeserializationcontext)
    {
        Object obj;
        try
        {
            obj = _flddelegate.deserialize(jsonelement, type, jsondeserializationcontext);
        }
        catch (JsonParseException jsonparseexception)
        {
            throw jsonparseexception;
        }
        catch (Exception exception)
        {
            throw new JsonParseException((new StringBuilder("The JsonDeserializer ")).append(_flddelegate).append(" failed to deserialize json object ").append(jsonelement).append(" given the type ").append(type).toString(), exception);
        }
        return obj;
    }

    public final String toString()
    {
        return _flddelegate.toString();
    }
}
