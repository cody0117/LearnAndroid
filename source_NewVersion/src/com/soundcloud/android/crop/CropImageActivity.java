// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.soundcloud.android.crop;

import android.content.ContentResolver;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BitmapRegionDecoder;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import android.net.Uri;
import android.opengl.GLES10;
import android.os.Bundle;
import android.os.Handler;
import android.view.View;
import java.io.IOException;
import java.util.ArrayList;

// Referenced classes of package com.soundcloud.android.crop:
//            t, k, ac, h, 
//            CropImageView, n, aa, g, 
//            z, y, b, c, 
//            d, e, v

public class CropImageActivity extends t
{

    private static final boolean a;
    private final Handler b = new Handler();
    private int c;
    private int d;
    private int e;
    private int f;
    private int g;
    private Uri h;
    private Uri i;
    private boolean j;
    private int k;
    private ac l;
    private CropImageView m;
    private n n;

    public CropImageActivity()
    {
    }

    private int a(Uri uri)
    {
        java.io.InputStream inputstream;
        boolean flag;
        android.graphics.BitmapFactory.Options options;
        inputstream = null;
        flag = true;
        options = new android.graphics.BitmapFactory.Options();
        options.inJustDecodeBounds = flag;
        inputstream = getContentResolver().openInputStream(uri);
        BitmapFactory.decodeStream(inputstream, null, options);
        int ai[];
        com.soundcloud.android.crop.k.a(inputstream);
        ai = new int[flag];
        GLES10.glGetIntegerv(3379, ai, 0);
_L2:
        if (options.outHeight / flag <= ai[0] && options.outWidth / flag <= ai[0])
        {
            return ((flag) ? 1 : 0);
        }
        break MISSING_BLOCK_LABEL_93;
        Exception exception;
        exception;
        com.soundcloud.android.crop.k.a(inputstream);
        throw exception;
        flag <<= true;
        if (true) goto _L2; else goto _L1
_L1:
    }

    private Bitmap a(Bitmap bitmap, Rect rect)
    {
        java.io.InputStream inputstream;
        b();
        inputstream = null;
        BitmapRegionDecoder bitmapregiondecoder;
        int i1;
        int j1;
        RectF rectf;
        inputstream = getContentResolver().openInputStream(h);
        bitmapregiondecoder = BitmapRegionDecoder.newInstance(inputstream, false);
        i1 = bitmapregiondecoder.getWidth();
        j1 = bitmapregiondecoder.getHeight();
        if (g == 0)
        {
            break MISSING_BLOCK_LABEL_173;
        }
        Matrix matrix = new Matrix();
        matrix.setRotate(-g);
        rectf = new RectF();
        matrix.mapRect(rectf, new RectF(rect));
        int k1;
        float f1;
        int l1;
        int i2;
        Bitmap bitmap1;
        if (rectf.left < 0.0F)
        {
            k1 = i1;
        } else
        {
            k1 = 0;
        }
        f1 = k1;
        l1 = rectf.top != 0.0F;
        i2 = 0;
        if (l1 < 0)
        {
            i2 = j1;
        }
        rectf.offset(f1, i2);
        rect = new Rect((int)rectf.left, (int)rectf.top, (int)rectf.right, (int)rectf.bottom);
        bitmap1 = bitmapregiondecoder.decodeRegion(rect, new android.graphics.BitmapFactory.Options());
        com.soundcloud.android.crop.k.a(inputstream);
        return bitmap1;
        IllegalArgumentException illegalargumentexception;
        illegalargumentexception;
        throw new IllegalArgumentException((new StringBuilder("Rectangle ")).append(rect).append(" is outside of the image (").append(i1).append(",").append(j1).append(",").append(g).append(")").toString(), illegalargumentexception);
        IOException ioexception;
        ioexception;
        (new StringBuilder("Error cropping picture: ")).append(ioexception.getMessage());
        finish();
        com.soundcloud.android.crop.k.a(inputstream);
        return bitmap;
        Exception exception;
        exception;
        com.soundcloud.android.crop.k.a(inputstream);
        throw exception;
    }

    private Bitmap a(ac ac1, Bitmap bitmap, Rect rect, int i1, int j1, int k1, int l1)
    {
        System.gc();
        Bitmap bitmap2 = Bitmap.createBitmap(k1, l1, android.graphics.Bitmap.Config.RGB_565);
        Bitmap bitmap1 = bitmap2;
        Canvas canvas = new Canvas(bitmap1);
        RectF rectf = new RectF(0.0F, 0.0F, i1, j1);
        Matrix matrix = new Matrix();
        matrix.setRectToRect(new RectF(rect), rectf, android.graphics.Matrix.ScaleToFit.FILL);
        matrix.preConcat(ac1.c());
        canvas.drawBitmap(ac1.b(), matrix, null);
_L2:
        b();
        return bitmap1;
        OutOfMemoryError outofmemoryerror;
        outofmemoryerror;
        OutOfMemoryError outofmemoryerror1;
        outofmemoryerror1 = outofmemoryerror;
        bitmap1 = bitmap;
_L3:
        (new StringBuilder("Error cropping picture: ")).append(outofmemoryerror1.getMessage());
        System.gc();
        if (true) goto _L2; else goto _L1
_L1:
        outofmemoryerror1;
          goto _L3
    }

    static ac a(CropImageActivity cropimageactivity)
    {
        return cropimageactivity.l;
    }

    static void a(CropImageActivity cropimageactivity, Bitmap bitmap)
    {
        if (cropimageactivity.i == null) goto _L2; else goto _L1
_L1:
        java.io.OutputStream outputstream = null;
        outputstream = cropimageactivity.getContentResolver().openOutputStream(cropimageactivity.i);
        if (outputstream == null)
        {
            break MISSING_BLOCK_LABEL_36;
        }
        bitmap.compress(android.graphics.Bitmap.CompressFormat.JPEG, 90, outputstream);
        com.soundcloud.android.crop.k.a(outputstream);
_L4:
        if (!a)
        {
            com.soundcloud.android.crop.k.a(com.soundcloud.android.crop.k.a(cropimageactivity.getContentResolver(), cropimageactivity.h), com.soundcloud.android.crop.k.a(cropimageactivity.getContentResolver(), cropimageactivity.i));
        }
        Uri uri = cropimageactivity.i;
        cropimageactivity.setResult(-1, (new Intent()).putExtra("output", uri));
_L2:
        cropimageactivity.b.post(new h(cropimageactivity, bitmap));
        cropimageactivity.finish();
        return;
        IOException ioexception;
        ioexception;
        cropimageactivity.a(((Throwable) (ioexception)));
        (new StringBuilder("Cannot open file: ")).append(cropimageactivity.i);
        com.soundcloud.android.crop.k.a(outputstream);
        if (true) goto _L4; else goto _L3
_L3:
        Exception exception;
        exception;
        com.soundcloud.android.crop.k.a(outputstream);
        throw exception;
    }

    static void a(CropImageActivity cropimageactivity, n n1)
    {
        cropimageactivity.n = n1;
    }

    private void a(Throwable throwable)
    {
        setResult(404, (new Intent()).putExtra("error", throwable));
    }

    static CropImageView b(CropImageActivity cropimageactivity)
    {
        return cropimageactivity.m;
    }

    private void b()
    {
        m.a();
        if (l != null)
        {
            l.f();
        }
        System.gc();
    }

    static int c(CropImageActivity cropimageactivity)
    {
        return cropimageactivity.c;
    }

    static int d(CropImageActivity cropimageactivity)
    {
        return cropimageactivity.d;
    }

    static Handler e(CropImageActivity cropimageactivity)
    {
        return cropimageactivity.b;
    }

    static n f(CropImageActivity cropimageactivity)
    {
        return cropimageactivity.n;
    }

    static void g(CropImageActivity cropimageactivity)
    {
        if (cropimageactivity.n == null || cropimageactivity.j)
        {
            return;
        }
        cropimageactivity.j = true;
        n n1 = cropimageactivity.n;
        float f1 = cropimageactivity.k;
        Rect rect = new Rect((int)(f1 * n1.a.left), (int)(f1 * n1.a.top), (int)(f1 * n1.a.right), (int)(f1 * n1.a.bottom));
        int i1 = rect.width();
        int j1 = rect.height();
        int k1;
        int l1;
        Bitmap bitmap1;
        if (cropimageactivity.e > 0 && cropimageactivity.f > 0 && (i1 > cropimageactivity.e || j1 > cropimageactivity.f))
        {
            float f2 = (float)i1 / (float)j1;
            if ((float)cropimageactivity.e / (float)cropimageactivity.f > f2)
            {
                k1 = cropimageactivity.f;
                l1 = (int)(0.5F + f2 * (float)cropimageactivity.f);
            } else
            {
                l1 = cropimageactivity.e;
                k1 = (int)(0.5F + (float)cropimageactivity.e / f2);
            }
        } else
        {
            k1 = j1;
            l1 = i1;
        }
        if (a && cropimageactivity.l != null)
        {
            bitmap1 = cropimageactivity.a(cropimageactivity.l, null, rect, i1, j1, l1, k1);
            if (bitmap1 != null)
            {
                cropimageactivity.m.a(bitmap1, true);
                cropimageactivity.m.c();
                cropimageactivity.m.a.clear();
            }
        } else
        {
            Bitmap bitmap;
            try
            {
                bitmap = cropimageactivity.a(((Bitmap) (null)), rect);
            }
            catch (IllegalArgumentException illegalargumentexception)
            {
                cropimageactivity.a(illegalargumentexception);
                cropimageactivity.finish();
                return;
            }
            bitmap1 = bitmap;
            if (bitmap1 != null)
            {
                cropimageactivity.m.a(new ac(bitmap1, cropimageactivity.g), true);
                cropimageactivity.m.c();
                cropimageactivity.m.a.clear();
            }
        }
        if (bitmap1 != null)
        {
            com.soundcloud.android.crop.k.a(cropimageactivity, cropimageactivity.getResources().getString(aa.b), new g(cropimageactivity, bitmap1), cropimageactivity.b);
            return;
        } else
        {
            cropimageactivity.finish();
            return;
        }
    }

    public final volatile void a(v v)
    {
        super.a(v);
    }

    public final boolean a()
    {
        return j;
    }

    public final volatile void b(v v)
    {
        super.b(v);
    }

    public void onCreate(Bundle bundle)
    {
        java.io.InputStream inputstream;
        inputstream = null;
        super.onCreate(bundle);
        requestWindowFeature(1);
        setContentView(z.a);
        m = (CropImageView)findViewById(y.c);
        m.c = this;
        m.a(new b(this));
        findViewById(y.a).setOnClickListener(new c(this));
        findViewById(y.b).setOnClickListener(new d(this));
        Intent intent = getIntent();
        Bundle bundle1 = intent.getExtras();
        if (bundle1 != null)
        {
            c = bundle1.getInt("aspect_x");
            d = bundle1.getInt("aspect_y");
            e = bundle1.getInt("max_x");
            f = bundle1.getInt("max_y");
            i = (Uri)bundle1.getParcelable("output");
        }
        h = intent.getData();
        if (h == null)
        {
            break MISSING_BLOCK_LABEL_276;
        }
        g = com.soundcloud.android.crop.k.a(com.soundcloud.android.crop.k.a(getContentResolver(), h));
        k = a(h);
        inputstream = getContentResolver().openInputStream(h);
        android.graphics.BitmapFactory.Options options = new android.graphics.BitmapFactory.Options();
        options.inSampleSize = k;
        l = new ac(BitmapFactory.decodeStream(inputstream, null, options), g);
        com.soundcloud.android.crop.k.a(inputstream);
_L6:
        if (l != null) goto _L2; else goto _L1
_L1:
        finish();
_L4:
        return;
        IOException ioexception;
        ioexception;
        (new StringBuilder("Error reading picture: ")).append(ioexception.getMessage());
        a(ioexception);
        com.soundcloud.android.crop.k.a(inputstream);
        continue; /* Loop/switch isn't completed */
        OutOfMemoryError outofmemoryerror;
        outofmemoryerror;
        (new StringBuilder("OOM while reading picture: ")).append(outofmemoryerror.getMessage());
        a(outofmemoryerror);
        com.soundcloud.android.crop.k.a(inputstream);
        continue; /* Loop/switch isn't completed */
        Exception exception;
        exception;
        com.soundcloud.android.crop.k.a(inputstream);
        throw exception;
_L2:
        if (isFinishing()) goto _L4; else goto _L3
_L3:
        m.a(l, true);
        com.soundcloud.android.crop.k.a(this, getResources().getString(aa.c), new e(this), b);
        return;
        if (true) goto _L6; else goto _L5
_L5:
    }

    protected void onDestroy()
    {
        super.onDestroy();
        if (l != null)
        {
            l.f();
        }
    }

    public boolean onSearchRequested()
    {
        return false;
    }

    static 
    {
        boolean flag;
        if (android.os.Build.VERSION.SDK_INT < 10)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        a = flag;
    }
}
