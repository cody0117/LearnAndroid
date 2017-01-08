.class public Lcom/aadhk/restpos/RolePermissionActivity;
.super Lcom/aadhk/restpos/POSActivity;
.source "ProGuard"


# instance fields
.field private a:Z

.field private o:Landroid/support/v4/app/FragmentManager;

.field private p:Lcom/aadhk/restpos/g/y;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/aadhk/restpos/POSActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/aadhk/restpos/g/y;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/aadhk/restpos/RolePermissionActivity;->p:Lcom/aadhk/restpos/g/y;

    return-object v0
.end method

.method public final a(I)V
    .locals 4
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/aadhk/restpos/RolePermissionActivity;->o:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 51
    new-instance v1, Lcom/aadhk/restpos/d/ii;

    invoke-direct {v1}, Lcom/aadhk/restpos/d/ii;-><init>()V

    .line 52
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 53
    const-string v3, "bundlePermission"

    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 54
    invoke-virtual {v1, v2}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 56
    iget-boolean v2, p0, Lcom/aadhk/restpos/RolePermissionActivity;->a:Z

    if-eqz v2, :cond_0

    .line 57
    const v2, 0x7f090060

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 61
    :goto_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 62
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 63
    return-void

    .line 59
    :cond_0
    const v2, 0x7f09005f

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_0
.end method

.method public final b()V
    .locals 3

    .prologue
    .line 40
    iget-object v0, p0, Lcom/aadhk/restpos/RolePermissionActivity;->o:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 41
    new-instance v1, Lcom/aadhk/restpos/d/ip;

    invoke-direct {v1}, Lcom/aadhk/restpos/d/ip;-><init>()V

    .line 42
    const v1, 0x7f09005f

    new-instance v2, Lcom/aadhk/restpos/d/ip;

    invoke-direct {v2}, Lcom/aadhk/restpos/d/ip;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 43
    iget-boolean v1, p0, Lcom/aadhk/restpos/RolePermissionActivity;->a:Z

    if-eqz v1, :cond_0

    .line 44
    const v1, 0x7f090060

    new-instance v2, Lcom/aadhk/restpos/d/ii;

    invoke-direct {v2}, Lcom/aadhk/restpos/d/ii;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 46
    :cond_0
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 47
    return-void
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/aadhk/restpos/RolePermissionActivity;->a:Z

    return v0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/aadhk/restpos/RolePermissionActivity;->a:Z

    if-eqz v0, :cond_0

    .line 72
    invoke-virtual {p0}, Lcom/aadhk/restpos/RolePermissionActivity;->finish()V

    .line 74
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 24
    invoke-super {p0, p1}, Lcom/aadhk/restpos/POSActivity;->onCreate(Landroid/os/Bundle;)V

    .line 25
    const v0, 0x7f080332

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/RolePermissionActivity;->setTitle(I)V

    .line 26
    const v0, 0x7f030020

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/RolePermissionActivity;->setContentView(I)V

    .line 27
    new-instance v0, Lcom/aadhk/restpos/g/y;

    invoke-direct {v0, p0}, Lcom/aadhk/restpos/g/y;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/aadhk/restpos/RolePermissionActivity;->p:Lcom/aadhk/restpos/g/y;

    .line 28
    const v0, 0x7f090060

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/RolePermissionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 29
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/aadhk/restpos/RolePermissionActivity;->a:Z

    .line 30
    invoke-virtual {p0}, Lcom/aadhk/restpos/RolePermissionActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/RolePermissionActivity;->o:Landroid/support/v4/app/FragmentManager;

    .line 31
    invoke-virtual {p0}, Lcom/aadhk/restpos/RolePermissionActivity;->b()V

    .line 32
    return-void

    .line 29
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/aadhk/restpos/RolePermissionActivity;->p:Lcom/aadhk/restpos/g/y;

    invoke-static {}, Lcom/aadhk/restpos/b/f;->a()Lcom/aadhk/restpos/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/b/f;->c()V

    .line 79
    invoke-super {p0}, Lcom/aadhk/restpos/POSActivity;->onDestroy()V

    .line 80
    return-void
.end method
