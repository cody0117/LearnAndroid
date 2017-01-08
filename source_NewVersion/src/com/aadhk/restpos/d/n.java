// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.text.Editable;
import android.text.TextWatcher;
import android.widget.EditText;
import android.widget.ListView;
import com.aadhk.restpos.a.bd;
import com.aadhk.restpos.bean.Item;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

// Referenced classes of package com.aadhk.restpos.d:
//            l

final class n
    implements TextWatcher
{

    final l a;

    private n(l l1)
    {
        a = l1;
        super();
    }

    n(l l1, byte byte0)
    {
        this(l1);
    }

    public final void afterTextChanged(Editable editable)
    {
    }

    public final void beforeTextChanged(CharSequence charsequence, int i, int j, int k)
    {
    }

    public final void onTextChanged(CharSequence charsequence, int i, int j, int k)
    {
        l.a(a).clear();
        Pattern pattern = Pattern.compile(l.b(a).getText().toString(), 2);
        Iterator iterator = l.c(a).iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            Item item = (Item)iterator.next();
            if (pattern.matcher(item.getName()).find())
            {
                l.a(a).add(item);
            }
        } while (true);
        l.d(a).setAdapter(new bd(l.a(), l.a(a)));
    }
}
