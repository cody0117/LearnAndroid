.class public Lcom/aadhk/restpos/UserPermissionActivity;
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
    .line 16
    invoke-direct {p0}, Lcom/aadhk/restpos/POSActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/aadhk/restpos/UserPermissionActivity;->m:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method public final a(I)V
    .locals 4
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/aadhk/restpos/UserPermissionActivity;->l:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 49
    new-instance v1, Lcom/aadhk/restpos/d/ga;

    invoke-direct {v1}, Lcom/aadhk/restpos/d/ga;-><init>()V

    .line 50
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 51
    const-string v3, "bundlePermission"

    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 52
    invoke-virtual {v1, v2}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 54
    iget-boolean v2, p0, Lcom/aadhk/restpos/UserPermissionActivity;->a:Z

    if-eqz v2, :cond_0

    .line 55
    const v2, 0x7f0b005a

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 59
    :goto_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 60
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 61
    return-void

    .line 57
    :cond_0
    const v2, 0x7f0b0058

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_0
.end method

.method public final b()V
    .locals 3

    .prologue
    .line 40
    iget-object v0, p0, Lcom/aadhk/restpos/UserPermissionActivity;->l:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 41
    const v1, 0x7f0b0058

    new-instance v2, Lcom/aadhk/restpos/d/gf;

    invoke-direct {v2}, Lcom/aadhk/restpos/d/gf;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 42
    iget-boolean v1, p0, Lcom/aadhk/restpos/UserPermissionActivity;->a:Z

    if-eqz v1, :cond_0

    .line 43
    const v1, 0x7f0b005a

    new-instance v2, Lcom/aadhk/restpos/d/ga;

    invoke-direct {v2}, Lcom/aadhk/restpos/d/ga;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 45
    :cond_0
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 46
    return-void
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/aadhk/restpos/UserPermissionActivity;->a:Z

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 24
    invoke-super {p0, p1}, Lcom/aadhk/restpos/POSActivity;->onCreate(Landroid/os/Bundle;)V

    .line 25
    const v0, 0x7f0902d4

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/UserPermissionActivity;->setTitle(I)V

    .line 26
    const v0, 0x7f03001f

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/UserPermissionActivity;->setContentView(I)V

    .line 27
    invoke-static {}, Lcom/aadhk/restpos/b/f;->a()Lcom/aadhk/restpos/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/b/f;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/UserPermissionActivity;->m:Landroid/database/sqlite/SQLiteDatabase;

    .line 28
    const v0, 0x7f0b005a

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/UserPermissionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 29
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/aadhk/restpos/UserPermissionActivity;->a:Z

    .line 30
    invoke-virtual {p0}, Lcom/aadhk/restpos/UserPermissionActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/UserPermissionActivity;->l:Landroid/support/v4/app/FragmentManager;

    .line 31
    invoke-virtual {p0}, Lcom/aadhk/restpos/UserPermissionActivity;->b()V

    .line 32
    return-void

    .line 29
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 69
    invoke-static {}, Lcom/aadhk/restpos/b/f;->a()Lcom/aadhk/restpos/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/b/f;->c()V

    .line 70
    invoke-super {p0}, Lcom/aadhk/restpos/POSActivity;->onDestroy()V

    .line 71
    return-void
.end method
