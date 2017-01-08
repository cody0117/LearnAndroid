.class public Lcom/aadhk/restpos/CustomerActivity;
.super Lcom/aadhk/restpos/POSActivity;
.source "ProGuard"


# instance fields
.field private a:Z

.field private l:Landroid/support/v4/app/FragmentManager;

.field private m:Landroid/database/sqlite/SQLiteDatabase;

.field private n:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/aadhk/restpos/POSActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/aadhk/restpos/CustomerActivity;->m:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method public final a(Lcom/aadhk/restpos/bean/Customer;)V
    .locals 4
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lcom/aadhk/restpos/CustomerActivity;->l:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 65
    new-instance v1, Lcom/aadhk/restpos/d/d;

    invoke-direct {v1}, Lcom/aadhk/restpos/d/d;-><init>()V

    .line 67
    if-eqz p1, :cond_0

    .line 68
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 69
    const-string v3, "bundleCustomer"

    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 70
    invoke-virtual {v1, v2}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 73
    :cond_0
    iget-boolean v2, p0, Lcom/aadhk/restpos/CustomerActivity;->a:Z

    if-eqz v2, :cond_1

    .line 74
    const v2, 0x7f0b005a

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 78
    :goto_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 79
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 80
    return-void

    .line 76
    :cond_1
    const v2, 0x7f0b0058

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_0
.end method

.method public final b()V
    .locals 3

    .prologue
    .line 55
    iget-object v0, p0, Lcom/aadhk/restpos/CustomerActivity;->l:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 56
    const v1, 0x7f0b0058

    new-instance v2, Lcom/aadhk/restpos/d/e;

    invoke-direct {v2}, Lcom/aadhk/restpos/d/e;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 57
    iget-boolean v1, p0, Lcom/aadhk/restpos/CustomerActivity;->a:Z

    if-eqz v1, :cond_0

    .line 58
    const v1, 0x7f0b005a

    new-instance v2, Lcom/aadhk/restpos/d/d;

    invoke-direct {v2}, Lcom/aadhk/restpos/d/d;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 60
    :cond_0
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 61
    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/aadhk/restpos/CustomerActivity;->n:Ljava/lang/String;

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 86
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 88
    iget-boolean v0, p0, Lcom/aadhk/restpos/CustomerActivity;->a:Z

    if-eqz v0, :cond_1

    .line 89
    iget-object v0, p0, Lcom/aadhk/restpos/CustomerActivity;->l:Landroid/support/v4/app/FragmentManager;

    const v1, 0x7f0b005a

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 93
    :goto_0
    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 95
    :cond_0
    return-void

    .line 91
    :cond_1
    iget-object v0, p0, Lcom/aadhk/restpos/CustomerActivity;->l:Landroid/support/v4/app/FragmentManager;

    const v1, 0x7f0b0058

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 32
    invoke-super {p0, p1}, Lcom/aadhk/restpos/POSActivity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    const v0, 0x7f0902c6

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/CustomerActivity;->setTitle(I)V

    .line 34
    const v0, 0x7f03001f

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/CustomerActivity;->setContentView(I)V

    .line 35
    invoke-static {}, Lcom/aadhk/restpos/b/f;->a()Lcom/aadhk/restpos/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/b/f;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/CustomerActivity;->m:Landroid/database/sqlite/SQLiteDatabase;

    .line 36
    const v0, 0x7f0b005a

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/CustomerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 37
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/aadhk/restpos/CustomerActivity;->a:Z

    .line 38
    invoke-virtual {p0}, Lcom/aadhk/restpos/CustomerActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/CustomerActivity;->l:Landroid/support/v4/app/FragmentManager;

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

    iput-object v0, p0, Lcom/aadhk/restpos/CustomerActivity;->n:Ljava/lang/String;

    .line 46
    :cond_0
    invoke-virtual {p0}, Lcom/aadhk/restpos/CustomerActivity;->b()V

    .line 47
    return-void

    .line 37
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 99
    invoke-static {}, Lcom/aadhk/restpos/b/f;->a()Lcom/aadhk/restpos/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/b/f;->c()V

    .line 100
    invoke-super {p0}, Lcom/aadhk/restpos/POSActivity;->onDestroy()V

    .line 101
    return-void
.end method
