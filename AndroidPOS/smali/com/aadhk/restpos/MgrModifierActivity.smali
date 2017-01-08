.class public Lcom/aadhk/restpos/MgrModifierActivity;
.super Lcom/aadhk/restpos/POSActivity;
.source "ProGuard"


# instance fields
.field private a:Z

.field private o:Landroid/support/v4/app/FragmentManager;

.field private p:Lcom/aadhk/restpos/d/dm;

.field private q:Lcom/aadhk/restpos/d/db;

.field private r:Lcom/aadhk/restpos/g/l;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/aadhk/restpos/POSActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/aadhk/restpos/g/l;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/aadhk/restpos/MgrModifierActivity;->r:Lcom/aadhk/restpos/g/l;

    return-object v0
.end method

.method public final a(Lcom/aadhk/restpos/bean/ModifierGroup;)V
    .locals 3
    .parameter

    .prologue
    .line 68
    iget-object v0, p0, Lcom/aadhk/restpos/MgrModifierActivity;->o:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 69
    new-instance v1, Lcom/aadhk/restpos/d/db;

    invoke-direct {v1}, Lcom/aadhk/restpos/d/db;-><init>()V

    iput-object v1, p0, Lcom/aadhk/restpos/MgrModifierActivity;->q:Lcom/aadhk/restpos/d/db;

    .line 70
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 71
    const-string v2, "bundleModifierGroup"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 72
    iget-object v2, p0, Lcom/aadhk/restpos/MgrModifierActivity;->q:Lcom/aadhk/restpos/d/db;

    invoke-virtual {v2, v1}, Lcom/aadhk/restpos/d/db;->setArguments(Landroid/os/Bundle;)V

    .line 73
    iget-boolean v1, p0, Lcom/aadhk/restpos/MgrModifierActivity;->a:Z

    if-eqz v1, :cond_0

    .line 74
    const v1, 0x7f090060

    iget-object v2, p0, Lcom/aadhk/restpos/MgrModifierActivity;->q:Lcom/aadhk/restpos/d/db;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 78
    :goto_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 79
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 80
    return-void

    .line 76
    :cond_0
    const v1, 0x7f09005f

    iget-object v2, p0, Lcom/aadhk/restpos/MgrModifierActivity;->q:Lcom/aadhk/restpos/d/db;

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
            "Lcom/aadhk/restpos/bean/ModifierGroup;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 55
    iget-object v0, p0, Lcom/aadhk/restpos/MgrModifierActivity;->p:Lcom/aadhk/restpos/d/dm;

    invoke-virtual {v0, p1}, Lcom/aadhk/restpos/d/dm;->a(Ljava/util/List;)V

    .line 56
    return-void
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/aadhk/restpos/MgrModifierActivity;->a:Z

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    const v3, 0x7f090060

    .line 33
    invoke-super {p0, p1}, Lcom/aadhk/restpos/POSActivity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    const v0, 0x7f0802c2

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/MgrModifierActivity;->setTitle(I)V

    .line 35
    const v0, 0x7f030020

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/MgrModifierActivity;->setContentView(I)V

    .line 36
    invoke-virtual {p0, v3}, Lcom/aadhk/restpos/MgrModifierActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 37
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/aadhk/restpos/MgrModifierActivity;->a:Z

    .line 38
    new-instance v0, Lcom/aadhk/restpos/g/l;

    invoke-direct {v0, p0}, Lcom/aadhk/restpos/g/l;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/aadhk/restpos/MgrModifierActivity;->r:Lcom/aadhk/restpos/g/l;

    .line 39
    invoke-virtual {p0}, Lcom/aadhk/restpos/MgrModifierActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/MgrModifierActivity;->o:Landroid/support/v4/app/FragmentManager;

    .line 40
    iget-object v0, p0, Lcom/aadhk/restpos/MgrModifierActivity;->o:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    new-instance v1, Lcom/aadhk/restpos/d/dm;

    invoke-direct {v1}, Lcom/aadhk/restpos/d/dm;-><init>()V

    iput-object v1, p0, Lcom/aadhk/restpos/MgrModifierActivity;->p:Lcom/aadhk/restpos/d/dm;

    const v1, 0x7f09005f

    iget-object v2, p0, Lcom/aadhk/restpos/MgrModifierActivity;->p:Lcom/aadhk/restpos/d/dm;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    iget-boolean v1, p0, Lcom/aadhk/restpos/MgrModifierActivity;->a:Z

    if-eqz v1, :cond_0

    new-instance v1, Lcom/aadhk/restpos/d/db;

    invoke-direct {v1}, Lcom/aadhk/restpos/d/db;-><init>()V

    iput-object v1, p0, Lcom/aadhk/restpos/MgrModifierActivity;->q:Lcom/aadhk/restpos/d/db;

    iget-object v1, p0, Lcom/aadhk/restpos/MgrModifierActivity;->q:Lcom/aadhk/restpos/d/db;

    invoke-virtual {v0, v3, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    :cond_0
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 41
    return-void

    .line 37
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/aadhk/restpos/MgrModifierActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0f0001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 85
    invoke-super {p0, p1}, Lcom/aadhk/restpos/POSActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/aadhk/restpos/MgrModifierActivity;->r:Lcom/aadhk/restpos/g/l;

    invoke-static {}, Lcom/aadhk/restpos/b/f;->a()Lcom/aadhk/restpos/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/b/f;->c()V

    .line 104
    invoke-super {p0}, Lcom/aadhk/restpos/POSActivity;->onDestroy()V

    .line 105
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter

    .prologue
    .line 90
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f090301

    if-ne v0, v1, :cond_0

    .line 91
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/MgrModifierActivity;->a(Lcom/aadhk/restpos/bean/ModifierGroup;)V

    .line 92
    const/4 v0, 0x1

    .line 94
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/aadhk/restpos/POSActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method
