.class public Lcom/aadhk/restpos/CompanyActivity;
.super Lcom/aadhk/restpos/POSActivity;
.source "ProGuard"


# instance fields
.field private a:Z

.field private l:Landroid/support/v4/app/FragmentManager;

.field private m:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/aadhk/restpos/POSActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/aadhk/restpos/CompanyActivity;->m:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method public final b()V
    .locals 3

    .prologue
    .line 55
    iget-object v0, p0, Lcom/aadhk/restpos/CompanyActivity;->l:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 56
    new-instance v1, Lcom/aadhk/restpos/d/y;

    invoke-direct {v1}, Lcom/aadhk/restpos/d/y;-><init>()V

    .line 57
    iget-boolean v2, p0, Lcom/aadhk/restpos/CompanyActivity;->a:Z

    if-eqz v2, :cond_0

    .line 58
    const v2, 0x7f0b005a

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 62
    :goto_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 63
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 64
    return-void

    .line 60
    :cond_0
    const v2, 0x7f0b0058

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const v1, 0x7f0b0058

    .line 75
    const/16 v0, 0x23ca

    if-eq p1, v0, :cond_0

    const/16 v0, 0x1a35

    if-ne p1, v0, :cond_3

    .line 77
    :cond_0
    iget-boolean v0, p0, Lcom/aadhk/restpos/CompanyActivity;->a:Z

    if-eqz v0, :cond_2

    .line 78
    iget-object v0, p0, Lcom/aadhk/restpos/CompanyActivity;->l:Landroid/support/v4/app/FragmentManager;

    const v1, 0x7f0b005a

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 82
    :goto_0
    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 87
    :cond_1
    :goto_1
    return-void

    .line 80
    :cond_2
    iget-object v0, p0, Lcom/aadhk/restpos/CompanyActivity;->l:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    goto :goto_0

    .line 83
    :cond_3
    const/16 v0, 0xa

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 84
    :cond_4
    iget-object v0, p0, Lcom/aadhk/restpos/CompanyActivity;->l:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 85
    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    const v3, 0x7f0b005a

    .line 28
    invoke-super {p0, p1}, Lcom/aadhk/restpos/POSActivity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    const v0, 0x7f090246

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/CompanyActivity;->setTitle(I)V

    .line 30
    const v0, 0x7f03001d

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/CompanyActivity;->setContentView(I)V

    .line 31
    invoke-static {}, Lcom/aadhk/restpos/b/f;->a()Lcom/aadhk/restpos/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/b/f;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/CompanyActivity;->m:Landroid/database/sqlite/SQLiteDatabase;

    .line 32
    invoke-virtual {p0, v3}, Lcom/aadhk/restpos/CompanyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 33
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/aadhk/restpos/CompanyActivity;->a:Z

    .line 34
    invoke-virtual {p0}, Lcom/aadhk/restpos/CompanyActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/CompanyActivity;->l:Landroid/support/v4/app/FragmentManager;

    .line 35
    iget-object v0, p0, Lcom/aadhk/restpos/CompanyActivity;->l:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f0b0058

    new-instance v2, Lcom/aadhk/restpos/d/a;

    invoke-direct {v2}, Lcom/aadhk/restpos/d/a;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    iget-boolean v1, p0, Lcom/aadhk/restpos/CompanyActivity;->a:Z

    if-eqz v1, :cond_0

    new-instance v1, Lcom/aadhk/restpos/d/y;

    invoke-direct {v1}, Lcom/aadhk/restpos/d/y;-><init>()V

    invoke-virtual {v0, v3, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    :cond_0
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 36
    return-void

    .line 33
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 92
    invoke-static {}, Lcom/aadhk/restpos/b/f;->a()Lcom/aadhk/restpos/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/b/f;->c()V

    .line 93
    invoke-super {p0}, Lcom/aadhk/restpos/POSActivity;->onDestroy()V

    .line 94
    return-void
.end method
