// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.internal.view.menu;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.support.v4.internal.view.SupportMenuItem;
import android.support.v4.view.ActionProvider;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import android.widget.LinearLayout;

// Referenced classes of package android.support.v7.internal.view.menu:
//            MenuBuilder, SubMenuBuilder

public final class MenuItemImpl
    implements SupportMenuItem
{

    private static final int CHECKABLE = 1;
    private static final int CHECKED = 2;
    private static final int ENABLED = 16;
    private static final int EXCLUSIVE = 4;
    private static final int HIDDEN = 8;
    private static final int IS_ACTION = 32;
    static final int NO_ICON = 0;
    private static final int SHOW_AS_ACTION_MASK = 3;
    private static final String TAG = "MenuItemImpl";
    private static String sDeleteShortcutLabel;
    private static String sEnterShortcutLabel;
    private static String sPrependShortcutLabel;
    private static String sSpaceShortcutLabel;
    private ActionProvider mActionProvider;
    private View mActionView;
    private final int mCategoryOrder;
    private android.view.MenuItem.OnMenuItemClickListener mClickListener;
    private int mFlags;
    private final int mGroup;
    private Drawable mIconDrawable;
    private int mIconResId;
    private final int mId;
    private Intent mIntent;
    private boolean mIsActionViewExpanded;
    private Runnable mItemCallback;
    private MenuBuilder mMenu;
    private android.view.ContextMenu.ContextMenuInfo mMenuInfo;
    private android.support.v4.view.MenuItemCompat.OnActionExpandListener mOnActionExpandListener;
    private final int mOrdering;
    private char mShortcutAlphabeticChar;
    private char mShortcutNumericChar;
    private int mShowAsAction;
    private SubMenuBuilder mSubMenu;
    private CharSequence mTitle;
    private CharSequence mTitleCondensed;

    MenuItemImpl(MenuBuilder menubuilder, int i, int j, int k, int l, CharSequence charsequence, int i1)
    {
        mIconResId = 0;
        mFlags = 16;
        mShowAsAction = 0;
        mIsActionViewExpanded = false;
        mMenu = menubuilder;
        mId = j;
        mGroup = i;
        mCategoryOrder = k;
        mOrdering = l;
        mTitle = charsequence;
        mShowAsAction = i1;
    }

    public final void actionFormatChanged()
    {
        mMenu.onItemActionRequestChanged(this);
    }

    public final boolean collapseActionView()
    {
        if ((8 & mShowAsAction) != 0)
        {
            if (mActionView == null)
            {
                return true;
            }
            if (mOnActionExpandListener == null || mOnActionExpandListener.onMenuItemActionCollapse(this))
            {
                return mMenu.collapseItemActionView(this);
            }
        }
        return false;
    }

    public final boolean expandActionView()
    {
        while ((8 & mShowAsAction) == 0 || mActionView == null || mOnActionExpandListener != null && !mOnActionExpandListener.onMenuItemActionExpand(this)) 
        {
            return false;
        }
        return mMenu.expandItemActionView(this);
    }

    public final android.view.ActionProvider getActionProvider()
    {
        throw new UnsupportedOperationException("Implementation should use getSupportActionProvider!");
    }

    public final View getActionView()
    {
        if (mActionView != null)
        {
            return mActionView;
        }
        if (mActionProvider != null)
        {
            mActionView = mActionProvider.onCreateActionView(this);
            return mActionView;
        } else
        {
            return null;
        }
    }

    public final char getAlphabeticShortcut()
    {
        return mShortcutAlphabeticChar;
    }

    final Runnable getCallback()
    {
        return mItemCallback;
    }

    public final int getGroupId()
    {
        return mGroup;
    }

    public final Drawable getIcon()
    {
        if (mIconDrawable != null)
        {
            return mIconDrawable;
        }
        if (mIconResId != 0)
        {
            Drawable drawable = mMenu.getResources().getDrawable(mIconResId);
            mIconResId = 0;
            mIconDrawable = drawable;
            return drawable;
        } else
        {
            return null;
        }
    }

    public final Intent getIntent()
    {
        return mIntent;
    }

    public final int getItemId()
    {
        return mId;
    }

    public final android.view.ContextMenu.ContextMenuInfo getMenuInfo()
    {
        return mMenuInfo;
    }

    public final char getNumericShortcut()
    {
        return mShortcutNumericChar;
    }

    public final int getOrder()
    {
        return mCategoryOrder;
    }

    public final int getOrdering()
    {
        return mOrdering;
    }

    final char getShortcut()
    {
        return mShortcutAlphabeticChar;
    }

    final String getShortcutLabel()
    {
        char c;
        StringBuilder stringbuilder;
        c = getShortcut();
        if (c == 0)
        {
            return "";
        }
        stringbuilder = new StringBuilder(sPrependShortcutLabel);
        c;
        JVM INSTR lookupswitch 3: default 60
    //                   8: 82
    //                   10: 71
    //                   32: 93;
           goto _L1 _L2 _L3 _L4
_L1:
        stringbuilder.append(c);
_L6:
        return stringbuilder.toString();
_L3:
        stringbuilder.append(sEnterShortcutLabel);
        continue; /* Loop/switch isn't completed */
_L2:
        stringbuilder.append(sDeleteShortcutLabel);
        continue; /* Loop/switch isn't completed */
_L4:
        stringbuilder.append(sSpaceShortcutLabel);
        if (true) goto _L6; else goto _L5
_L5:
    }

    public final SubMenu getSubMenu()
    {
        return mSubMenu;
    }

    public final ActionProvider getSupportActionProvider()
    {
        return mActionProvider;
    }

    public final CharSequence getTitle()
    {
        return mTitle;
    }

    public final CharSequence getTitleCondensed()
    {
        if (mTitleCondensed != null)
        {
            return mTitleCondensed;
        } else
        {
            return mTitle;
        }
    }

    final CharSequence getTitleForItemView(MenuView.ItemView itemview)
    {
        if (itemview != null && itemview.prefersCondensedTitle())
        {
            return getTitleCondensed();
        } else
        {
            return getTitle();
        }
    }

    public final boolean hasCollapsibleActionView()
    {
        return (8 & mShowAsAction) != 0 && mActionView != null;
    }

    public final boolean hasSubMenu()
    {
        return mSubMenu != null;
    }

    public final boolean invoke()
    {
_L2:
        return true;
        if (mClickListener != null && mClickListener.onMenuItemClick(this) || mMenu.dispatchMenuItemSelected(mMenu.getRootMenu(), this)) goto _L2; else goto _L1
_L1:
        if (mItemCallback != null)
        {
            mItemCallback.run();
            return true;
        }
        if (mIntent == null)
        {
            continue; /* Loop/switch isn't completed */
        }
        mMenu.getContext().startActivity(mIntent);
        return true;
        ActivityNotFoundException activitynotfoundexception;
        activitynotfoundexception;
        if (mActionProvider != null && mActionProvider.onPerformDefaultAction()) goto _L2; else goto _L3
_L3:
        return false;
    }

    public final boolean isActionButton()
    {
        return (0x20 & mFlags) == 32;
    }

    public final boolean isActionViewExpanded()
    {
        return mIsActionViewExpanded;
    }

    public final boolean isCheckable()
    {
        return (1 & mFlags) == 1;
    }

    public final boolean isChecked()
    {
        return (2 & mFlags) == 2;
    }

    public final boolean isEnabled()
    {
        return (0x10 & mFlags) != 0;
    }

    public final boolean isExclusiveCheckable()
    {
        return (4 & mFlags) != 0;
    }

    public final boolean isVisible()
    {
        if (mActionProvider == null || !mActionProvider.overridesItemVisibility()) goto _L2; else goto _L1
_L1:
        if ((8 & mFlags) != 0 || !mActionProvider.isVisible()) goto _L4; else goto _L3
_L3:
        return true;
_L4:
        return false;
_L2:
        if ((8 & mFlags) != 0)
        {
            return false;
        }
        if (true) goto _L3; else goto _L5
_L5:
    }

    public final boolean requestsActionButton()
    {
        return (1 & mShowAsAction) == 1;
    }

    public final boolean requiresActionButton()
    {
        return (2 & mShowAsAction) == 2;
    }

    public final MenuItem setActionProvider(android.view.ActionProvider actionprovider)
    {
        throw new UnsupportedOperationException("Implementation should use setSupportActionProvider!");
    }

    public final SupportMenuItem setActionView(int i)
    {
        Context context = mMenu.getContext();
        setActionView(LayoutInflater.from(context).inflate(i, new LinearLayout(context), false));
        return this;
    }

    public final SupportMenuItem setActionView(View view)
    {
        mActionView = view;
        mActionProvider = null;
        if (view != null && view.getId() == -1 && mId > 0)
        {
            view.setId(mId);
        }
        mMenu.onItemActionRequestChanged(this);
        return this;
    }

    public final volatile MenuItem setActionView(int i)
    {
        return setActionView(i);
    }

    public final volatile MenuItem setActionView(View view)
    {
        return setActionView(view);
    }

    public final void setActionViewExpanded(boolean flag)
    {
        mIsActionViewExpanded = flag;
        mMenu.onItemsChanged(false);
    }

    public final MenuItem setAlphabeticShortcut(char c)
    {
        if (mShortcutAlphabeticChar == c)
        {
            return this;
        } else
        {
            mShortcutAlphabeticChar = Character.toLowerCase(c);
            mMenu.onItemsChanged(false);
            return this;
        }
    }

    public final MenuItem setCallback(Runnable runnable)
    {
        mItemCallback = runnable;
        return this;
    }

    public final MenuItem setCheckable(boolean flag)
    {
        int i = mFlags;
        int j = -2 & mFlags;
        boolean flag1;
        if (flag)
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        mFlags = flag1 | j;
        if (i != mFlags)
        {
            mMenu.onItemsChanged(false);
        }
        return this;
    }

    public final MenuItem setChecked(boolean flag)
    {
        if ((4 & mFlags) != 0)
        {
            mMenu.setExclusiveItemChecked(this);
            return this;
        } else
        {
            setCheckedInt(flag);
            return this;
        }
    }

    final void setCheckedInt(boolean flag)
    {
        int i = mFlags;
        int j = -3 & mFlags;
        byte byte0;
        if (flag)
        {
            byte0 = 2;
        } else
        {
            byte0 = 0;
        }
        mFlags = byte0 | j;
        if (i != mFlags)
        {
            mMenu.onItemsChanged(false);
        }
    }

    public final MenuItem setEnabled(boolean flag)
    {
        if (flag)
        {
            mFlags = 0x10 | mFlags;
        } else
        {
            mFlags = 0xffffffef & mFlags;
        }
        mMenu.onItemsChanged(false);
        return this;
    }

    public final void setExclusiveCheckable(boolean flag)
    {
        int i = -5 & mFlags;
        byte byte0;
        if (flag)
        {
            byte0 = 4;
        } else
        {
            byte0 = 0;
        }
        mFlags = byte0 | i;
    }

    public final MenuItem setIcon(int i)
    {
        mIconDrawable = null;
        mIconResId = i;
        mMenu.onItemsChanged(false);
        return this;
    }

    public final MenuItem setIcon(Drawable drawable)
    {
        mIconResId = 0;
        mIconDrawable = drawable;
        mMenu.onItemsChanged(false);
        return this;
    }

    public final MenuItem setIntent(Intent intent)
    {
        mIntent = intent;
        return this;
    }

    public final void setIsActionButton(boolean flag)
    {
        if (flag)
        {
            mFlags = 0x20 | mFlags;
            return;
        } else
        {
            mFlags = 0xffffffdf & mFlags;
            return;
        }
    }

    final void setMenuInfo(android.view.ContextMenu.ContextMenuInfo contextmenuinfo)
    {
        mMenuInfo = contextmenuinfo;
    }

    public final MenuItem setNumericShortcut(char c)
    {
        if (mShortcutNumericChar == c)
        {
            return this;
        } else
        {
            mShortcutNumericChar = c;
            mMenu.onItemsChanged(false);
            return this;
        }
    }

    public final MenuItem setOnActionExpandListener(android.view.MenuItem.OnActionExpandListener onactionexpandlistener)
    {
        throw new UnsupportedOperationException("Implementation should use setSupportOnActionExpandListener!");
    }

    public final MenuItem setOnMenuItemClickListener(android.view.MenuItem.OnMenuItemClickListener onmenuitemclicklistener)
    {
        mClickListener = onmenuitemclicklistener;
        return this;
    }

    public final MenuItem setShortcut(char c, char c1)
    {
        mShortcutNumericChar = c;
        mShortcutAlphabeticChar = Character.toLowerCase(c1);
        mMenu.onItemsChanged(false);
        return this;
    }

    public final void setShowAsAction(int i)
    {
        switch (i & 3)
        {
        default:
            throw new IllegalArgumentException("SHOW_AS_ACTION_ALWAYS, SHOW_AS_ACTION_IF_ROOM, and SHOW_AS_ACTION_NEVER are mutually exclusive.");

        case 0: // '\0'
        case 1: // '\001'
        case 2: // '\002'
            mShowAsAction = i;
            break;
        }
        mMenu.onItemActionRequestChanged(this);
    }

    public final SupportMenuItem setShowAsActionFlags(int i)
    {
        setShowAsAction(i);
        return this;
    }

    public final volatile MenuItem setShowAsActionFlags(int i)
    {
        return setShowAsActionFlags(i);
    }

    final void setSubMenu(SubMenuBuilder submenubuilder)
    {
        mSubMenu = submenubuilder;
        submenubuilder.setHeaderTitle(getTitle());
    }

    public final SupportMenuItem setSupportActionProvider(ActionProvider actionprovider)
    {
        if (mActionProvider != actionprovider)
        {
            mActionView = null;
            if (mActionProvider != null)
            {
                mActionProvider.setVisibilityListener(null);
            }
            mActionProvider = actionprovider;
            mMenu.onItemsChanged(true);
            if (actionprovider != null)
            {
                actionprovider.setVisibilityListener(new _cls1());
                return this;
            }
        }
        return this;
    }

    public final SupportMenuItem setSupportOnActionExpandListener(android.support.v4.view.MenuItemCompat.OnActionExpandListener onactionexpandlistener)
    {
        mOnActionExpandListener = onactionexpandlistener;
        return this;
    }

    public final MenuItem setTitle(int i)
    {
        return setTitle(((CharSequence) (mMenu.getContext().getString(i))));
    }

    public final MenuItem setTitle(CharSequence charsequence)
    {
        mTitle = charsequence;
        mMenu.onItemsChanged(false);
        if (mSubMenu != null)
        {
            mSubMenu.setHeaderTitle(charsequence);
        }
        return this;
    }

    public final MenuItem setTitleCondensed(CharSequence charsequence)
    {
        mTitleCondensed = charsequence;
        if (charsequence == null)
        {
            CharSequence _tmp = mTitle;
        }
        mMenu.onItemsChanged(false);
        return this;
    }

    public final MenuItem setVisible(boolean flag)
    {
        if (setVisibleInt(flag))
        {
            mMenu.onItemVisibleChanged(this);
        }
        return this;
    }

    final boolean setVisibleInt(boolean flag)
    {
        int i = mFlags;
        int j = -9 & mFlags;
        byte byte0;
        int k;
        boolean flag1;
        if (flag)
        {
            byte0 = 0;
        } else
        {
            byte0 = 8;
        }
        mFlags = byte0 | j;
        k = mFlags;
        flag1 = false;
        if (i != k)
        {
            flag1 = true;
        }
        return flag1;
    }

    public final boolean shouldShowIcon()
    {
        return mMenu.getOptionalIconsVisible();
    }

    final boolean shouldShowShortcut()
    {
        return mMenu.isShortcutsVisible() && getShortcut() != 0;
    }

    public final boolean showsTextAsAction()
    {
        return (4 & mShowAsAction) == 4;
    }

    public final String toString()
    {
        return mTitle.toString();
    }


    private class _cls1
        implements android.support.v4.view.ActionProvider.VisibilityListener
    {

        final MenuItemImpl this$0;

        public void onActionProviderVisibilityChanged(boolean flag)
        {
            mMenu.onItemVisibleChanged(MenuItemImpl.this);
        }

        _cls1()
        {
            this$0 = MenuItemImpl.this;
            super();
        }
    }

}
