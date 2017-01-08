// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package yuku.ambilwarna;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ComposeShader;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Shader;
import android.util.AttributeSet;
import android.view.View;

public class AmbilWarnaKotak extends View
{

    Paint a;
    Shader b;
    final float c[] = {
        1.0F, 1.0F, 1.0F
    };

    public AmbilWarnaKotak(Context context)
    {
        this(context, null);
        a();
    }

    public AmbilWarnaKotak(Context context, AttributeSet attributeset)
    {
        this(context, attributeset, 0);
        a();
    }

    public AmbilWarnaKotak(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        a();
    }

    private void a()
    {
        if (android.os.Build.VERSION.SDK_INT > 10)
        {
            setLayerType(1, null);
        }
    }

    final void a(float f)
    {
        c[0] = f;
        invalidate();
    }

    protected void onDraw(Canvas canvas)
    {
        super.onDraw(canvas);
        if (a == null)
        {
            a = new Paint();
            b = new LinearGradient(0.0F, 0.0F, 0.0F, getMeasuredHeight(), -1, 0xff000000, android.graphics.Shader.TileMode.CLAMP);
        }
        int i = Color.HSVToColor(c);
        LinearGradient lineargradient = new LinearGradient(0.0F, 0.0F, getMeasuredWidth(), 0.0F, -1, i, android.graphics.Shader.TileMode.CLAMP);
        ComposeShader composeshader = new ComposeShader(b, lineargradient, android.graphics.PorterDuff.Mode.MULTIPLY);
        a.setShader(composeshader);
        canvas.drawRect(0.0F, 0.0F, getMeasuredWidth(), getMeasuredHeight(), a);
    }
}
