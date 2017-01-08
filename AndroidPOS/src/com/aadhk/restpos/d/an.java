// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.text.Editable;
import android.text.TextWatcher;
import android.widget.EditText;
import android.widget.ListView;
import com.aadhk.restpos.a.bl;
import com.aadhk.restpos.bean.Item;
import com.aadhk.restpos.util.d;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

// Referenced classes of package com.aadhk.restpos.d:
//            al

final class an
    implements TextWatcher
{

    final al a;

    private an(al al1)
    {
        a = al1;
        super();
    }

    an(al al1, byte byte0)
    {
        this(al1);
    }

    public final void afterTextChanged(Editable editable)
    {
    }

    public final void beforeTextChanged(CharSequence charsequence, int i, int j, int k)
    {
    }

    public final void onTextChanged(CharSequence charsequence, int i, int j, int k)
    {
        al.a(a).clear();
        Pattern pattern = Pattern.compile(al.b(a).getText().toString(), 2);
        Iterator iterator = al.c(a).iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            Item item = (Item)iterator.next();
            if (pattern.matcher(item.getName()).find())
            {
                al.a(a).add(item);
            }
        } while (true);
        Collections.sort(al.a(a), new d());
        com.aadhk.restpos.d.al.d(a).setAdapter(new bl(al.b(), al.a(a)));
    }
}
