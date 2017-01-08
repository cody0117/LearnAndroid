// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.gson;

import java.lang.reflect.Type;

// Referenced classes of package com.google.gson:
//            JsonSerializationContext, Gson, GsonToMiniGsonTypeAdapterFactory, JsonElement

class val.gson
    implements JsonSerializationContext
{

    final GsonToMiniGsonTypeAdapterFactory this$0;
    final Gson val$gson;

    public JsonElement serialize(Object obj)
    {
        return val$gson.toJsonTree(obj);
    }

    public JsonElement serialize(Object obj, Type type)
    {
        return val$gson.toJsonTree(obj, type);
    }

    ()
    {
        this$0 = final_gsontominigsontypeadapterfactory;
        val$gson = Gson.this;
        super();
    }
}
