.class final Lcom/aadhk/restpos/d/id;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/d/ia;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/d/ia;)V
    .locals 0
    .parameter

    .prologue
    .line 119
    iput-object p1, p0, Lcom/aadhk/restpos/d/id;->a:Lcom/aadhk/restpos/d/ia;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 122
    check-cast p3, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;

    .line 123
    iget-wide v0, p3, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;->packedPosition:J

    invoke-static {v0, v1}, Landroid/widget/ExpandableListView;->getPackedPositionType(J)I

    move-result v0

    .line 124
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 125
    iget-object v0, p0, Lcom/aadhk/restpos/d/id;->a:Lcom/aadhk/restpos/d/ia;

    invoke-static {v0}, Lcom/aadhk/restpos/d/ia;->c(Lcom/aadhk/restpos/d/ia;)Lcom/aadhk/restpos/ReservationActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/ReservationActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 126
    const v1, 0x7f0f0014

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 127
    const v0, 0x7f09031e

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 128
    iget-object v1, p0, Lcom/aadhk/restpos/d/id;->a:Lcom/aadhk/restpos/d/ia;

    invoke-static {v1}, Lcom/aadhk/restpos/d/ia;->c(Lcom/aadhk/restpos/d/ia;)Lcom/aadhk/restpos/ReservationActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/aadhk/restpos/ReservationActivity;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 129
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 132
    :cond_0
    return-void
.end method
