// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.product.view;

import android.content.Context;
import android.graphics.Bitmap;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.ListView;
import com.aadhk.product.a.a;
import com.aadhk.product.library.b;

public class DragListView extends ListView
{

    private ImageView a;
    private int b;
    private int c;
    private int d;
    private int e;
    private int f;
    private int g;
    private int h;
    private WindowManager i;
    private android.view.WindowManager.LayoutParams j;
    private final int k;
    private int l;
    private int m;
    private a n;
    private ViewGroup o;
    private final Context p;

    public DragListView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        k = ViewConfiguration.get(context).getScaledTouchSlop();
        p = context;
    }

    private void a()
    {
        if (a != null)
        {
            i.removeView(a);
            a = null;
        }
    }

    public boolean onInterceptTouchEvent(MotionEvent motionevent)
    {
        if (motionevent.getAction() == 0)
        {
            int i1 = (int)motionevent.getX();
            int j1 = (int)motionevent.getY();
            int k1 = pointToPosition(i1, j1);
            d = k1;
            c = k1;
            b = k1;
            if (c == -1)
            {
                return super.onInterceptTouchEvent(motionevent);
            }
            o = (ViewGroup)getChildAt(c - getFirstVisiblePosition());
            e = i1 - o.getLeft();
            f = j1 - o.getTop();
            g = (int)(motionevent.getRawX() - (float)i1);
            h = (int)(motionevent.getRawY() - (float)j1);
            View view = o.findViewById(b.e);
            if (view != null && i1 > -20 + view.getLeft())
            {
                l = Math.min(j1 - k, getHeight() / 3);
                m = Math.max(j1 + k, (2 * getHeight()) / 3);
                o.destroyDrawingCache();
                o.setDrawingCacheEnabled(true);
                Bitmap bitmap = Bitmap.createBitmap(o.getDrawingCache());
                a();
                j = new android.view.WindowManager.LayoutParams();
                j.gravity = 48;
                j.x = (i1 - e) + g;
                j.y = (j1 - f) + h;
                j.width = -2;
                j.height = -2;
                j.flags = 920;
                j.windowAnimations = 0;
                ImageView imageview = new ImageView(getContext());
                imageview.setImageBitmap(bitmap);
                i = (WindowManager)getContext().getSystemService("window");
                i.addView(imageview, j);
                a = imageview;
            }
            return false;
        } else
        {
            return super.onInterceptTouchEvent(motionevent);
        }
    }

    public boolean onTouchEvent(MotionEvent motionevent)
    {
        (new StringBuilder("=======dragImageView===")).append(a).append(", dragPosition:").append(c);
        if (a == null || c == -1) goto _L2; else goto _L1
_L1:
        motionevent.getAction();
        JVM INSTR tableswitch 0 2: default 76
    //                   0 78
    //                   1 103
    //                   2 145;
           goto _L3 _L4 _L5 _L6
_L3:
        return true;
_L4:
        n = (a)getAdapter();
        n.a(d);
        continue; /* Loop/switch isn't completed */
_L5:
        motionevent.getX();
        motionevent.getY();
        a();
        n = (a)getAdapter();
        n.a();
        n.b();
        continue; /* Loop/switch isn't completed */
_L6:
        int i1 = (int)motionevent.getX();
        int j1 = (int)motionevent.getY();
        if (a != null)
        {
            j.x = (i1 - e) + g;
            j.y = (j1 - f) + h;
            i.updateViewLayout(a, j);
        }
        int k1 = pointToPosition(i1, j1);
        int l1;
        byte byte0;
        if (j1 < getChildAt(0).getTop())
        {
            l1 = 0;
        } else
        if (j1 > getChildAt(-1 + getChildCount()).getBottom())
        {
            l1 = -1 + getAdapter().getCount();
        } else
        {
            l1 = k1;
        }
        if (l1 >= 0 && l1 < getAdapter().getCount() && l1 != d)
        {
            n = (a)getAdapter();
            n.a(d, l1);
            d = l1;
            n.a(d);
        }
        if (l1 != -1)
        {
            c = l1;
        }
        if (j1 < l)
        {
            byte0 = 8;
        } else
        if (j1 > m)
        {
            byte0 = -8;
        } else
        {
            byte0 = 0;
        }
        if (byte0 != 0)
        {
            View view = getChildAt(c - getFirstVisiblePosition());
            if (view != null)
            {
                setSelectionFromTop(c, byte0 + view.getTop());
            }
        }
        continue; /* Loop/switch isn't completed */
_L2:
        return super.onTouchEvent(motionevent);
        if (true) goto _L3; else goto _L7
_L7:
    }
}
