.class public Lcom/aadhk/restpos/KitchenSettingActivity;
.super Lcom/aadhk/restpos/POSActivity;
.source "ProGuard"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/aadhk/restpos/POSActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 12
    invoke-super {p0, p1}, Lcom/aadhk/restpos/POSActivity;->onCreate(Landroid/os/Bundle;)V

    .line 13
    const v0, 0x7f0803a6

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/KitchenSettingActivity;->setTitle(I)V

    .line 15
    invoke-virtual {p0}, Lcom/aadhk/restpos/KitchenSettingActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x1020002

    new-instance v2, Lcom/aadhk/restpos/d/av;

    invoke-direct {v2}, Lcom/aadhk/restpos/d/av;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 18
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter

    .prologue
    .line 22
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 23
    invoke-virtual {p0}, Lcom/aadhk/restpos/KitchenSettingActivity;->finish()V

    .line 24
    const/4 v0, 0x1

    .line 26
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/aadhk/restpos/POSActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method