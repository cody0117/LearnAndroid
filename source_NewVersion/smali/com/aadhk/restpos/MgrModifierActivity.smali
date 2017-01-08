.class public Lcom/aadhk/restpos/MgrModifierActivity;
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
    .line 21
    invoke-direct {p0}, Lcom/aadhk/restpos/POSActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/aadhk/restpos/MgrModifierActivity;->m:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method public final a(Lcom/aadhk/restpos/bean/ModifierGroup;)V
    .locals 4
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/aadhk/restpos/MgrModifierActivity;->l:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 59
    new-instance v1, Lcom/aadhk/restpos/d/au;

    invoke-direct {v1}, Lcom/aadhk/restpos/d/au;-><init>()V

    .line 60
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 61
    const-string v3, "bundleModifierGroup"

    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 62
    invoke-virtual {v1, v2}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 63
    iget-boolean v2, p0, Lcom/aadhk/restpos/MgrModifierActivity;->a:Z

    if-eqz v2, :cond_0

    .line 64
    const v2, 0x7f0b005a

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 68
    :goto_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 69
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 70
    return-void

    .line 66
    :cond_0
    const v2, 0x7f0b0058

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_0
.end method

.method public final b()V
    .locals 3

    .prologue
    .line 49
    iget-object v0, p0, Lcom/aadhk/restpos/MgrModifierActivity;->l:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 50
    const v1, 0x7f0b0058

    new-instance v2, Lcom/aadhk/restpos/d/bd;

    invoke-direct {v2}, Lcom/aadhk/restpos/d/bd;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 51
    iget-boolean v1, p0, Lcom/aadhk/restpos/MgrModifierActivity;->a:Z

    if-eqz v1, :cond_0

    .line 52
    const v1, 0x7f0b005a

    new-instance v2, Lcom/aadhk/restpos/d/au;

    invoke-direct {v2}, Lcom/aadhk/restpos/d/au;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 54
    :cond_0
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 55
    return-void
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/aadhk/restpos/MgrModifierActivity;->a:Z

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 31
    invoke-super {p0, p1}, Lcom/aadhk/restpos/POSActivity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    const v0, 0x7f0900bb

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/MgrModifierActivity;->setTitle(I)V

    .line 33
    const v0, 0x7f03001f

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/MgrModifierActivity;->setContentView(I)V

    .line 34
    const v0, 0x7f0b005a

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/MgrModifierActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 35
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/aadhk/restpos/MgrModifierActivity;->a:Z

    .line 36
    invoke-static {}, Lcom/aadhk/restpos/b/f;->a()Lcom/aadhk/restpos/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/b/f;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/MgrModifierActivity;->m:Landroid/database/sqlite/SQLiteDatabase;

    .line 37
    invoke-virtual {p0}, Lcom/aadhk/restpos/MgrModifierActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/MgrModifierActivity;->l:Landroid/support/v4/app/FragmentManager;

    .line 38
    invoke-virtual {p0}, Lcom/aadhk/restpos/MgrModifierActivity;->b()V

    .line 39
    return-void

    .line 35
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/aadhk/restpos/MgrModifierActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0f0001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 75
    invoke-super {p0, p1}, Lcom/aadhk/restpos/POSActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 89
    invoke-static {}, Lcom/aadhk/restpos/b/f;->a()Lcom/aadhk/restpos/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/b/f;->c()V

    .line 90
    invoke-super {p0}, Lcom/aadhk/restpos/POSActivity;->onDestroy()V

    .line 91
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter

    .prologue
    .line 80
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0b027f

    if-ne v0, v1, :cond_0

    .line 81
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/MgrModifierActivity;->a(Lcom/aadhk/restpos/bean/ModifierGroup;)V

    .line 82
    const/4 v0, 0x1

    .line 84
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/aadhk/restpos/POSActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method
