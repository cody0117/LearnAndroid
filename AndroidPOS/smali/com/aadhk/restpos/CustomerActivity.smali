.class public Lcom/aadhk/restpos/CustomerActivity;
.super Lcom/aadhk/restpos/POSActivity;
.source "ProGuard"


# instance fields
.field private a:Z

.field private o:Landroid/support/v4/app/FragmentManager;

.field private p:Ljava/lang/String;

.field private q:Lcom/aadhk/restpos/d/j;

.field private r:Lcom/aadhk/restpos/d/f;

.field private s:Lcom/aadhk/restpos/g/c;

.field private t:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/Customer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/aadhk/restpos/POSActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/Customer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 93
    iget-object v0, p0, Lcom/aadhk/restpos/CustomerActivity;->t:Ljava/util/List;

    return-object v0
.end method

.method public final a(Lcom/aadhk/restpos/bean/Customer;)V
    .locals 3
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/aadhk/restpos/CustomerActivity;->o:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 61
    new-instance v1, Lcom/aadhk/restpos/d/f;

    invoke-direct {v1}, Lcom/aadhk/restpos/d/f;-><init>()V

    iput-object v1, p0, Lcom/aadhk/restpos/CustomerActivity;->r:Lcom/aadhk/restpos/d/f;

    .line 62
    if-eqz p1, :cond_0

    .line 63
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 64
    const-string v2, "bundleCustomer"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 65
    iget-object v2, p0, Lcom/aadhk/restpos/CustomerActivity;->r:Lcom/aadhk/restpos/d/f;

    invoke-virtual {v2, v1}, Lcom/aadhk/restpos/d/f;->setArguments(Landroid/os/Bundle;)V

    .line 68
    :cond_0
    iget-boolean v1, p0, Lcom/aadhk/restpos/CustomerActivity;->a:Z

    if-eqz v1, :cond_1

    .line 69
    const v1, 0x7f090060

    iget-object v2, p0, Lcom/aadhk/restpos/CustomerActivity;->r:Lcom/aadhk/restpos/d/f;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 73
    :goto_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 74
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 75
    return-void

    .line 71
    :cond_1
    const v1, 0x7f09005f

    iget-object v2, p0, Lcom/aadhk/restpos/CustomerActivity;->r:Lcom/aadhk/restpos/d/f;

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
            "Lcom/aadhk/restpos/bean/Customer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 97
    iput-object p1, p0, Lcom/aadhk/restpos/CustomerActivity;->t:Ljava/util/List;

    .line 98
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/aadhk/restpos/CustomerActivity;->p:Ljava/lang/String;

    return-object v0
.end method

.method public final b(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/Customer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 109
    iget-object v0, p0, Lcom/aadhk/restpos/CustomerActivity;->q:Lcom/aadhk/restpos/d/j;

    invoke-virtual {v0, p1}, Lcom/aadhk/restpos/d/j;->a(Ljava/util/List;)V

    .line 110
    return-void
.end method

.method public final c()Lcom/aadhk/restpos/g/c;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/aadhk/restpos/CustomerActivity;->s:Lcom/aadhk/restpos/g/c;

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 81
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 83
    iget-boolean v0, p0, Lcom/aadhk/restpos/CustomerActivity;->a:Z

    if-eqz v0, :cond_1

    .line 84
    iget-object v0, p0, Lcom/aadhk/restpos/CustomerActivity;->o:Landroid/support/v4/app/FragmentManager;

    const v1, 0x7f090060

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 88
    :goto_0
    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 90
    :cond_0
    return-void

    .line 86
    :cond_1
    iget-object v0, p0, Lcom/aadhk/restpos/CustomerActivity;->o:Landroid/support/v4/app/FragmentManager;

    const v1, 0x7f09005f

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    const v3, 0x7f090060

    .line 32
    invoke-super {p0, p1}, Lcom/aadhk/restpos/POSActivity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    const v0, 0x7f080324

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/CustomerActivity;->setTitle(I)V

    .line 34
    const v0, 0x7f030020

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/CustomerActivity;->setContentView(I)V

    .line 35
    new-instance v0, Lcom/aadhk/restpos/g/c;

    invoke-direct {v0, p0}, Lcom/aadhk/restpos/g/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/aadhk/restpos/CustomerActivity;->s:Lcom/aadhk/restpos/g/c;

    .line 36
    invoke-virtual {p0, v3}, Lcom/aadhk/restpos/CustomerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 37
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/aadhk/restpos/CustomerActivity;->a:Z

    .line 38
    invoke-virtual {p0}, Lcom/aadhk/restpos/CustomerActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/CustomerActivity;->o:Landroid/support/v4/app/FragmentManager;

    .line 40
    invoke-virtual {p0}, Lcom/aadhk/restpos/CustomerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 41
    if-eqz v0, :cond_0

    .line 42
    const-string v1, "actionType"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/CustomerActivity;->p:Ljava/lang/String;

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/aadhk/restpos/CustomerActivity;->o:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    new-instance v1, Lcom/aadhk/restpos/d/j;

    invoke-direct {v1}, Lcom/aadhk/restpos/d/j;-><init>()V

    iput-object v1, p0, Lcom/aadhk/restpos/CustomerActivity;->q:Lcom/aadhk/restpos/d/j;

    const v1, 0x7f09005f

    iget-object v2, p0, Lcom/aadhk/restpos/CustomerActivity;->q:Lcom/aadhk/restpos/d/j;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    iget-boolean v1, p0, Lcom/aadhk/restpos/CustomerActivity;->a:Z

    if-eqz v1, :cond_1

    new-instance v1, Lcom/aadhk/restpos/d/f;

    invoke-direct {v1}, Lcom/aadhk/restpos/d/f;-><init>()V

    iput-object v1, p0, Lcom/aadhk/restpos/CustomerActivity;->r:Lcom/aadhk/restpos/d/f;

    iget-object v1, p0, Lcom/aadhk/restpos/CustomerActivity;->r:Lcom/aadhk/restpos/d/f;

    invoke-virtual {v0, v3, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    :cond_1
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 45
    return-void

    .line 37
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/aadhk/restpos/CustomerActivity;->s:Lcom/aadhk/restpos/g/c;

    invoke-static {}, Lcom/aadhk/restpos/b/f;->a()Lcom/aadhk/restpos/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/b/f;->c()V

    .line 115
    invoke-super {p0}, Lcom/aadhk/restpos/POSActivity;->onDestroy()V

    .line 116
    return-void
.end method
