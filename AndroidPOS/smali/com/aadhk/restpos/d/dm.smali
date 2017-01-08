.class public final Lcom/aadhk/restpos/d/dm;
.super Landroid/support/v4/app/Fragment;
.source "ProGuard"


# instance fields
.field private a:Lcom/aadhk/restpos/MgrModifierActivity;

.field private b:Landroid/view/View;

.field private c:Landroid/widget/TextView;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/ModifierGroup;",
            ">;"
        }
    .end annotation
.end field

.field private e:Landroid/widget/ListView;

.field private f:Landroid/view/LayoutInflater;

.field private g:Lcom/aadhk/restpos/d/do;

.field private h:Lcom/aadhk/restpos/g/l;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 127
    return-void
.end method

.method static synthetic a(Lcom/aadhk/restpos/d/dm;)Lcom/aadhk/restpos/g/l;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/aadhk/restpos/d/dm;->h:Lcom/aadhk/restpos/g/l;

    return-object v0
.end method

.method static synthetic a(Lcom/aadhk/restpos/d/dm;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 32
    iput-object p1, p0, Lcom/aadhk/restpos/d/dm;->d:Ljava/util/List;

    return-object p1
.end method

.method private a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 85
    new-instance v0, Lcom/aadhk/restpos/d/do;

    invoke-direct {v0, p0, v2}, Lcom/aadhk/restpos/d/do;-><init>(Lcom/aadhk/restpos/d/dm;B)V

    iput-object v0, p0, Lcom/aadhk/restpos/d/dm;->g:Lcom/aadhk/restpos/d/do;

    .line 86
    iget-object v0, p0, Lcom/aadhk/restpos/d/dm;->e:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/aadhk/restpos/d/dm;->g:Lcom/aadhk/restpos/d/do;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 87
    iget-object v0, p0, Lcom/aadhk/restpos/d/dm;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/aadhk/restpos/d/dm;->c:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 92
    :goto_0
    return-void

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/dm;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/aadhk/restpos/d/dm;)V
    .locals 0
    .parameter

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/aadhk/restpos/d/dm;->a()V

    return-void
.end method

.method static synthetic c(Lcom/aadhk/restpos/d/dm;)Lcom/aadhk/restpos/MgrModifierActivity;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/aadhk/restpos/d/dm;->a:Lcom/aadhk/restpos/MgrModifierActivity;

    return-object v0
.end method

.method static synthetic d(Lcom/aadhk/restpos/d/dm;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/aadhk/restpos/d/dm;->d:Ljava/util/List;

    return-object v0
.end method

.method static synthetic e(Lcom/aadhk/restpos/d/dm;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/aadhk/restpos/d/dm;->f:Landroid/view/LayoutInflater;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/ModifierGroup;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 80
    iput-object p1, p0, Lcom/aadhk/restpos/d/dm;->d:Ljava/util/List;

    .line 81
    invoke-direct {p0}, Lcom/aadhk/restpos/d/dm;->a()V

    .line 82
    return-void
.end method

.method public final onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 58
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 59
    iget-object v0, p0, Lcom/aadhk/restpos/d/dm;->a:Lcom/aadhk/restpos/MgrModifierActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/MgrModifierActivity;->a()Lcom/aadhk/restpos/g/l;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/dm;->h:Lcom/aadhk/restpos/g/l;

    .line 60
    new-instance v0, Lcom/aadhk/product/library/a/d;

    new-instance v1, Lcom/aadhk/restpos/d/dq;

    invoke-direct {v1, p0, v3}, Lcom/aadhk/restpos/d/dq;-><init>(Lcom/aadhk/restpos/d/dm;B)V

    iget-object v2, p0, Lcom/aadhk/restpos/d/dm;->a:Lcom/aadhk/restpos/MgrModifierActivity;

    invoke-direct {v0, v1, v2, v3}, Lcom/aadhk/product/library/a/d;-><init>(Lcom/aadhk/product/library/a/c;Landroid/content/Context;B)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/product/library/a/d;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 61
    iget-object v0, p0, Lcom/aadhk/restpos/d/dm;->e:Landroid/widget/ListView;

    new-instance v1, Lcom/aadhk/restpos/d/dn;

    invoke-direct {v1, p0, v3}, Lcom/aadhk/restpos/d/dn;-><init>(Lcom/aadhk/restpos/d/dm;B)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 62
    return-void
.end method

.method public final onAttach(Landroid/app/Activity;)V
    .locals 1
    .parameter

    .prologue
    .line 52
    move-object v0, p1

    check-cast v0, Lcom/aadhk/restpos/MgrModifierActivity;

    iput-object v0, p0, Lcom/aadhk/restpos/d/dm;->a:Lcom/aadhk/restpos/MgrModifierActivity;

    .line 53
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 54
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 46
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 47
    iget-object v0, p0, Lcom/aadhk/restpos/d/dm;->a:Lcom/aadhk/restpos/MgrModifierActivity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/dm;->f:Landroid/view/LayoutInflater;

    .line 48
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 66
    const v0, 0x7f0300b3

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/dm;->b:Landroid/view/View;

    .line 67
    iget-object v0, p0, Lcom/aadhk/restpos/d/dm;->b:Landroid/view/View;

    const v1, 0x7f0900a4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/dm;->e:Landroid/widget/ListView;

    .line 68
    iget-object v0, p0, Lcom/aadhk/restpos/d/dm;->b:Landroid/view/View;

    const v1, 0x7f09016e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/dm;->c:Landroid/widget/TextView;

    .line 69
    iget-object v0, p0, Lcom/aadhk/restpos/d/dm;->b:Landroid/view/View;

    return-object v0
.end method
