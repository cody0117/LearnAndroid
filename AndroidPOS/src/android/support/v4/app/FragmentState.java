// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.app;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;

// Referenced classes of package android.support.v4.app:
//            Fragment, FragmentActivity, FragmentManagerImpl

final class FragmentState
    implements Parcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new _cls1();
    final Bundle mArguments;
    final String mClassName;
    final int mContainerId;
    final boolean mDetached;
    final int mFragmentId;
    final boolean mFromLayout;
    final int mIndex;
    Fragment mInstance;
    final boolean mRetainInstance;
    Bundle mSavedFragmentState;
    final String mTag;

    public FragmentState(Parcel parcel)
    {
        boolean flag = true;
        super();
        mClassName = parcel.readString();
        mIndex = parcel.readInt();
        boolean flag1;
        boolean flag2;
        if (parcel.readInt() != 0)
        {
            flag1 = flag;
        } else
        {
            flag1 = false;
        }
        mFromLayout = flag1;
        mFragmentId = parcel.readInt();
        mContainerId = parcel.readInt();
        mTag = parcel.readString();
        if (parcel.readInt() != 0)
        {
            flag2 = flag;
        } else
        {
            flag2 = false;
        }
        mRetainInstance = flag2;
        if (parcel.readInt() == 0)
        {
            flag = false;
        }
        mDetached = flag;
        mArguments = parcel.readBundle();
        mSavedFragmentState = parcel.readBundle();
    }

    public FragmentState(Fragment fragment)
    {
        mClassName = fragment.getClass().getName();
        mIndex = fragment.mIndex;
        mFromLayout = fragment.mFromLayout;
        mFragmentId = fragment.mFragmentId;
        mContainerId = fragment.mContainerId;
        mTag = fragment.mTag;
        mRetainInstance = fragment.mRetainInstance;
        mDetached = fragment.mDetached;
        mArguments = fragment.mArguments;
    }

    public final int describeContents()
    {
        return 0;
    }

    public final Fragment instantiate(FragmentActivity fragmentactivity, Fragment fragment)
    {
        if (mInstance != null)
        {
            return mInstance;
        }
        if (mArguments != null)
        {
            mArguments.setClassLoader(fragmentactivity.getClassLoader());
        }
        mInstance = Fragment.instantiate(fragmentactivity, mClassName, mArguments);
        if (mSavedFragmentState != null)
        {
            mSavedFragmentState.setClassLoader(fragmentactivity.getClassLoader());
            mInstance.mSavedFragmentState = mSavedFragmentState;
        }
        mInstance.setIndex(mIndex, fragment);
        mInstance.mFromLayout = mFromLayout;
        mInstance.mRestored = true;
        mInstance.mFragmentId = mFragmentId;
        mInstance.mContainerId = mContainerId;
        mInstance.mTag = mTag;
        mInstance.mRetainInstance = mRetainInstance;
        mInstance.mDetached = mDetached;
        mInstance.mFragmentManager = fragmentactivity.mFragments;
        if (FragmentManagerImpl.DEBUG)
        {
            (new StringBuilder("Instantiated fragment ")).append(mInstance);
        }
        return mInstance;
    }

    public final void writeToParcel(Parcel parcel, int i)
    {
        int j = 1;
        parcel.writeString(mClassName);
        parcel.writeInt(mIndex);
        int k;
        int l;
        if (mFromLayout)
        {
            k = j;
        } else
        {
            k = 0;
        }
        parcel.writeInt(k);
        parcel.writeInt(mFragmentId);
        parcel.writeInt(mContainerId);
        parcel.writeString(mTag);
        if (mRetainInstance)
        {
            l = j;
        } else
        {
            l = 0;
        }
        parcel.writeInt(l);
        if (!mDetached)
        {
            j = 0;
        }
        parcel.writeInt(j);
        parcel.writeBundle(mArguments);
        parcel.writeBundle(mSavedFragmentState);
    }


    private class _cls1
        implements android.os.Parcelable.Creator
    {

        public final FragmentState createFromParcel(Parcel parcel)
        {
            return new FragmentState(parcel);
        }

        public final volatile Object createFromParcel(Parcel parcel)
        {
            return createFromParcel(parcel);
        }

        public final FragmentState[] newArray(int i)
        {
            return new FragmentState[i];
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
