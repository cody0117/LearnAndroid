// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.gson.internal.bind;

import com.google.gson.reflect.TypeToken;
import java.sql.Timestamp;
import java.util.Date;

// Referenced classes of package com.google.gson.internal.bind:
//            MiniGson, TypeAdapter

class _cls1
    implements ory
{

    public TypeAdapter create(MiniGson minigson, TypeToken typetoken)
    {
        class _cls1 extends TypeAdapter
        {

            final TypeAdapters._cls19 this$0;
            final TypeAdapter val$dateTypeAdapter;

            public volatile Object read(JsonReader jsonreader)
            {
                return read(jsonreader);
            }

            public Timestamp read(JsonReader jsonreader)
            {
                Date date = (Date)dateTypeAdapter.read(jsonreader);
                if (date != null)
                {
                    return new Timestamp(date.getTime());
                } else
                {
                    return null;
                }
            }

            public volatile void write(JsonWriter jsonwriter, Object obj)
            {
                write(jsonwriter, (Timestamp)obj);
            }

            public void write(JsonWriter jsonwriter, Timestamp timestamp)
            {
                dateTypeAdapter.write(jsonwriter, timestamp);
            }

            _cls1()
            {
                this$0 = TypeAdapters._cls19.this;
                dateTypeAdapter = typeadapter;
                super();
            }
        }

        if (typetoken.getRawType() != java/sql/Timestamp)
        {
            return null;
        } else
        {
            return new _cls1();
        }
    }

    _cls1()
    {
    }
}
