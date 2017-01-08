package com.example.farejudgeapp;

import android.content.Context;
import android.database.Cursor;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CursorAdapter;
import android.widget.TextView;
 
public class ArrayAdapter extends CursorAdapter {
 

    @SuppressWarnings("deprecation")
	public ArrayAdapter(Context context, Cursor c) {
        super(context, c);
    }
 
    @Override
    public View newView(Context context, Cursor cursor, ViewGroup parent) {
        // when the view will be created for first time,
        // we need to tell the adapters, how each item will look
        LayoutInflater inflater = LayoutInflater.from(parent.getContext());
        View retView = inflater.inflate(R.layout.listall, parent, false);
 
        return retView;
    }
 
    @Override
    public void bindView(View view, Context context, Cursor cursor) {
        // here we are setting our data
        // that means, take the data from the cursor and put it in views
 
        TextView textViewReviewerID = (TextView) view.findViewById(R.id.reviewerid);
        textViewReviewerID.setText(cursor.getString(cursor.getColumnIndex(cursor.getColumnName(1))));
 
        TextView textViewEstabName = (TextView) view.findViewById(R.id.estabname);
        textViewEstabName.setText(cursor.getString(cursor.getColumnIndex(cursor.getColumnName(2))));
    }
}