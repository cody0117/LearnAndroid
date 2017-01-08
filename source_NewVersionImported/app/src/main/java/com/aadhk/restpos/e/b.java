// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.e;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.DashPathEffect;
import android.graphics.Paint;
import android.graphics.Typeface;
import android.text.TextPaint;
import com.aadhk.restpos.POSApp;
import com.aadhk.restpos.bean.Company;
import com.aadhk.restpos.bean.POSPrinterSetting;
import com.aadhk.restpos.f.l;

abstract class b
{

    protected int A;
    protected String B;
    protected Company C;
    protected Context a;
    protected Bitmap b;
    protected Canvas c;
    protected int d;
    protected int e;
    protected int f;
    protected int g;
    protected int h;
    protected int i;
    protected int j;
    protected Paint k;
    protected Paint l;
    protected Paint m;
    protected Paint n;
    protected TextPaint o;
    protected Typeface p;
    protected Typeface q;
    protected int r;
    protected int s;
    protected int t;
    protected int u;
    protected int v;
    protected float w;
    protected float x;
    protected l y;
    protected String z;

    b()
    {
    }

    protected abstract void a();

    protected final void a(Context context, POSPrinterSetting posprintersetting)
    {
        a = context;
        r = 8 * posprintersetting.getPaperWidth();
        d = posprintersetting.getFontSize();
        g = 8 * posprintersetting.getMarginTop();
        h = 8 * posprintersetting.getMarginBottom();
        i = 8 * posprintersetting.getMarginLeft();
        j = 8 * posprintersetting.getMarginRight();
        t = i;
        u = r - j;
        v = (r - i - j) / 2 + i;
        e = 6 + d;
        f = 2 + d;
        p = Typeface.create("Arial", 0);
        q = Typeface.create("Arial", 1);
        n = new Paint();
        n.setARGB(255, 0, 0, 0);
        n.setPathEffect(new DashPathEffect(new float[] {
            12F, 4F
        }, 0.0F));
        n.setStyle(android.graphics.Paint.Style.STROKE);
        n.setTypeface(p);
        n.setStrokeWidth(3F);
        k = new Paint();
        k.setFilterBitmap(true);
        k.setAntiAlias(true);
        k.setDither(true);
        k.setFlags(128);
        k.setShader(null);
        k.setTextAlign(android.graphics.Paint.Align.LEFT);
        k.setTextSize(d);
        k.setTypeface(p);
        l = new Paint();
        l.setFilterBitmap(true);
        l.setAntiAlias(true);
        l.setDither(true);
        l.setFlags(128);
        l.setShader(null);
        l.setTextAlign(android.graphics.Paint.Align.CENTER);
        l.setTextSize(4 + d);
        l.setTypeface(p);
        m = new Paint();
        m.setTypeface(p);
        m.setFilterBitmap(true);
        m.setAntiAlias(true);
        m.setDither(true);
        m.setFlags(128);
        m.setShader(null);
        m.setTextAlign(android.graphics.Paint.Align.RIGHT);
        m.setTextSize(d);
        m.setTypeface(p);
        o = new TextPaint(k);
        x = k.measureText("99 ");
        w = m.measureText(" $$9999.99");
        C = ((POSApp)context.getApplicationContext()).b();
        z = C.getCurrencySign();
        A = C.getDecimalPlace();
        y = new l(context);
        B = y.c();
    }

    protected abstract void b();

    protected abstract void c();

    protected abstract void d();

    public Bitmap e()
    {
        d();
        a();
        b();
        c();
        return b;
    }
}
