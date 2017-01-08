// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.gson;

import com.google.gson.annotations.SerializedName;

// Referenced classes of package com.google.gson:
//            FieldNamingStrategy2, FieldAttributes

final class SerializedNameAnnotationInterceptingNamingPolicy
    implements FieldNamingStrategy2
{

    private final FieldNamingStrategy2 _flddelegate;

    SerializedNameAnnotationInterceptingNamingPolicy(FieldNamingStrategy2 fieldnamingstrategy2)
    {
        _flddelegate = fieldnamingstrategy2;
    }

    public final String translateName(FieldAttributes fieldattributes)
    {
        SerializedName serializedname = (SerializedName)fieldattributes.getAnnotation(com/google/gson/annotations/SerializedName);
        if (serializedname == null)
        {
            return _flddelegate.translateName(fieldattributes);
        } else
        {
            return serializedname.value();
        }
    }
}
