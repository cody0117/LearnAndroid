.class public Lcom/aadhk/restpos/KitchenNoteActivity;
.super Lcom/aadhk/restpos/POSActivity;
.source "ProGuard"


# instance fields
.field private a:Landroid/support/v4/app/FragmentManager;

.field private o:Lcom/aadhk/restpos/d/az;

.field private p:Z

.field private q:Lcom/aadhk/restpos/g/g;

.field private r:Lcom/aadhk/restpos/d/bk;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/aadhk/restpos/POSActivity;-><init>()V

    return-void
.end method

.method private c()V
    .locals 2

    .prologue
    .line 104
    iget-object v0, p0, Lcom/aadhk/restpos/KitchenNoteActivity;->o:Lcom/aadhk/restpos/d/az;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aadhk/restpos/KitchenNoteActivity;->o:Lcom/aadhk/restpos/d/az;

    invoke-virtual {v0}, Lcom/aadhk/restpos/d/az;->a()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/aadhk/restpos/KitchenNoteActivity;->o:Lcom/aadhk/restpos/d/az;

    invoke-virtual {v0}, Lcom/aadhk/restpos/d/az;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 105
    new-instance v0, Lcom/aadhk/restpos/c/d;

    invoke-direct {v0, p0}, Lcom/aadhk/restpos/c/d;-><init>(Landroid/content/Context;)V

    .line 106
    const v1, 0x7f080243

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/d;->setTitle(I)V

    .line 107
    new-instance v1, Lcom/aadhk/restpos/y;

    invoke-direct {v1, p0}, Lcom/aadhk/restpos/y;-><init>(Lcom/aadhk/restpos/KitchenNoteActivity;)V

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/d;->a(Lcom/aadhk/restpos/c/f;)V

    .line 113
    invoke-virtual {v0}, Lcom/aadhk/restpos/c/d;->show()V

    .line 117
    :goto_0
    return-void

    .line 115
    :cond_0
    invoke-virtual {p0}, Lcom/aadhk/restpos/KitchenNoteActivity;->finish()V

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/aadhk/restpos/bean/KitchenNote;)V
    .locals 3
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lcom/aadhk/restpos/KitchenNoteActivity;->a:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 58
    new-instance v1, Lcom/aadhk/restpos/d/az;

    invoke-direct {v1}, Lcom/aadhk/restpos/d/az;-><init>()V

    iput-object v1, p0, Lcom/aadhk/restpos/KitchenNoteActivity;->o:Lcom/aadhk/restpos/d/az;

    .line 59
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 60
    const-string v2, "kitchenNote"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 61
    iget-object v2, p0, Lcom/aadhk/restpos/KitchenNoteActivity;->o:Lcom/aadhk/restpos/d/az;

    invoke-virtual {v2, v1}, Lcom/aadhk/restpos/d/az;->setArguments(Landroid/os/Bundle;)V

    .line 62
    iget-boolean v1, p0, Lcom/aadhk/restpos/KitchenNoteActivity;->p:Z

    if-eqz v1, :cond_0

    .line 63
    const v1, 0x7f090060

    iget-object v2, p0, Lcom/aadhk/restpos/KitchenNoteActivity;->o:Lcom/aadhk/restpos/d/az;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 67
    :goto_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 68
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 69
    return-void

    .line 65
    :cond_0
    const v1, 0x7f09005f

    iget-object v2, p0, Lcom/aadhk/restpos/KitchenNoteActivity;->o:Lcom/aadhk/restpos/d/az;

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
            "Lcom/aadhk/restpos/bean/KitchenNote;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 53
    iget-object v0, p0, Lcom/aadhk/restpos/KitchenNoteActivity;->r:Lcom/aadhk/restpos/d/bk;

    invoke-virtual {v0, p1}, Lcom/aadhk/restpos/d/bk;->a(Ljava/util/List;)V

    .line 54
    return-void
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/aadhk/restpos/KitchenNoteActivity;->p:Z

    return v0
.end method

.method public final b()Lcom/aadhk/restpos/g/g;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/aadhk/restpos/KitchenNoteActivity;->q:Lcom/aadhk/restpos/g/g;

    return-object v0
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/aadhk/restpos/KitchenNoteActivity;->c()V

    .line 92
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    const v3, 0x7f090060

    .line 34
    invoke-super {p0, p1}, Lcom/aadhk/restpos/POSActivity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    const v0, 0x7f0802dd

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/KitchenNoteActivity;->setTitle(I)V

    .line 36
    const v0, 0x7f030020

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/KitchenNoteActivity;->setContentView(I)V

    .line 37
    new-instance v0, Lcom/aadhk/restpos/g/g;

    invoke-direct {v0, p0}, Lcom/aadhk/restpos/g/g;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/aadhk/restpos/KitchenNoteActivity;->q:Lcom/aadhk/restpos/g/g;

    .line 39
    invoke-virtual {p0, v3}, Lcom/aadhk/restpos/KitchenNoteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 40
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/aadhk/restpos/KitchenNoteActivity;->p:Z

    .line 41
    invoke-virtual {p0}, Lcom/aadhk/restpos/KitchenNoteActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/KitchenNoteActivity;->a:Landroid/support/v4/app/FragmentManager;

    .line 42
    new-instance v0, Lcom/aadhk/restpos/d/bk;

    invoke-direct {v0}, Lcom/aadhk/restpos/d/bk;-><init>()V

    iput-object v0, p0, Lcom/aadhk/restpos/KitchenNoteActivity;->r:Lcom/aadhk/restpos/d/bk;

    .line 43
    iget-object v0, p0, Lcom/aadhk/restpos/KitchenNoteActivity;->a:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 44
    const v1, 0x7f09005f

    iget-object v2, p0, Lcom/aadhk/restpos/KitchenNoteActivity;->r:Lcom/aadhk/restpos/d/bk;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 45
    iget-boolean v1, p0, Lcom/aadhk/restpos/KitchenNoteActivity;->p:Z

    if-eqz v1, :cond_0

    .line 46
    new-instance v1, Lcom/aadhk/restpos/d/az;

    invoke-direct {v1}, Lcom/aadhk/restpos/d/az;-><init>()V

    iput-object v1, p0, Lcom/aadhk/restpos/KitchenNoteActivity;->o:Lcom/aadhk/restpos/d/az;

    .line 47
    iget-object v1, p0, Lcom/aadhk/restpos/KitchenNoteActivity;->o:Lcom/aadhk/restpos/d/az;

    invoke-virtual {v0, v3, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 49
    :cond_0
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 50
    return-void

    .line 40
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/aadhk/restpos/KitchenNoteActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0f0001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 74
    invoke-super {p0, p1}, Lcom/aadhk/restpos/POSActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/aadhk/restpos/KitchenNoteActivity;->q:Lcom/aadhk/restpos/g/g;

    invoke-static {}, Lcom/aadhk/restpos/b/f;->a()Lcom/aadhk/restpos/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/b/f;->c()V

    .line 122
    invoke-super {p0}, Lcom/aadhk/restpos/POSActivity;->onDestroy()V

    .line 123
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 79
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x7f090301

    if-ne v1, v2, :cond_0

    .line 80
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/aadhk/restpos/KitchenNoteActivity;->a(Lcom/aadhk/restpos/bean/KitchenNote;)V

    .line 86
    :goto_0
    return v0

    .line 82
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x102002c

    if-ne v1, v2, :cond_1

    .line 83
    invoke-direct {p0}, Lcom/aadhk/restpos/KitchenNoteActivity;->c()V

    goto :goto_0

    .line 86
    :cond_1
    invoke-super {p0, p1}, Lcom/aadhk/restpos/POSActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method
