.class public final Lcom/aadhk/restpos/c/di;
.super Lcom/aadhk/product/library/b/e;
.source "ProGuard"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private f:Landroid/widget/GridView;

.field private g:Landroid/view/LayoutInflater;

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/Table;",
            ">;"
        }
    .end annotation
.end field

.field private i:Landroid/content/Context;

.field private j:Lcom/aadhk/restpos/g/x;

.field private k:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/aadhk/restpos/g/x;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 38
    const v0, 0x7f03006a

    invoke-direct {p0, p1, v0}, Lcom/aadhk/product/library/b/e;-><init>(Landroid/content/Context;I)V

    .line 39
    iput-object p1, p0, Lcom/aadhk/restpos/c/di;->i:Landroid/content/Context;

    .line 40
    iput-object p2, p0, Lcom/aadhk/restpos/c/di;->k:Ljava/lang/String;

    .line 41
    iput-object p3, p0, Lcom/aadhk/restpos/c/di;->j:Lcom/aadhk/restpos/g/x;

    .line 42
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/c/di;->g:Landroid/view/LayoutInflater;

    .line 43
    const v0, 0x7f090163

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/di;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/aadhk/restpos/c/di;->f:Landroid/widget/GridView;

    .line 44
    iget-object v0, p0, Lcom/aadhk/restpos/c/di;->f:Landroid/widget/GridView;

    invoke-virtual {v0, p0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 45
    new-instance v0, Lcom/aadhk/product/library/a/d;

    new-instance v1, Lcom/aadhk/restpos/c/dl;

    invoke-direct {v1, p0, v2}, Lcom/aadhk/restpos/c/dl;-><init>(Lcom/aadhk/restpos/c/di;B)V

    invoke-direct {v0, v1, p1, v2}, Lcom/aadhk/product/library/a/d;-><init>(Lcom/aadhk/product/library/a/c;Landroid/content/Context;B)V

    .line 46
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/product/library/a/d;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 47
    return-void
.end method

.method static synthetic a(Lcom/aadhk/restpos/c/di;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/aadhk/restpos/c/di;->h:Ljava/util/List;

    return-object v0
.end method

.method static synthetic a(Lcom/aadhk/restpos/c/di;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 28
    iput-object p1, p0, Lcom/aadhk/restpos/c/di;->h:Ljava/util/List;

    return-object p1
.end method

.method static synthetic b(Lcom/aadhk/restpos/c/di;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/aadhk/restpos/c/di;->g:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic c(Lcom/aadhk/restpos/c/di;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/aadhk/restpos/c/di;->k:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/aadhk/restpos/c/di;)Lcom/aadhk/restpos/g/x;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/aadhk/restpos/c/di;->j:Lcom/aadhk/restpos/g/x;

    return-object v0
.end method

.method static synthetic e(Lcom/aadhk/restpos/c/di;)Landroid/widget/GridView;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/aadhk/restpos/c/di;->f:Landroid/widget/GridView;

    return-object v0
.end method

.method static synthetic f(Lcom/aadhk/restpos/c/di;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/aadhk/restpos/c/di;->i:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
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
    .line 51
    iget-object v0, p0, Lcom/aadhk/restpos/c/di;->a:Lcom/aadhk/product/library/b/f;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/aadhk/restpos/c/di;->h:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/Table;

    .line 53
    iget-object v1, p0, Lcom/aadhk/restpos/c/di;->a:Lcom/aadhk/product/library/b/f;

    invoke-interface {v1, v0}, Lcom/aadhk/product/library/b/f;->a(Ljava/lang/Object;)V

    .line 54
    invoke-virtual {p0}, Lcom/aadhk/restpos/c/di;->dismiss()V

    .line 56
    :cond_0
    return-void
.end method
