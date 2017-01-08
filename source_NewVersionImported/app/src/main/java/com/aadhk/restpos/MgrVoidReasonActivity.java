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
import com.aadhk.restpos.c.ah;
import java.util.List;

// Referenced classes of package com.aadhk.restpos:
//            POSActivity, ax, ay, ba

public class MgrVoidReasonActivity extends POSActivity
    implements android.widget.AdapterView.OnItemClickListener
{

    private ListView a;
    private List l;
    private l m;
    private SQLiteDatabase n;

    public MgrVoidReasonActivity()
    {
    }

    static l a(MgrVoidReasonActivity mgrvoidreasonactivity)
    {
        return mgrvoidreasonactivity.m;
    }

    public final void a()
    {
        l = m.b(1);
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
        setTitle(0x7f090280);
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
        ah ah1 = new ah(this, note);
        ah1.setTitle(0x7f090288);
        ah1.b();
        ah1.a(new ax(this));
        ah1.a(new ay(this, note));
        ah1.show();
    }

    public boolean onOptionsItemSelected(MenuItem menuitem)
    {
        if (menuitem.getItemId() == 0x7f0b027f)
        {
            ah ah1 = new ah(this, null);
            ah1.setTitle(0x7f090287);
            ah1.a(new ba(this));
            ah1.show();
            return true;
        } else
        {
            return super.onOptionsItemSelected(menuitem);
        }
    }
}
