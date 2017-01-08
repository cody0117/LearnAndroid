// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.b;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import com.aadhk.product.library.c.c;
import com.aadhk.restpos.bean.Reservation;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public final class v
{

    private final SQLiteDatabase a;

    public v(SQLiteDatabase sqlitedatabase)
    {
        a = sqlitedatabase;
    }

    public final Map a(boolean flag)
    {
        String s;
        HashMap hashmap;
        Cursor cursor;
        if (flag)
        {
            s = (new StringBuilder(" and reservedDate='")).append(c.e()).append("'").toString();
        } else
        {
            s = "";
        }
        hashmap = new HashMap();
        cursor = a.query(false, "rest_reservation", new String[] {
            "distinct(reservedDate)"
        }, (new StringBuilder("status=0")).append(s).toString(), null, null, null, "reservedDate asc", null);
        if (cursor.moveToFirst())
        {
            do
            {
                String s1 = cursor.getString(0);
                ArrayList arraylist = new ArrayList();
                Cursor cursor1 = a.query(false, "rest_reservation", new String[] {
                    "rowid as _id", "name", "phone", "email", "notes", "guestNumber", "tableId", "tableName", "reservedDate", "reservedTime", 
                    "status"
                }, (new StringBuilder("reservedDate='")).append(s1).append("' and status=0").toString(), null, null, null, "reservedTime asc", null);
                if (cursor1.moveToFirst())
                {
                    do
                    {
                        Reservation reservation = new Reservation();
                        reservation.setId(cursor1.getInt(0));
                        reservation.setName(cursor1.getString(1));
                        reservation.setPhone(cursor1.getString(2));
                        reservation.setEmail(cursor1.getString(3));
                        reservation.setNotes(cursor1.getString(4));
                        reservation.setGuestNumber(cursor1.getInt(5));
                        reservation.setTableId(cursor1.getInt(6));
                        reservation.setTableName(cursor1.getString(7));
                        reservation.setReservedDate(cursor1.getString(8));
                        reservation.setReservedTime(cursor1.getString(9));
                        reservation.setStatus(cursor1.getInt(10));
                        arraylist.add(reservation);
                    } while (cursor1.moveToNext());
                }
                cursor1.close();
                hashmap.put(s1, arraylist);
            } while (cursor.moveToNext());
            cursor.close();
        }
        return hashmap;
    }

    public final void a(int i)
    {
        a.delete("rest_reservation", (new StringBuilder("rowid=")).append(i).toString(), null);
    }

    public final void a(Reservation reservation)
    {
        a.beginTransaction();
        ContentValues contentvalues = new ContentValues();
        contentvalues.put("name", reservation.getName());
        contentvalues.put("phone", reservation.getPhone());
        contentvalues.put("email", reservation.getEmail());
        contentvalues.put("notes", reservation.getNotes());
        contentvalues.put("guestNumber", Integer.valueOf(reservation.getGuestNumber()));
        contentvalues.put("tableId", Integer.valueOf(reservation.getTableId()));
        contentvalues.put("tableName", reservation.getTableName());
        contentvalues.put("reservedDate", reservation.getReservedDate());
        contentvalues.put("reservedTime", reservation.getReservedTime());
        contentvalues.put("status", Integer.valueOf(reservation.getStatus()));
        a.insert("rest_reservation", null, contentvalues);
        a.setTransactionSuccessful();
        a.endTransaction();
        return;
        Exception exception;
        exception;
        a.endTransaction();
        throw exception;
    }

    public final void b(int i)
    {
        a.beginTransaction();
        ContentValues contentvalues = new ContentValues();
        contentvalues.put("status", Integer.valueOf(1));
        a.update("rest_reservation", contentvalues, (new StringBuilder("rowid=")).append(i).toString(), null);
        a.setTransactionSuccessful();
        a.endTransaction();
        return;
        Exception exception;
        exception;
        a.endTransaction();
        throw exception;
    }

    public final void b(Reservation reservation)
    {
        a.beginTransaction();
        ContentValues contentvalues = new ContentValues();
        contentvalues.put("name", reservation.getName());
        contentvalues.put("phone", reservation.getPhone());
        contentvalues.put("email", reservation.getEmail());
        contentvalues.put("notes", reservation.getNotes());
        contentvalues.put("guestNumber", Integer.valueOf(reservation.getGuestNumber()));
        contentvalues.put("tableId", Integer.valueOf(reservation.getTableId()));
        contentvalues.put("tableName", reservation.getTableName());
        contentvalues.put("reservedDate", reservation.getReservedDate());
        contentvalues.put("reservedTime", reservation.getReservedTime());
        contentvalues.put("status", Integer.valueOf(reservation.getStatus()));
        a.update("rest_reservation", contentvalues, (new StringBuilder("rowid=")).append(reservation.getId()).toString(), null);
        a.setTransactionSuccessful();
        a.endTransaction();
        return;
        Exception exception;
        exception;
        a.endTransaction();
        throw exception;
    }
}
