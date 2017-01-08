.class final Lcom/aadhk/restpos/d/fo;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/widget/ExpandableListView$OnGroupClickListener;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/d/fn;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/d/fn;)V
    .locals 0
    .parameter

    .prologue
    .line 95
    iput-object p1, p0, Lcom/aadhk/restpos/d/fo;->a:Lcom/aadhk/restpos/d/fn;

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

    .line 98
    iget-object v0, p0, Lcom/aadhk/restpos/d/fo;->a:Lcom/aadhk/restpos/d/fn;

    invoke-static {v0}, Lcom/aadhk/restpos/d/fn;->a(Lcom/aadhk/restpos/d/fn;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/OrderItem;

    .line 99
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/OrderItem;->isSelected()Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/OrderItem;->setSelected(Z)V

    .line 100
    iget-object v0, p0, Lcom/aadhk/restpos/d/fo;->a:Lcom/aadhk/restpos/d/fn;

    invoke-static {v0}, Lcom/aadhk/restpos/d/fn;->b(Lcom/aadhk/restpos/d/fn;)Lcom/aadhk/restpos/d/fp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/d/fp;->notifyDataSetChanged()V

    .line 101
    return v2

    .line 99
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
