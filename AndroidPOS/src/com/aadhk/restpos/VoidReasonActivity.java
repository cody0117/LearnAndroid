// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos;

import android.os.AsyncTask;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ListView;
import android.widget.TextView;
import com.aadhk.product.library.a.d;
import com.aadhk.restpos.a.ax;
import com.aadhk.restpos.b.f;
import com.aadhk.restpos.bean.Note;
import com.aadhk.restpos.c.as;
import com.aadhk.restpos.g.af;
import java.util.List;

// Referenced classes of package com.aadhk.restpos:
//            POSActivity, eo, ei, ej, 
//            el

public class VoidReasonActivity extends POSActivity
    implements android.widget.AdapterView.OnItemClickListener
{

    private ListView a;
    private List o;
    private af p;

    public VoidReasonActivity()
    {
    }

    static af a(VoidReasonActivity voidreasonactivity)
    {
        return voidreasonactivity.p;
    }

    static List a(VoidReasonActivity voidreasonactivity, List list)
    {
        voidreasonactivity.o = list;
        return list;
    }

    public final void a()
    {
        a.setAdapter(new ax(this, o));
        TextView textview = (TextView)findViewById(0x7f09016e);
        if (o.size() > 0)
        {
            textview.setVisibility(8);
            return;
        } else
        {
            textview.setVisibility(0);
            return;
        }
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f0300b3);
        setTitle(0x7f0802df);
        p = new af(this);
        a = (ListView)findViewById(0x7f0900a4);
        a.setOnItemClickListener(this);
        (new d(new eo(this, (byte)0), this, (byte)0)).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null);
    }

    public boolean onCreateOptionsMenu(Menu menu)
    {
        getMenuInflater().inflate(0x7f0f0001, menu);
        return super.onCreateOptionsMenu(menu);
    }

    protected void onDestroy()
    {
        af _tmp = p;
        f.a().c();
        super.onDestroy();
    }

    public void onItemClick(AdapterView adapterview, View view, int i, long l)
    {
        Note note = (Note)o.get(i);
        as as1 = new as(this, note);
        as1.setTitle(0x7f0802e7);
        as1.b();
        as1.a(new ei(this));
        as1.a(new ej(this, note));
        as1.show();
    }

    public boolean onOptionsItemSelected(MenuItem menuitem)
    {
        if (menuitem.getItemId() == 0x7f090301)
        {
            as as1 = new as(this, null);
            as1.setTitle(0x7f0802e6);
            as1.a(new el(this));
            as1.show();
            return true;
        } else
        {
            return super.onOptionsItemSelected(menuitem);
        }
    }
}
