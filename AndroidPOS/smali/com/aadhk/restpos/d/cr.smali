.class public final Lcom/aadhk/restpos/d/cr;
.super Landroid/support/v4/app/Fragment;
.source "ProGuard"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/widget/ListView;

.field private c:Landroid/widget/TextView;

.field private d:Ljava/util/List;
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
    .line 769
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 813
    return-void
.end method

.method static synthetic a(Lcom/aadhk/restpos/bean/Category;)Lcom/aadhk/restpos/d/cr;
    .locals 2
    .parameter

    .prologue
    .line 769
    new-instance v0, Lcom/aadhk/restpos/d/cr;

    invoke-direct {v0}, Lcom/aadhk/restpos/d/cr;-><init>()V

    invoke-virtual {p0}, Lcom/aadhk/restpos/bean/Category;->getItemList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/aadhk/restpos/d/cr;->d:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/util/Map;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 809
    new-instance v0, Lcom/aadhk/product/library/a/d;

    new-instance v1, Lcom/aadhk/restpos/d/cs;

    invoke-direct {v1, p0, p1}, Lcom/aadhk/restpos/d/cs;-><init>(Lcom/aadhk/restpos/d/cr;Ljava/util/Map;)V

    invoke-virtual {p0}, Lcom/aadhk/restpos/d/cr;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/aadhk/product/library/a/d;-><init>(Lcom/aadhk/product/library/a/c;Landroid/content/Context;B)V

    .line 810
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/product/library/a/d;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 811
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 783
    const v0, 0x7f0300be

    invoke-virtual {p1, v0, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/cr;->a:Landroid/view/View;

    .line 784
    iget-object v0, p0, Lcom/aadhk/restpos/d/cr;->a:Landroid/view/View;

    const v1, 0x7f0900a4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/cr;->b:Landroid/widget/ListView;

    .line 785
    iget-object v0, p0, Lcom/aadhk/restpos/d/cr;->a:Landroid/view/View;

    const v1, 0x7f09016e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/cr;->c:Landroid/widget/TextView;

    .line 786
    iget-object v0, p0, Lcom/aadhk/restpos/d/cr;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/aadhk/restpos/d/cr;->b:Landroid/widget/ListView;

    new-instance v1, Lcom/aadhk/restpos/a/ap;

    invoke-virtual {p0}, Lcom/aadhk/restpos/d/cr;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/aadhk/restpos/d/cr;->d:Ljava/util/List;

    invoke-direct {v1, v2, p0, v3}, Lcom/aadhk/restpos/a/ap;-><init>(Landroid/content/Context;Lcom/aadhk/restpos/d/cr;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/cr;->b:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/cr;->b:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/cr;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 787
    :goto_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/cr;->a:Landroid/view/View;

    return-object v0

    .line 786
    :cond_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/cr;->b:Landroid/widget/ListView;

    invoke-virtual {v0, v5}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/aadhk/restpos/d/cr;->c:Landroid/widget/TextView;

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
    .line 804
    invoke-virtual {p0}, Lcom/aadhk/restpos/d/cr;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/MgrItemActivity;

    iget-object v1, p0, Lcom/aadhk/restpos/d/cr;->d:Ljava/util/List;

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/aadhk/restpos/bean/Item;

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/MgrItemActivity;->a(Lcom/aadhk/restpos/bean/Item;)V

    .line 805
    return-void
.end method
