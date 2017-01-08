.class public final Lcom/aadhk/restpos/d/bk;
.super Landroid/support/v4/app/Fragment;
.source "ProGuard"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private a:Lcom/aadhk/restpos/KitchenNoteActivity;

.field private b:Landroid/view/View;

.field private c:Landroid/widget/ListView;

.field private d:Landroid/widget/TextView;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/KitchenNote;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/aadhk/restpos/g/g;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 90
    return-void
.end method

.method static synthetic a(Lcom/aadhk/restpos/d/bk;)Lcom/aadhk/restpos/g/g;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/aadhk/restpos/d/bk;->f:Lcom/aadhk/restpos/g/g;

    return-object v0
.end method

.method static synthetic a(Lcom/aadhk/restpos/d/bk;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 29
    iput-object p1, p0, Lcom/aadhk/restpos/d/bk;->e:Ljava/util/List;

    return-object p1
.end method

.method private a()V
    .locals 4

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 74
    iget-object v0, p0, Lcom/aadhk/restpos/d/bk;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/aadhk/restpos/d/bk;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 76
    iget-object v0, p0, Lcom/aadhk/restpos/d/bk;->c:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 77
    iget-object v0, p0, Lcom/aadhk/restpos/d/bk;->c:Landroid/widget/ListView;

    new-instance v1, Lcom/aadhk/restpos/a/ae;

    iget-object v2, p0, Lcom/aadhk/restpos/d/bk;->a:Lcom/aadhk/restpos/KitchenNoteActivity;

    iget-object v3, p0, Lcom/aadhk/restpos/d/bk;->e:Ljava/util/List;

    invoke-direct {v1, v2, v3}, Lcom/aadhk/restpos/a/ae;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 82
    :goto_0
    return-void

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/bk;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 80
    iget-object v0, p0, Lcom/aadhk/restpos/d/bk;->c:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/aadhk/restpos/d/bk;)V
    .locals 0
    .parameter

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/aadhk/restpos/d/bk;->a()V

    return-void
.end method

.method static synthetic c(Lcom/aadhk/restpos/d/bk;)Lcom/aadhk/restpos/KitchenNoteActivity;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/aadhk/restpos/d/bk;->a:Lcom/aadhk/restpos/KitchenNoteActivity;

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
            "Lcom/aadhk/restpos/bean/KitchenNote;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 68
    iput-object p1, p0, Lcom/aadhk/restpos/d/bk;->e:Ljava/util/List;

    .line 69
    invoke-direct {p0}, Lcom/aadhk/restpos/d/bk;->a()V

    .line 70
    return-void
.end method

.method public final onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 46
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 47
    iget-object v0, p0, Lcom/aadhk/restpos/d/bk;->a:Lcom/aadhk/restpos/KitchenNoteActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/KitchenNoteActivity;->b()Lcom/aadhk/restpos/g/g;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/bk;->f:Lcom/aadhk/restpos/g/g;

    .line 48
    new-instance v0, Lcom/aadhk/product/library/a/d;

    new-instance v1, Lcom/aadhk/restpos/d/bl;

    invoke-direct {v1, p0, v3}, Lcom/aadhk/restpos/d/bl;-><init>(Lcom/aadhk/restpos/d/bk;B)V

    iget-object v2, p0, Lcom/aadhk/restpos/d/bk;->a:Lcom/aadhk/restpos/KitchenNoteActivity;

    invoke-direct {v0, v1, v2, v3}, Lcom/aadhk/product/library/a/d;-><init>(Lcom/aadhk/product/library/a/c;Landroid/content/Context;B)V

    .line 49
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/product/library/a/d;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 50
    return-void
.end method

.method public final onAttach(Landroid/app/Activity;)V
    .locals 0
    .parameter

    .prologue
    .line 54
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 55
    check-cast p1, Lcom/aadhk/restpos/KitchenNoteActivity;

    iput-object p1, p0, Lcom/aadhk/restpos/d/bk;->a:Lcom/aadhk/restpos/KitchenNoteActivity;

    .line 56
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter

    .prologue
    .line 41
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 42
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 60
    const v0, 0x7f0300b3

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/bk;->b:Landroid/view/View;

    .line 61
    iget-object v0, p0, Lcom/aadhk/restpos/d/bk;->b:Landroid/view/View;

    const v1, 0x7f09016e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/bk;->d:Landroid/widget/TextView;

    .line 62
    iget-object v0, p0, Lcom/aadhk/restpos/d/bk;->b:Landroid/view/View;

    const v1, 0x7f0900a4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/bk;->c:Landroid/widget/ListView;

    .line 63
    iget-object v0, p0, Lcom/aadhk/restpos/d/bk;->c:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 64
    iget-object v0, p0, Lcom/aadhk/restpos/d/bk;->b:Landroid/view/View;

    return-object v0
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
    .line 86
    iget-object v1, p0, Lcom/aadhk/restpos/d/bk;->a:Lcom/aadhk/restpos/KitchenNoteActivity;

    iget-object v0, p0, Lcom/aadhk/restpos/d/bk;->e:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/KitchenNote;

    invoke-virtual {v1, v0}, Lcom/aadhk/restpos/KitchenNoteActivity;->a(Lcom/aadhk/restpos/bean/KitchenNote;)V

    .line 87
    return-void
.end method
