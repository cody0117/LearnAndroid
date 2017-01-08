.class public final Lcom/aadhk/restpos/d/kq;
.super Landroid/support/v4/app/Fragment;
.source "ProGuard"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private a:Lcom/aadhk/restpos/UserActivity;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/User;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/widget/ListView;

.field private d:Landroid/widget/TextView;

.field private e:Lcom/aadhk/restpos/d/kr;

.field private f:Landroid/view/LayoutInflater;

.field private g:Lcom/aadhk/restpos/g/ae;

.field private h:I

.field private i:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 43
    const/4 v0, -0x1

    iput v0, p0, Lcom/aadhk/restpos/d/kq;->h:I

    .line 171
    return-void
.end method

.method static synthetic a(Lcom/aadhk/restpos/d/kq;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/aadhk/restpos/d/kq;->b:Ljava/util/List;

    return-object v0
.end method

.method static synthetic a(Lcom/aadhk/restpos/d/kq;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 33
    iput-object p1, p0, Lcom/aadhk/restpos/d/kq;->b:Ljava/util/List;

    return-object p1
.end method

.method private a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 103
    new-instance v0, Lcom/aadhk/restpos/d/kr;

    invoke-direct {v0, p0, v2}, Lcom/aadhk/restpos/d/kr;-><init>(Lcom/aadhk/restpos/d/kq;B)V

    iput-object v0, p0, Lcom/aadhk/restpos/d/kq;->e:Lcom/aadhk/restpos/d/kr;

    .line 104
    iget-object v0, p0, Lcom/aadhk/restpos/d/kq;->c:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/aadhk/restpos/d/kq;->e:Lcom/aadhk/restpos/d/kr;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 105
    iget-object v0, p0, Lcom/aadhk/restpos/d/kq;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/aadhk/restpos/d/kq;->d:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 110
    :goto_0
    return-void

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/kq;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/aadhk/restpos/d/kq;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/aadhk/restpos/d/kq;->f:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic c(Lcom/aadhk/restpos/d/kq;)I
    .locals 1
    .parameter

    .prologue
    .line 33
    iget v0, p0, Lcom/aadhk/restpos/d/kq;->h:I

    return v0
.end method

.method static synthetic d(Lcom/aadhk/restpos/d/kq;)[Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/aadhk/restpos/d/kq;->i:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/aadhk/restpos/d/kq;)Lcom/aadhk/restpos/g/ae;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/aadhk/restpos/d/kq;->g:Lcom/aadhk/restpos/g/ae;

    return-object v0
.end method

.method static synthetic f(Lcom/aadhk/restpos/d/kq;)Lcom/aadhk/restpos/UserActivity;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/aadhk/restpos/d/kq;->a:Lcom/aadhk/restpos/UserActivity;

    return-object v0
.end method

.method static synthetic g(Lcom/aadhk/restpos/d/kq;)V
    .locals 0
    .parameter

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/aadhk/restpos/d/kq;->a()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/User;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 97
    iput-object p1, p0, Lcom/aadhk/restpos/d/kq;->b:Ljava/util/List;

    .line 98
    invoke-direct {p0}, Lcom/aadhk/restpos/d/kq;->a()V

    .line 99
    iget-object v0, p0, Lcom/aadhk/restpos/d/kq;->a:Lcom/aadhk/restpos/UserActivity;

    iget-object v1, p0, Lcom/aadhk/restpos/d/kq;->b:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/UserActivity;->b(Ljava/util/List;)V

    .line 100
    return-void
.end method

.method public final onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 57
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 58
    iget-object v0, p0, Lcom/aadhk/restpos/d/kq;->a:Lcom/aadhk/restpos/UserActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/UserActivity;->a()Lcom/aadhk/restpos/g/ae;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/kq;->g:Lcom/aadhk/restpos/g/ae;

    .line 59
    new-instance v0, Lcom/aadhk/product/library/a/d;

    new-instance v1, Lcom/aadhk/restpos/d/kt;

    invoke-direct {v1, p0, v3}, Lcom/aadhk/restpos/d/kt;-><init>(Lcom/aadhk/restpos/d/kq;B)V

    iget-object v2, p0, Lcom/aadhk/restpos/d/kq;->a:Lcom/aadhk/restpos/UserActivity;

    invoke-direct {v0, v1, v2, v3}, Lcom/aadhk/product/library/a/d;-><init>(Lcom/aadhk/product/library/a/c;Landroid/content/Context;B)V

    .line 60
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/product/library/a/d;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 61
    return-void
.end method

.method public final onAttach(Landroid/app/Activity;)V
    .locals 1
    .parameter

    .prologue
    .line 82
    move-object v0, p1

    check-cast v0, Lcom/aadhk/restpos/UserActivity;

    iput-object v0, p0, Lcom/aadhk/restpos/d/kq;->a:Lcom/aadhk/restpos/UserActivity;

    .line 83
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 84
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 48
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 49
    invoke-virtual {p0}, Lcom/aadhk/restpos/d/kq;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/kq;->i:[Ljava/lang/String;

    .line 50
    iget-object v0, p0, Lcom/aadhk/restpos/d/kq;->a:Lcom/aadhk/restpos/UserActivity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/kq;->f:Landroid/view/LayoutInflater;

    .line 51
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/d/kq;->setHasOptionsMenu(Z)V

    .line 52
    return-void
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 65
    const v0, 0x7f0f0001

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 66
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 67
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 88
    const v0, 0x7f0300b3

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 89
    const v0, 0x7f0900a4

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/kq;->c:Landroid/widget/ListView;

    .line 90
    iget-object v0, p0, Lcom/aadhk/restpos/d/kq;->c:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 91
    const v0, 0x7f09016e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/kq;->d:Landroid/widget/TextView;

    .line 92
    return-object v1
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
    .line 114
    iget-object v0, p0, Lcom/aadhk/restpos/d/kq;->b:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/User;

    .line 115
    iget-object v1, p0, Lcom/aadhk/restpos/d/kq;->a:Lcom/aadhk/restpos/UserActivity;

    invoke-virtual {v1}, Lcom/aadhk/restpos/UserActivity;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 116
    iput p3, p0, Lcom/aadhk/restpos/d/kq;->h:I

    .line 117
    iget-object v1, p0, Lcom/aadhk/restpos/d/kq;->e:Lcom/aadhk/restpos/d/kr;

    invoke-virtual {v1}, Lcom/aadhk/restpos/d/kr;->notifyDataSetChanged()V

    .line 119
    :cond_0
    iget-object v1, p0, Lcom/aadhk/restpos/d/kq;->a:Lcom/aadhk/restpos/UserActivity;

    invoke-virtual {v1, v0}, Lcom/aadhk/restpos/UserActivity;->a(Lcom/aadhk/restpos/bean/User;)V

    .line 120
    return-void
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter

    .prologue
    .line 71
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f090301

    if-ne v0, v1, :cond_0

    .line 72
    iget-object v0, p0, Lcom/aadhk/restpos/d/kq;->a:Lcom/aadhk/restpos/UserActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/UserActivity;->a(Lcom/aadhk/restpos/bean/User;)V

    .line 73
    const/4 v0, -0x1

    iput v0, p0, Lcom/aadhk/restpos/d/kq;->h:I

    .line 74
    iget-object v0, p0, Lcom/aadhk/restpos/d/kq;->e:Lcom/aadhk/restpos/d/kr;

    invoke-virtual {v0}, Lcom/aadhk/restpos/d/kr;->notifyDataSetChanged()V

    .line 75
    const/4 v0, 0x1

    .line 77
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method
