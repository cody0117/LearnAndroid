// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.b;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import com.aadhk.restpos.bean.Note;
import java.util.ArrayList;
import java.util.List;

public final class n
{

    private final SQLiteDatabase a;

    public n(SQLiteDatabase sqlitedatabase)
    {
        a = sqlitedatabase;
    }

    public final List a()
    {
        ArrayList arraylist = new ArrayList();
        Cursor cursor = a.query(false, "rest_note", new String[] {
            "rowid as _id", "name", "type"
        }, "type=1", null, null, null, null, null);
        if (cursor.moveToFirst())
        {
            do
            {
                Note note = new Note();
                note.setId(cursor.getInt(0));
                note.setName(cursor.getString(1));
                note.setType(cursor.getInt(2));
                arraylist.add(note);
            } while (cursor.moveToNext());
        }
        cursor.close();
        return arraylist;
    }

    public final void a(int i)
    {
        a.delete("rest_note", (new StringBuilder("rowid=")).append(i).toString(), null);
    }

    public final void a(Note note)
    {
        ContentValues contentvalues = new ContentValues();
        contentvalues.put("name", note.getName());
        contentvalues.put("type", Integer.valueOf(note.getType()));
        a.insert("rest_note", null, contentvalues);
    }

    public final void b(Note note)
    {
        ContentValues contentvalues = new ContentValues();
        contentvalues.put("name", note.getName());
        contentvalues.put("type", Integer.valueOf(note.getType()));
        a.update("rest_note", contentvalues, (new StringBuilder("rowid=")).append(note.getId()).toString(), null);
    }
}
