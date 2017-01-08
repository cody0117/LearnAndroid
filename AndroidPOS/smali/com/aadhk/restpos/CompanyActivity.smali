.class public Lcom/aadhk/restpos/CompanyActivity;
.super Lcom/aadhk/restpos/POSActivity;
.source "ProGuard"


# instance fields
.field private a:Z

.field private o:Landroid/support/v4/app/FragmentManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/aadhk/restpos/POSActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 47
    iget-object v0, p0, Lcom/aadhk/restpos/CompanyActivity;->o:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 48
    new-instance v1, Lcom/aadhk/restpos/d/bq;

    invoke-direct {v1}, Lcom/aadhk/restpos/d/bq;-><init>()V

    .line 49
    iget-boolean v2, p0, Lcom/aadhk/restpos/CompanyActivity;->a:Z

    if-eqz v2, :cond_0

    .line 50
    const v2, 0x7f09005e

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 54
    :goto_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 55
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 56
    return-void

    .line 52
    :cond_0
    const v2, 0x7f09005c

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const v1, 0x7f09005c

    .line 67
    const/16 v0, 0x23ca

    if-eq p1, v0, :cond_0

    const/16 v0, 0x1a35

    if-ne p1, v0, :cond_3

    .line 69
    :cond_0
    iget-boolean v0, p0, Lcom/aadhk/restpos/CompanyActivity;->a:Z

    if-eqz v0, :cond_2

    .line 70
    iget-object v0, p0, Lcom/aadhk/restpos/CompanyActivity;->o:Landroid/support/v4/app/FragmentManager;

    const v1, 0x7f09005e

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 74
    :goto_0
    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 79
    :cond_1
    :goto_1
    return-void

    .line 72
    :cond_2
    iget-object v0, p0, Lcom/aadhk/restpos/CompanyActivity;->o:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    goto :goto_0

    .line 75
    :cond_3
    const/16 v0, 0xa

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 76
    :cond_4
    iget-object v0, p0, Lcom/aadhk/restpos/CompanyActivity;->o:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 77
    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    const v3, 0x7f09005e

    .line 24
    invoke-super {p0, p1}, Lcom/aadhk/restpos/POSActivity;->onCreate(Landroid/os/Bundle;)V

    .line 25
    const v0, 0x7f0802a2

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/CompanyActivity;->setTitle(I)V

    .line 26
    const v0, 0x7f03001e

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/CompanyActivity;->setContentView(I)V

    .line 27
    invoke-virtual {p0, v3}, Lcom/aadhk/restpos/CompanyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 28
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/aadhk/restpos/CompanyActivity;->a:Z

    .line 29
    invoke-virtual {p0}, Lcom/aadhk/restpos/CompanyActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/CompanyActivity;->o:Landroid/support/v4/app/FragmentManager;

    .line 30
    iget-object v0, p0, Lcom/aadhk/restpos/CompanyActivity;->o:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f09005c

    new-instance v2, Lcom/aadhk/restpos/d/a;

    invoke-direct {v2}, Lcom/aadhk/restpos/d/a;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    iget-boolean v1, p0, Lcom/aadhk/restpos/CompanyActivity;->a:Z

    if-eqz v1, :cond_0

    new-instance v1, Lcom/aadhk/restpos/d/bq;

    invoke-direct {v1}, Lcom/aadhk/restpos/d/bq;-><init>()V

    invoke-virtual {v0, v3, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    :cond_0
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 31
    return-void

    .line 28
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
