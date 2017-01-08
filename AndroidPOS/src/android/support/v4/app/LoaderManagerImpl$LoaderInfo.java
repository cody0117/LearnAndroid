// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.app;

import android.os.Bundle;
import android.support.v4.content.Loader;
import android.support.v4.util.DebugUtils;
import android.support.v4.util.SparseArrayCompat;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.lang.reflect.Modifier;

// Referenced classes of package android.support.v4.app:
//            LoaderManagerImpl, FragmentActivity, FragmentManagerImpl

final class mCallbacks
    implements android.support.v4.content.
{

    final Bundle mArgs;
     mCallbacks;
    Object mData;
    boolean mDeliveredData;
    boolean mDestroyed;
    boolean mHaveData;
    final int mId;
    boolean mListenerRegistered;
    Loader mLoader;
     mPendingLoader;
    boolean mReportNextStart;
    boolean mRetaining;
    boolean mRetainingStarted;
    boolean mStarted;
    final LoaderManagerImpl this$0;

    final void callOnLoadFinished(Loader loader, Object obj)
    {
        if (mCallbacks == null)
        {
            break MISSING_BLOCK_LABEL_123;
        }
        String s;
        Exception exception;
        if (mActivity != null)
        {
            String s1 = mActivity.mFragments.mNoTransactionsBecause;
            mActivity.mFragments.mNoTransactionsBecause = "onLoadFinished";
            s = s1;
        } else
        {
            s = null;
        }
        if (LoaderManagerImpl.DEBUG)
        {
            (new StringBuilder("  onLoadFinished in ")).append(loader).append(": ").append(loader.dataToString(obj));
        }
        mCallbacks.onLoadFinished(loader, obj);
        if (mActivity != null)
        {
            mActivity.mFragments.mNoTransactionsBecause = s;
        }
        mDeliveredData = true;
        return;
        exception;
        if (mActivity != null)
        {
            mActivity.mFragments.mNoTransactionsBecause = s;
        }
        throw exception;
    }

    final void destroy()
    {
_L2:
        if (LoaderManagerImpl.DEBUG)
        {
            (new StringBuilder("  Destroying: ")).append(this);
        }
        mDestroyed = true;
        boolean flag = mDeliveredData;
        mDeliveredData = false;
        if (mCallbacks == null || mLoader == null || !mHaveData || !flag)
        {
            break MISSING_BLOCK_LABEL_160;
        }
        if (LoaderManagerImpl.DEBUG)
        {
            (new StringBuilder("  Reseting: ")).append(this);
        }
        String s;
        Exception exception;
        if (mActivity != null)
        {
            String s1 = mActivity.mFragments.mNoTransactionsBecause;
            mActivity.mFragments.mNoTransactionsBecause = "onLoaderReset";
            s = s1;
        } else
        {
            s = null;
        }
        mCallbacks.onLoaderReset(mLoader);
        if (mActivity != null)
        {
            mActivity.mFragments.mNoTransactionsBecause = s;
        }
        mCallbacks = null;
        mData = null;
        mHaveData = false;
        if (mLoader != null)
        {
            if (mListenerRegistered)
            {
                mListenerRegistered = false;
                mLoader.unregisterListener(this);
            }
            mLoader.reset();
        }
        if (mPendingLoader != null)
        {
            this = mPendingLoader;
        } else
        {
            return;
        }
        if (true) goto _L2; else goto _L1
_L1:
        exception;
        if (mActivity != null)
        {
            mActivity.mFragments.mNoTransactionsBecause = s;
        }
        throw exception;
    }

    public final void dump(String s, FileDescriptor filedescriptor, PrintWriter printwriter, String as[])
    {
        do
        {
            printwriter.print(s);
            printwriter.print("mId=");
            printwriter.print(mId);
            printwriter.print(" mArgs=");
            printwriter.println(mArgs);
            printwriter.print(s);
            printwriter.print("mCallbacks=");
            printwriter.println(mCallbacks);
            printwriter.print(s);
            printwriter.print("mLoader=");
            printwriter.println(mLoader);
            if (mLoader != null)
            {
                mLoader.dump((new StringBuilder()).append(s).append("  ").toString(), filedescriptor, printwriter, as);
            }
            if (mHaveData || mDeliveredData)
            {
                printwriter.print(s);
                printwriter.print("mHaveData=");
                printwriter.print(mHaveData);
                printwriter.print("  mDeliveredData=");
                printwriter.println(mDeliveredData);
                printwriter.print(s);
                printwriter.print("mData=");
                printwriter.println(mData);
            }
            printwriter.print(s);
            printwriter.print("mStarted=");
            printwriter.print(mStarted);
            printwriter.print(" mReportNextStart=");
            printwriter.print(mReportNextStart);
            printwriter.print(" mDestroyed=");
            printwriter.println(mDestroyed);
            printwriter.print(s);
            printwriter.print("mRetaining=");
            printwriter.print(mRetaining);
            printwriter.print(" mRetainingStarted=");
            printwriter.print(mRetainingStarted);
            printwriter.print(" mListenerRegistered=");
            printwriter.println(mListenerRegistered);
            if (mPendingLoader != null)
            {
                printwriter.print(s);
                printwriter.println("Pending Loader ");
                printwriter.print(mPendingLoader);
                printwriter.println(":");
                this = mPendingLoader;
                s = (new StringBuilder()).append(s).append("  ").toString();
            } else
            {
                return;
            }
        } while (true);
    }

    final void finishRetain()
    {
        if (mRetaining)
        {
            if (LoaderManagerImpl.DEBUG)
            {
                (new StringBuilder("  Finished Retaining: ")).append(this);
            }
            mRetaining = false;
            if (mStarted != mRetainingStarted && !mStarted)
            {
                stop();
            }
        }
        if (mStarted && mHaveData && !mReportNextStart)
        {
            callOnLoadFinished(mLoader, mData);
        }
    }

    public final void onLoadComplete(Loader loader, Object obj)
    {
        if (LoaderManagerImpl.DEBUG)
        {
            (new StringBuilder("onLoadComplete: ")).append(this);
        }
        if (mDestroyed)
        {
            boolean _tmp = LoaderManagerImpl.DEBUG;
        } else
        {
            if (mLoaders.get(mId) != this)
            {
                boolean _tmp1 = LoaderManagerImpl.DEBUG;
                return;
            }
            mData mdata = mPendingLoader;
            if (mdata != null)
            {
                if (LoaderManagerImpl.DEBUG)
                {
                    (new StringBuilder("  Switching to pending loader: ")).append(mdata);
                }
                mPendingLoader = null;
                mLoaders.put(mId, null);
                destroy();
                installLoader(mdata);
                return;
            }
            if (mData != obj || !mHaveData)
            {
                mData = obj;
                mHaveData = true;
                if (mStarted)
                {
                    callOnLoadFinished(loader, obj);
                }
            }
            mData mdata1 = (callOnLoadFinished)mInactiveLoaders.get(mId);
            if (mdata1 != null && mdata1 != this)
            {
                mdata1.mDeliveredData = false;
                mdata1.destroy();
                mInactiveLoaders.remove(mId);
            }
            if (mActivity != null && !hasRunningLoaders())
            {
                mActivity.mFragments.startPendingDeferredFragments();
                return;
            }
        }
    }

    final void reportStart()
    {
        if (mStarted && mReportNextStart)
        {
            mReportNextStart = false;
            if (mHaveData)
            {
                callOnLoadFinished(mLoader, mData);
            }
        }
    }

    final void retain()
    {
        if (LoaderManagerImpl.DEBUG)
        {
            (new StringBuilder("  Retaining: ")).append(this);
        }
        mRetaining = true;
        mRetainingStarted = mStarted;
        mStarted = false;
        mCallbacks = null;
    }

    final void start()
    {
        if (mRetaining && mRetainingStarted)
        {
            mStarted = true;
        } else
        if (!mStarted)
        {
            mStarted = true;
            if (LoaderManagerImpl.DEBUG)
            {
                (new StringBuilder("  Starting: ")).append(this);
            }
            if (mLoader == null && mCallbacks != null)
            {
                mLoader = mCallbacks.onCreateLoader(mId, mArgs);
            }
            if (mLoader != null)
            {
                if (mLoader.getClass().isMemberClass() && !Modifier.isStatic(mLoader.getClass().getModifiers()))
                {
                    throw new IllegalArgumentException((new StringBuilder("Object returned from onCreateLoader must not be a non-static inner member class: ")).append(mLoader).toString());
                }
                if (!mListenerRegistered)
                {
                    mLoader.registerListener(mId, this);
                    mListenerRegistered = true;
                }
                mLoader.startLoading();
                return;
            }
        }
    }

    final void stop()
    {
        if (LoaderManagerImpl.DEBUG)
        {
            (new StringBuilder("  Stopping: ")).append(this);
        }
        mStarted = false;
        if (!mRetaining && mLoader != null && mListenerRegistered)
        {
            mListenerRegistered = false;
            mLoader.unregisterListener(this);
            mLoader.stopLoading();
        }
    }

    public final String toString()
    {
        StringBuilder stringbuilder = new StringBuilder(64);
        stringbuilder.append("LoaderInfo{");
        stringbuilder.append(Integer.toHexString(System.identityHashCode(this)));
        stringbuilder.append(" #");
        stringbuilder.append(mId);
        stringbuilder.append(" : ");
        DebugUtils.buildShortClassTag(mLoader, stringbuilder);
        stringbuilder.append("}}");
        return stringbuilder.toString();
    }

    public (int i, Bundle bundle,  )
    {
        this$0 = LoaderManagerImpl.this;
        super();
        mId = i;
        mArgs = bundle;
        mCallbacks = ;
    }
}
