// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.gson;


// Referenced classes of package com.google.gson:
//            FieldNamingStrategy2, FieldNamingStrategy, FieldAttributes

final class FieldNamingStrategy2Adapter
    implements FieldNamingStrategy2
{

    private final FieldNamingStrategy adaptee;

    FieldNamingStrategy2Adapter(FieldNamingStrategy fieldnamingstrategy)
    {
        adaptee = (FieldNamingStrategy)com.google.gson.internal..Gson.Preconditions.checkNotNull(fieldnamingstrategy);
    }

    public final String translateName(FieldAttributes fieldattributes)
    {
        return adaptee.translateName(fieldattributes.getFieldObject());
    }
}
