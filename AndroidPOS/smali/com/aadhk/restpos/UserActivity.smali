.class public Lcom/aadhk/restpos/UserActivity;
.super Lcom/aadhk/restpos/POSActivity;
.source "ProGuard"


# instance fields
.field private a:Z

.field private o:Landroid/support/v4/app/FragmentManager;

.field private p:Lcom/aadhk/restpos/d/kq;

.field private q:Lcom/aadhk/restpos/d/kk;

.field private r:Lcom/aadhk/restpos/g/ae;

.field private s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/User;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/aadhk/restpos/POSActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/aadhk/restpos/g/ae;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/aadhk/restpos/UserActivity;->r:Lcom/aadhk/restpos/g/ae;

    return-object v0
.end method

.method public final a(Lcom/aadhk/restpos/bean/User;)V
    .locals 3
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lcom/aadhk/restpos/UserActivity;->o:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 68
    new-instance v1, Lcom/aadhk/restpos/d/kk;

    invoke-direct {v1}, Lcom/aadhk/restpos/d/kk;-><init>()V

    iput-object v1, p0, Lcom/aadhk/restpos/UserActivity;->q:Lcom/aadhk/restpos/d/kk;

    .line 70
    if-eqz p1, :cond_0

    .line 71
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 72
    const-string v2, "bundleUser"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 73
    iget-object v2, p0, Lcom/aadhk/restpos/UserActivity;->q:Lcom/aadhk/restpos/d/kk;

    invoke-virtual {v2, v1}, Lcom/aadhk/restpos/d/kk;->setArguments(Landroid/os/Bundle;)V

    .line 76
    :cond_0
    iget-boolean v1, p0, Lcom/aadhk/restpos/UserActivity;->a:Z

    if-eqz v1, :cond_1

    .line 77
    const v1, 0x7f090060

    iget-object v2, p0, Lcom/aadhk/restpos/UserActivity;->q:Lcom/aadhk/restpos/d/kk;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 81
    :goto_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 82
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 83
    return-void

    .line 79
    :cond_1
    const v1, 0x7f09005f

    iget-object v2, p0, Lcom/aadhk/restpos/UserActivity;->q:Lcom/aadhk/restpos/d/kk;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_0
.end method

.method public final a(Ljava/util/List;)V
    .locals 1
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
    .line 44
    iget-object v0, p0, Lcom/aadhk/restpos/UserActivity;->p:Lcom/aadhk/restpos/d/kq;

    invoke-virtual {v0, p1}, Lcom/aadhk/restpos/d/kq;->a(Ljava/util/List;)V

    .line 45
    return-void
.end method

.method public final b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/User;",
            ">;"
        }
    .end annotation

    .prologue
    .line 48
    iget-object v0, p0, Lcom/aadhk/restpos/UserActivity;->s:Ljava/util/List;

    return-object v0
.end method

.method public final b(Ljava/util/List;)V
    .locals 0
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
    .line 52
    iput-object p1, p0, Lcom/aadhk/restpos/UserActivity;->s:Ljava/util/List;

    .line 53
    return-void
.end method

.method public final c()V
    .locals 3

    .prologue
    .line 56
    iget-object v0, p0, Lcom/aadhk/restpos/UserActivity;->o:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 57
    new-instance v1, Lcom/aadhk/restpos/d/kq;

    invoke-direct {v1}, Lcom/aadhk/restpos/d/kq;-><init>()V

    iput-object v1, p0, Lcom/aadhk/restpos/UserActivity;->p:Lcom/aadhk/restpos/d/kq;

    .line 58
    const v1, 0x7f09005f

    iget-object v2, p0, Lcom/aadhk/restpos/UserActivity;->p:Lcom/aadhk/restpos/d/kq;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 59
    iget-boolean v1, p0, Lcom/aadhk/restpos/UserActivity;->a:Z

    if-eqz v1, :cond_0

    .line 60
    new-instance v1, Lcom/aadhk/restpos/d/kk;

    invoke-direct {v1}, Lcom/aadhk/restpos/d/kk;-><init>()V

    iput-object v1, p0, Lcom/aadhk/restpos/UserActivity;->q:Lcom/aadhk/restpos/d/kk;

    .line 61
    const v1, 0x7f090060

    new-instance v2, Lcom/aadhk/restpos/d/kk;

    invoke-direct {v2}, Lcom/aadhk/restpos/d/kk;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 63
    :cond_0
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 64
    return-void
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/aadhk/restpos/UserActivity;->a:Z

    return v0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/aadhk/restpos/UserActivity;->a:Z

    if-eqz v0, :cond_0

    .line 88
    invoke-virtual {p0}, Lcom/aadhk/restpos/UserActivity;->finish()V

    .line 90
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 29
    invoke-super {p0, p1}, Lcom/aadhk/restpos/POSActivity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    const v0, 0x7f080330

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/UserActivity;->setTitle(I)V

    .line 31
    const v0, 0x7f030020

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/UserActivity;->setContentView(I)V

    .line 32
    new-instance v0, Lcom/aadhk/restpos/g/ae;

    invoke-direct {v0, p0}, Lcom/aadhk/restpos/g/ae;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/aadhk/restpos/UserActivity;->r:Lcom/aadhk/restpos/g/ae;

    .line 33
    const v0, 0x7f090060

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/UserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 34
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/aadhk/restpos/UserActivity;->a:Z

    .line 35
    invoke-virtual {p0}, Lcom/aadhk/restpos/UserActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/UserActivity;->o:Landroid/support/v4/app/FragmentManager;

    .line 36
    invoke-virtual {p0}, Lcom/aadhk/restpos/UserActivity;->c()V

    .line 37
    return-void

    .line 34
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/aadhk/restpos/UserActivity;->r:Lcom/aadhk/restpos/g/ae;

    invoke-static {}, Lcom/aadhk/restpos/b/f;->a()Lcom/aadhk/restpos/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/b/f;->c()V

    .line 99
    invoke-super {p0}, Lcom/aadhk/restpos/POSActivity;->onDestroy()V

    .line 100
    return-void
.end method
