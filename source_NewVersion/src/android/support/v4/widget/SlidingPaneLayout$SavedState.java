// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.widget;

import android.os.Parcel;
import android.os.Parcelable;

class <init> extends android.view.t.SavedState
{

    public static final android.os.out.SavedState._cls1 CREATOR = new _cls1();
    boolean isOpen;

    public void writeToParcel(Parcel parcel, int i)
    {
        super.rcel(parcel, i);
        int j;
        if (isOpen)
        {
            j = 1;
        } else
        {
            j = 0;
        }
        parcel.writeInt(j);
    }


    private _cls1(Parcel parcel)
    {
        super(parcel);
        boolean flag;
        if (parcel.readInt() != 0)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        isOpen = flag;
    }

    isOpen(Parcel parcel, isOpen isopen)
    {
        this(parcel);
    }

    <init>(Parcelable parcelable)
    {
        super(parcelable);
    }

    class _cls1
        implements android.os.Parcelable.Creator
    {

        public final SlidingPaneLayout.SavedState createFromParcel(Parcel parcel)
        {
            return new SlidingPaneLayout.SavedState(parcel, null);
        }

        public final volatile Object createFromParcel(Parcel parcel)
        {
            return createFromParcel(parcel);
        }

        public final SlidingPaneLayout.SavedState[] newArray(int i)
        {
            return new SlidingPaneLayout.SavedState[i];
        }

        public final volatile Object[] newArray(int i)
        {
            return newArray(i);
        }

            _cls1()
            {
            }
    }

}