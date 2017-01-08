.class public final Lcom/aadhk/restpos/d/ap;
.super Landroid/support/v4/app/Fragment;
.source "ProGuard"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private a:J

.field private b:Landroid/view/View;

.field private c:Landroid/widget/ListView;

.field private d:Landroid/widget/TextView;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/Item;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 491
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic a(J)Lcom/aadhk/restpos/d/ap;
    .locals 1
    .parameter

    .prologue
    .line 491
    new-instance v0, Lcom/aadhk/restpos/d/ap;

    invoke-direct {v0}, Lcom/aadhk/restpos/d/ap;-><init>()V

    iput-wide p0, v0, Lcom/aadhk/restpos/d/ap;->a:J

    return-object v0
.end method


# virtual methods
.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 506
    const v0, 0x7f0300a0

    invoke-virtual {p1, v0, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/ap;->b:Landroid/view/View;

    .line 507
    iget-object v0, p0, Lcom/aadhk/restpos/d/ap;->b:Landroid/view/View;

    const v1, 0x7f0b0086

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/ap;->c:Landroid/widget/ListView;

    .line 508
    iget-object v0, p0, Lcom/aadhk/restpos/d/ap;->b:Landroid/view/View;

    const v1, 0x7f0b012a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/ap;->d:Landroid/widget/TextView;

    .line 509
    invoke-static {}, Lcom/aadhk/restpos/d/ag;->a()Lcom/aadhk/restpos/b/i;

    move-result-object v0

    iget-wide v1, p0, Lcom/aadhk/restpos/d/ap;->a:J

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/restpos/b/i;->c(J)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/ap;->e:Ljava/util/List;

    iget-object v0, p0, Lcom/aadhk/restpos/d/ap;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/aadhk/restpos/d/ap;->c:Landroid/widget/ListView;

    new-instance v1, Lcom/aadhk/restpos/a/ak;

    invoke-virtual {p0}, Lcom/aadhk/restpos/d/ap;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/aadhk/restpos/d/ap;->e:Ljava/util/List;

    invoke-direct {v1, v2, v3}, Lcom/aadhk/restpos/a/ak;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/ap;->c:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/ap;->c:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/ap;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 510
    :goto_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/ap;->b:Landroid/view/View;

    return-object v0

    .line 509
    :cond_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/ap;->c:Landroid/widget/ListView;

    invoke-virtual {v0, v5}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/ap;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 528
    invoke-virtual {p0}, Lcom/aadhk/restpos/d/ap;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/MgrItemActivity;

    iget-object v1, p0, Lcom/aadhk/restpos/d/ap;->e:Ljava/util/List;

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/aadhk/restpos/bean/Item;

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/MgrItemActivity;->c(Lcom/aadhk/restpos/bean/Item;)V

    .line 529
    return-void
.end method
