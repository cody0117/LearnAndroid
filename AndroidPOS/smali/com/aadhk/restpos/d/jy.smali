.class final Lcom/aadhk/restpos/d/jy;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/widget/ExpandableListView$OnGroupClickListener;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/d/jx;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/d/jx;)V
    .locals 0
    .parameter

    .prologue
    .line 91
    iput-object p1, p0, Lcom/aadhk/restpos/d/jy;->a:Lcom/aadhk/restpos/d/jx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGroupClick(Landroid/widget/ExpandableListView;Landroid/view/View;IJ)Z
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 94
    iget-object v0, p0, Lcom/aadhk/restpos/d/jy;->a:Lcom/aadhk/restpos/d/jx;

    invoke-static {v0}, Lcom/aadhk/restpos/d/jx;->a(Lcom/aadhk/restpos/d/jx;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/OrderItem;

    .line 95
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/OrderItem;->isSelected()Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/OrderItem;->setSelected(Z)V

    .line 96
    iget-object v0, p0, Lcom/aadhk/restpos/d/jy;->a:Lcom/aadhk/restpos/d/jx;

    invoke-static {v0}, Lcom/aadhk/restpos/d/jx;->b(Lcom/aadhk/restpos/d/jx;)Lcom/aadhk/restpos/d/jz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/d/jz;->notifyDataSetChanged()V

    .line 97
    return v2

    .line 95
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
