.class public Lcom/aadhk/restpos/MgrItemActivity;
.super Lcom/aadhk/restpos/POSActivity;
.source "ProGuard"


# instance fields
.field private A:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private B:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private a:Z

.field private o:Landroid/support/v4/app/FragmentManager;

.field private p:J

.field private q:Lcom/aadhk/restpos/d/bu;

.field private r:Lcom/aadhk/restpos/d/cf;

.field private s:I

.field private t:Lcom/aadhk/restpos/g/k;

.field private u:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private v:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private w:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private x:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/Item;",
            ">;"
        }
    .end annotation
.end field

.field private y:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/ModifierGroup;",
            ">;"
        }
    .end annotation
.end field

.field private z:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/KitchenNote;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/aadhk/restpos/POSActivity;-><init>()V

    .line 197
    return-void
.end method

.method static synthetic a(Lcom/aadhk/restpos/MgrItemActivity;)Lcom/aadhk/restpos/g/k;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/aadhk/restpos/MgrItemActivity;->t:Lcom/aadhk/restpos/g/k;

    return-object v0
.end method

.method static synthetic a(Lcom/aadhk/restpos/MgrItemActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 28
    iput-object p1, p0, Lcom/aadhk/restpos/MgrItemActivity;->z:Ljava/util/List;

    return-object p1
.end method

.method static synthetic a(Lcom/aadhk/restpos/MgrItemActivity;Ljava/util/Map;)Ljava/util/Map;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 28
    iput-object p1, p0, Lcom/aadhk/restpos/MgrItemActivity;->B:Ljava/util/Map;

    return-object p1
.end method

.method static synthetic b(Lcom/aadhk/restpos/MgrItemActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 28
    iput-object p1, p0, Lcom/aadhk/restpos/MgrItemActivity;->y:Ljava/util/List;

    return-object p1
.end method

.method static synthetic b(Lcom/aadhk/restpos/MgrItemActivity;Ljava/util/Map;)Ljava/util/Map;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 28
    iput-object p1, p0, Lcom/aadhk/restpos/MgrItemActivity;->A:Ljava/util/Map;

    return-object p1
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 70
    iget-object v0, p0, Lcom/aadhk/restpos/MgrItemActivity;->o:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 71
    new-instance v1, Lcom/aadhk/restpos/d/cf;

    invoke-direct {v1}, Lcom/aadhk/restpos/d/cf;-><init>()V

    iput-object v1, p0, Lcom/aadhk/restpos/MgrItemActivity;->r:Lcom/aadhk/restpos/d/cf;

    .line 72
    const v1, 0x7f09005c

    iget-object v2, p0, Lcom/aadhk/restpos/MgrItemActivity;->r:Lcom/aadhk/restpos/d/cf;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 73
    iget-boolean v1, p0, Lcom/aadhk/restpos/MgrItemActivity;->a:Z

    if-eqz v1, :cond_0

    .line 74
    new-instance v1, Lcom/aadhk/restpos/d/bu;

    invoke-direct {v1}, Lcom/aadhk/restpos/d/bu;-><init>()V

    iput-object v1, p0, Lcom/aadhk/restpos/MgrItemActivity;->q:Lcom/aadhk/restpos/d/bu;

    .line 75
    const v1, 0x7f09005e

    iget-object v2, p0, Lcom/aadhk/restpos/MgrItemActivity;->q:Lcom/aadhk/restpos/d/bu;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 77
    :cond_0
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 78
    return-void
.end method

.method public final a(I)V
    .locals 0
    .parameter

    .prologue
    .line 250
    iput p1, p0, Lcom/aadhk/restpos/MgrItemActivity;->s:I

    .line 251
    return-void
.end method

.method public final a(J)V
    .locals 0
    .parameter

    .prologue
    .line 258
    iput-wide p1, p0, Lcom/aadhk/restpos/MgrItemActivity;->p:J

    .line 259
    return-void
.end method

.method public final a(Lcom/aadhk/restpos/bean/Item;)V
    .locals 3
    .parameter

    .prologue
    .line 82
    iget-object v0, p0, Lcom/aadhk/restpos/MgrItemActivity;->o:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 83
    new-instance v1, Lcom/aadhk/restpos/d/bu;

    invoke-direct {v1}, Lcom/aadhk/restpos/d/bu;-><init>()V

    iput-object v1, p0, Lcom/aadhk/restpos/MgrItemActivity;->q:Lcom/aadhk/restpos/d/bu;

    .line 84
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 85
    const-string v2, "bundleItem"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 86
    iget-object v2, p0, Lcom/aadhk/restpos/MgrItemActivity;->q:Lcom/aadhk/restpos/d/bu;

    invoke-virtual {v2, v1}, Lcom/aadhk/restpos/d/bu;->setArguments(Landroid/os/Bundle;)V

    .line 87
    iget-boolean v1, p0, Lcom/aadhk/restpos/MgrItemActivity;->a:Z

    if-eqz v1, :cond_0

    .line 88
    const v1, 0x7f09005e

    iget-object v2, p0, Lcom/aadhk/restpos/MgrItemActivity;->q:Lcom/aadhk/restpos/d/bu;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 92
    :goto_0
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 93
    return-void

    .line 90
    :cond_0
    const v1, 0x7f09005c

    iget-object v2, p0, Lcom/aadhk/restpos/MgrItemActivity;->q:Lcom/aadhk/restpos/d/bu;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_0
.end method

.method public final a(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/Item;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 226
    iput-object p1, p0, Lcom/aadhk/restpos/MgrItemActivity;->x:Ljava/util/List;

    .line 227
    return-void
.end method

.method public final b()V
    .locals 3

    .prologue
    .line 97
    iget-object v0, p0, Lcom/aadhk/restpos/MgrItemActivity;->o:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 98
    new-instance v1, Lcom/aadhk/restpos/d/cf;

    invoke-direct {v1}, Lcom/aadhk/restpos/d/cf;-><init>()V

    iput-object v1, p0, Lcom/aadhk/restpos/MgrItemActivity;->r:Lcom/aadhk/restpos/d/cf;

    .line 99
    const v1, 0x7f09005c

    iget-object v2, p0, Lcom/aadhk/restpos/MgrItemActivity;->r:Lcom/aadhk/restpos/d/cf;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 100
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 101
    return-void
.end method

.method public final b(Ljava/util/List;)V
    .locals 1
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
    .line 298
    iget-object v0, p0, Lcom/aadhk/restpos/MgrItemActivity;->r:Lcom/aadhk/restpos/d/cf;

    invoke-virtual {v0, p1}, Lcom/aadhk/restpos/d/cf;->a(Ljava/util/List;)V

    .line 299
    return-void
.end method

.method public final c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/Item;",
            ">;"
        }
    .end annotation

    .prologue
    .line 222
    iget-object v0, p0, Lcom/aadhk/restpos/MgrItemActivity;->x:Ljava/util/List;

    return-object v0
.end method

.method public final c(Ljava/util/List;)V
    .locals 1
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
    .line 302
    iget-object v0, p0, Lcom/aadhk/restpos/MgrItemActivity;->r:Lcom/aadhk/restpos/d/cf;

    invoke-virtual {v0, p1}, Lcom/aadhk/restpos/d/cf;->b(Ljava/util/List;)V

    .line 303
    return-void
.end method

.method public final d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/ModifierGroup;",
            ">;"
        }
    .end annotation

    .prologue
    .line 230
    iget-object v0, p0, Lcom/aadhk/restpos/MgrItemActivity;->y:Ljava/util/List;

    return-object v0
.end method

.method public final e()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/KitchenNote;",
            ">;"
        }
    .end annotation

    .prologue
    .line 234
    iget-object v0, p0, Lcom/aadhk/restpos/MgrItemActivity;->z:Ljava/util/List;

    return-object v0
.end method

.method public final f()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 238
    iget-object v0, p0, Lcom/aadhk/restpos/MgrItemActivity;->A:Ljava/util/Map;

    return-object v0
.end method

.method public final g()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 242
    iget-object v0, p0, Lcom/aadhk/restpos/MgrItemActivity;->B:Ljava/util/Map;

    return-object v0
.end method

.method public final h()I
    .locals 1

    .prologue
    .line 246
    iget v0, p0, Lcom/aadhk/restpos/MgrItemActivity;->s:I

    return v0
.end method

.method public final i()J
    .locals 2

    .prologue
    .line 254
    iget-wide v0, p0, Lcom/aadhk/restpos/MgrItemActivity;->p:J

    return-wide v0
.end method

.method public final j()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 262
    iget-object v0, p0, Lcom/aadhk/restpos/MgrItemActivity;->u:Ljava/util/Map;

    return-object v0
.end method

.method public final k()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 270
    iget-object v0, p0, Lcom/aadhk/restpos/MgrItemActivity;->v:Ljava/util/List;

    return-object v0
.end method

.method public final l()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 278
    iget-object v0, p0, Lcom/aadhk/restpos/MgrItemActivity;->w:Ljava/util/List;

    return-object v0
.end method

.method public final m()Lcom/aadhk/restpos/g/k;
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lcom/aadhk/restpos/MgrItemActivity;->t:Lcom/aadhk/restpos/g/k;

    return-object v0
.end method

.method public final n()Z
    .locals 1

    .prologue
    .line 306
    iget-boolean v0, p0, Lcom/aadhk/restpos/MgrItemActivity;->a:Z

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 49
    invoke-super {p0, p1}, Lcom/aadhk/restpos/POSActivity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    const v0, 0x7f030022

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/MgrItemActivity;->setContentView(I)V

    .line 51
    new-instance v0, Lcom/aadhk/restpos/g/k;

    invoke-direct {v0, p0}, Lcom/aadhk/restpos/g/k;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/aadhk/restpos/MgrItemActivity;->t:Lcom/aadhk/restpos/g/k;

    .line 52
    const v0, 0x7f09005e

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/MgrItemActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 53
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/aadhk/restpos/MgrItemActivity;->a:Z

    .line 54
    invoke-virtual {p0}, Lcom/aadhk/restpos/MgrItemActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/MgrItemActivity;->o:Landroid/support/v4/app/FragmentManager;

    .line 56
    iget-object v0, p0, Lcom/aadhk/restpos/MgrItemActivity;->t:Lcom/aadhk/restpos/g/k;

    invoke-virtual {v0}, Lcom/aadhk/restpos/g/k;->a()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/MgrItemActivity;->u:Ljava/util/Map;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/aadhk/restpos/MgrItemActivity;->u:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/aadhk/restpos/MgrItemActivity;->v:Ljava/util/List;

    .line 58
    iget-object v0, p0, Lcom/aadhk/restpos/MgrItemActivity;->v:Ljava/util/List;

    const v2, 0x7f080281

    invoke-virtual {p0, v2}, Lcom/aadhk/restpos/MgrItemActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/aadhk/restpos/MgrItemActivity;->u:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/aadhk/restpos/MgrItemActivity;->w:Ljava/util/List;

    .line 60
    invoke-virtual {p0}, Lcom/aadhk/restpos/MgrItemActivity;->a()V

    .line 61
    new-instance v0, Lcom/aadhk/product/library/a/e;

    new-instance v2, Lcom/aadhk/restpos/as;

    invoke-direct {v2, p0, v1}, Lcom/aadhk/restpos/as;-><init>(Lcom/aadhk/restpos/MgrItemActivity;B)V

    invoke-direct {v0, v2}, Lcom/aadhk/product/library/a/e;-><init>(Lcom/aadhk/product/library/a/c;)V

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v2, v3}, Lcom/aadhk/product/library/a/e;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 62
    new-instance v0, Lcom/aadhk/product/library/a/e;

    new-instance v2, Lcom/aadhk/restpos/ar;

    invoke-direct {v2, p0, v1}, Lcom/aadhk/restpos/ar;-><init>(Lcom/aadhk/restpos/MgrItemActivity;B)V

    invoke-direct {v0, v2}, Lcom/aadhk/product/library/a/e;-><init>(Lcom/aadhk/product/library/a/c;)V

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v2, v3}, Lcom/aadhk/product/library/a/e;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 63
    new-instance v0, Lcom/aadhk/product/library/a/e;

    new-instance v2, Lcom/aadhk/restpos/aq;

    invoke-direct {v2, p0, v1}, Lcom/aadhk/restpos/aq;-><init>(Lcom/aadhk/restpos/MgrItemActivity;B)V

    invoke-direct {v0, v2}, Lcom/aadhk/product/library/a/e;-><init>(Lcom/aadhk/product/library/a/c;)V

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v2, v3}, Lcom/aadhk/product/library/a/e;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 64
    new-instance v0, Lcom/aadhk/product/library/a/e;

    new-instance v2, Lcom/aadhk/restpos/ap;

    invoke-direct {v2, p0, v1}, Lcom/aadhk/restpos/ap;-><init>(Lcom/aadhk/restpos/MgrItemActivity;B)V

    invoke-direct {v0, v2}, Lcom/aadhk/product/library/a/e;-><init>(Lcom/aadhk/product/library/a/c;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1, v3}, Lcom/aadhk/product/library/a/e;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 65
    return-void

    :cond_0
    move v0, v1

    .line 53
    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Lcom/aadhk/restpos/MgrItemActivity;->t:Lcom/aadhk/restpos/g/k;

    invoke-static {}, Lcom/aadhk/restpos/b/f;->a()Lcom/aadhk/restpos/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/b/f;->c()V

    .line 312
    invoke-super {p0}, Lcom/aadhk/restpos/POSActivity;->onDestroy()V

    .line 313
    return-void
.end method
