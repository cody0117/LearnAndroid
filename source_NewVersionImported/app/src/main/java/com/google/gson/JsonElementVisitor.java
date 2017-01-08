// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.gson;


// Referenced classes of package com.google.gson:
//            JsonArray, JsonObject, JsonPrimitive

interface JsonElementVisitor
{

    public abstract void endArray(JsonArray jsonarray);

    public abstract void endObject(JsonObject jsonobject);

    public abstract void startArray(JsonArray jsonarray);

    public abstract void startObject(JsonObject jsonobject);

    public abstract void visitArrayMember(JsonArray jsonarray, JsonArray jsonarray1, boolean flag);

    public abstract void visitArrayMember(JsonArray jsonarray, JsonObject jsonobject, boolean flag);

    public abstract void visitArrayMember(JsonArray jsonarray, JsonPrimitive jsonprimitive, boolean flag);

    public abstract void visitNull();

    public abstract void visitNullArrayMember(JsonArray jsonarray, boolean flag);

    public abstract void visitNullObjectMember(JsonObject jsonobject, String s, boolean flag);

    public abstract void visitObjectMember(JsonObject jsonobject, String s, JsonArray jsonarray, boolean flag);

    public abstract void visitObjectMember(JsonObject jsonobject, String s, JsonObject jsonobject1, boolean flag);

    public abstract void visitObjectMember(JsonObject jsonobject, String s, JsonPrimitive jsonprimitive, boolean flag);

    public abstract void visitPrimitive(JsonPrimitive jsonprimitive);
}
