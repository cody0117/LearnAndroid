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
//            ag

final class ai
    implements TextWatcher
{

    final ag a;

    private ai(ag ag1)
    {
        a = ag1;
        super();
    }

    ai(ag ag1, byte byte0)
    {
        this(ag1);
    }

    public final void afterTextChanged(Editable editable)
    {
    }

    public final void beforeTextChanged(CharSequence charsequence, int i, int j, int k)
    {
    }

    public final void onTextChanged(CharSequence charsequence, int i, int j, int k)
    {
        ag.a(a).clear();
        Pattern pattern = Pattern.compile(ag.b(a).getText().toString(), 2);
        Iterator iterator = ag.c(a).iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            Item item = (Item)iterator.next();
            if (pattern.matcher(item.getName()).find())
            {
                ag.a(a).add(item);
            }
        } while (true);
        Collections.sort(ag.a(a), new d());
        com.aadhk.restpos.d.ag.d(a).setAdapter(new bl(ag.b(), ag.a(a)));
    }
}
