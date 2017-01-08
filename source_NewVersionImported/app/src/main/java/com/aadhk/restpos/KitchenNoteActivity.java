// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos;

import android.database.sqlite.SQLiteDatabase;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ListView;
import android.widget.TextView;
import com.aadhk.restpos.a.ao;
import com.aadhk.restpos.b.f;
import com.aadhk.restpos.b.l;
import com.aadhk.restpos.bean.Note;
import com.aadhk.restpos.c.s;
import java.util.List;

// Referenced classes of package com.aadhk.restpos:
//            POSActivity, y, z, ab

public class KitchenNoteActivity extends POSActivity
    implements android.widget.AdapterView.OnItemClickListener
{

    private ListView a;
    private List l;
    private l m;
    private SQLiteDatabase n;

    public KitchenNoteActivity()
    {
    }

    static l a(KitchenNoteActivity kitchennoteactivity)
    {
        return kitchennoteactivity.m;
    }

    public final void a()
    {
        l = m.b(2);
        a.setAdapter(new ao(this, l));
        TextView textview = (TextView)findViewById(0x7f0b012a);
        if (l.size() > 0)
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
        setContentView(0x7f030096);
        setTitle(0x7f09027e);
        n = f.a().b();
        m = new l(n);
        a = (ListView)findViewById(0x7f0b0086);
        a.setOnItemClickListener(this);
        a();
    }

    public boolean onCreateOptionsMenu(Menu menu)
    {
        getMenuInflater().inflate(0x7f0f0001, menu);
        return super.onCreateOptionsMenu(menu);
    }

    protected void onDestroy()
    {
        f.a().c();
        super.onDestroy();
    }

    public void onItemClick(AdapterView adapterview, View view, int i, long l1)
    {
        Note note = (Note)l.get(i);
        s s1 = new s(this, note);
        s1.setTitle(0x7f090285);
        s1.b();
        s1.a(new y(this));
        s1.a(new z(this, note));
        s1.show();
    }

    public boolean onOptionsItemSelected(MenuItem menuitem)
    {
        if (menuitem.getItemId() == 0x7f0b027f)
        {
            s s1 = new s(this, null);
            s1.setTitle(0x7f090284);
            s1.a(new ab(this));
            s1.show();
            return true;
        } else
        {
            return super.onOptionsItemSelected(menuitem);
        }
    }
}
