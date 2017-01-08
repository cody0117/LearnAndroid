// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.aadhk.restpos.d;

import android.view.ContextMenu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.widget.ExpandableListView;
import com.aadhk.restpos.ReservationActivity;

// Referenced classes of package com.aadhk.restpos.d:
//            ia

final class id
    implements android.view.View.OnCreateContextMenuListener
{

    final ia a;

    id(ia ia1)
    {
        a = ia1;
        super();
    }

    public final void onCreateContextMenu(ContextMenu contextmenu, View view, android.view.ContextMenu.ContextMenuInfo contextmenuinfo)
    {
        if (ExpandableListView.getPackedPositionType(((android.widget.ExpandableListView.ExpandableListContextMenuInfo)contextmenuinfo).packedPosition) == 1)
        {
            ia.c(a).getMenuInflater().inflate(0x7f0f0014, contextmenu);
            MenuItem menuitem = contextmenu.findItem(0x7f09031e);
            if (ia.c(a).b())
            {
                menuitem.setVisible(false);
            }
        }
    }
}
