// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.gson;

import java.lang.reflect.Type;

// Referenced classes of package com.google.gson:
//            JsonDeserializationContext, Gson, GsonToMiniGsonTypeAdapterFactory, JsonElement

class val.gson
    implements JsonDeserializationContext
{

    final GsonToMiniGsonTypeAdapterFactory this$0;
    final Gson val$gson;

    public Object deserialize(JsonElement jsonelement, Type type)
    {
        return val$gson.fromJson(jsonelement, type);
    }

    ()
    {
        this$0 = final_gsontominigsontypeadapterfactory;
        val$gson = Gson.this;
        super();
    }
}
