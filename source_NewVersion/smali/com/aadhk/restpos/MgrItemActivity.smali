.class public Lcom/aadhk/restpos/MgrItemActivity;
.super Lcom/aadhk/restpos/POSActivity;
.source "ProGuard"


# instance fields
.field private a:Z

.field private l:Landroid/support/v4/app/FragmentManager;

.field private m:Landroid/database/sqlite/SQLiteDatabase;

.field private n:J

.field private o:Lcom/aadhk/restpos/d/z;

.field private p:Lcom/aadhk/restpos/d/ag;

.field private q:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/aadhk/restpos/POSActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/aadhk/restpos/MgrItemActivity;->m:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method public final a(I)V
    .locals 0
    .parameter

    .prologue
    .line 136
    iput p1, p0, Lcom/aadhk/restpos/MgrItemActivity;->q:I

    .line 137
    return-void
.end method

.method public final a(J)V
    .locals 0
    .parameter

    .prologue
    .line 144
    iput-wide p1, p0, Lcom/aadhk/restpos/MgrItemActivity;->n:J

    .line 145
    return-void
.end method

.method public final a(Lcom/aadhk/restpos/bean/Item;)V
    .locals 3
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lcom/aadhk/restpos/MgrItemActivity;->l:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 74
    new-instance v1, Lcom/aadhk/restpos/d/z;

    invoke-direct {v1}, Lcom/aadhk/restpos/d/z;-><init>()V

    iput-object v1, p0, Lcom/aadhk/restpos/MgrItemActivity;->o:Lcom/aadhk/restpos/d/z;

    .line 75
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 76
    const-string v2, "bundleItem"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 77
    iget-object v2, p0, Lcom/aadhk/restpos/MgrItemActivity;->o:Lcom/aadhk/restpos/d/z;

    invoke-virtual {v2, v1}, Lcom/aadhk/restpos/d/z;->setArguments(Landroid/os/Bundle;)V

    .line 78
    iget-boolean v1, p0, Lcom/aadhk/restpos/MgrItemActivity;->a:Z

    if-eqz v1, :cond_0

    .line 79
    const v1, 0x7f0b005a

    iget-object v2, p0, Lcom/aadhk/restpos/MgrItemActivity;->o:Lcom/aadhk/restpos/d/z;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 83
    :goto_0
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 84
    return-void

    .line 81
    :cond_0
    const v1, 0x7f0b0058

    iget-object v2, p0, Lcom/aadhk/restpos/MgrItemActivity;->o:Lcom/aadhk/restpos/d/z;

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
    .line 50
    iget-object v0, p0, Lcom/aadhk/restpos/MgrItemActivity;->o:Lcom/aadhk/restpos/d/z;

    invoke-virtual {v0, p1}, Lcom/aadhk/restpos/d/z;->a(Ljava/util/List;)V

    .line 51
    return-void
.end method

.method public final b(Lcom/aadhk/restpos/bean/Item;)V
    .locals 4
    .parameter

    .prologue
    .line 94
    iget-object v0, p0, Lcom/aadhk/restpos/MgrItemActivity;->l:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 95
    new-instance v1, Lcom/aadhk/restpos/d/aq;

    invoke-direct {v1}, Lcom/aadhk/restpos/d/aq;-><init>()V

    .line 96
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 97
    const-string v3, "bundleItem"

    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 98
    invoke-virtual {v1, v2}, Lcom/aadhk/restpos/d/aq;->setArguments(Landroid/os/Bundle;)V

    .line 99
    const v2, 0x7f0b0058

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 100
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 101
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 102
    return-void
.end method

.method public final b(Ljava/util/List;)V
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
    .line 54
    iget-object v0, p0, Lcom/aadhk/restpos/MgrItemActivity;->p:Lcom/aadhk/restpos/d/ag;

    invoke-virtual {v0, p1}, Lcom/aadhk/restpos/d/ag;->a(Ljava/util/List;)V

    .line 55
    return-void
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/aadhk/restpos/MgrItemActivity;->a:Z

    return v0
.end method

.method public final c()V
    .locals 3

    .prologue
    .line 62
    iget-object v0, p0, Lcom/aadhk/restpos/MgrItemActivity;->l:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 63
    new-instance v1, Lcom/aadhk/restpos/d/ag;

    invoke-direct {v1}, Lcom/aadhk/restpos/d/ag;-><init>()V

    iput-object v1, p0, Lcom/aadhk/restpos/MgrItemActivity;->p:Lcom/aadhk/restpos/d/ag;

    .line 64
    const v1, 0x7f0b0058

    iget-object v2, p0, Lcom/aadhk/restpos/MgrItemActivity;->p:Lcom/aadhk/restpos/d/ag;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 65
    iget-boolean v1, p0, Lcom/aadhk/restpos/MgrItemActivity;->a:Z

    if-eqz v1, :cond_0

    .line 66
    new-instance v1, Lcom/aadhk/restpos/d/z;

    invoke-direct {v1}, Lcom/aadhk/restpos/d/z;-><init>()V

    iput-object v1, p0, Lcom/aadhk/restpos/MgrItemActivity;->o:Lcom/aadhk/restpos/d/z;

    .line 67
    const v1, 0x7f0b005a

    iget-object v2, p0, Lcom/aadhk/restpos/MgrItemActivity;->o:Lcom/aadhk/restpos/d/z;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 69
    :cond_0
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 70
    return-void
.end method

.method public final c(Lcom/aadhk/restpos/bean/Item;)V
    .locals 3
    .parameter

    .prologue
    .line 117
    iget-object v0, p0, Lcom/aadhk/restpos/MgrItemActivity;->l:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 118
    new-instance v1, Lcom/aadhk/restpos/d/z;

    invoke-direct {v1}, Lcom/aadhk/restpos/d/z;-><init>()V

    iput-object v1, p0, Lcom/aadhk/restpos/MgrItemActivity;->o:Lcom/aadhk/restpos/d/z;

    .line 119
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 120
    const-string v2, "bundleItem"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 121
    iget-object v2, p0, Lcom/aadhk/restpos/MgrItemActivity;->o:Lcom/aadhk/restpos/d/z;

    invoke-virtual {v2, v1}, Lcom/aadhk/restpos/d/z;->setArguments(Landroid/os/Bundle;)V

    .line 122
    iget-boolean v1, p0, Lcom/aadhk/restpos/MgrItemActivity;->a:Z

    if-eqz v1, :cond_0

    .line 123
    const v1, 0x7f0b005a

    iget-object v2, p0, Lcom/aadhk/restpos/MgrItemActivity;->o:Lcom/aadhk/restpos/d/z;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 127
    :goto_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 128
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 129
    return-void

    .line 125
    :cond_0
    const v1, 0x7f0b0058

    iget-object v2, p0, Lcom/aadhk/restpos/MgrItemActivity;->o:Lcom/aadhk/restpos/d/z;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_0
.end method

.method public final d()V
    .locals 3

    .prologue
    .line 87
    iget-object v0, p0, Lcom/aadhk/restpos/MgrItemActivity;->l:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 88
    new-instance v1, Lcom/aadhk/restpos/d/ag;

    invoke-direct {v1}, Lcom/aadhk/restpos/d/ag;-><init>()V

    iput-object v1, p0, Lcom/aadhk/restpos/MgrItemActivity;->p:Lcom/aadhk/restpos/d/ag;

    .line 89
    const v1, 0x7f0b0058

    iget-object v2, p0, Lcom/aadhk/restpos/MgrItemActivity;->p:Lcom/aadhk/restpos/d/ag;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 90
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 91
    return-void
.end method

.method public final e()V
    .locals 3

    .prologue
    .line 105
    iget-object v0, p0, Lcom/aadhk/restpos/MgrItemActivity;->l:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 106
    new-instance v1, Lcom/aadhk/restpos/d/aq;

    invoke-direct {v1}, Lcom/aadhk/restpos/d/aq;-><init>()V

    .line 107
    iget-boolean v2, p0, Lcom/aadhk/restpos/MgrItemActivity;->a:Z

    if-eqz v2, :cond_0

    .line 108
    const v2, 0x7f0b005a

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 112
    :goto_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 113
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 114
    return-void

    .line 110
    :cond_0
    const v2, 0x7f0b0058

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_0
.end method

.method public final f()I
    .locals 1

    .prologue
    .line 132
    iget v0, p0, Lcom/aadhk/restpos/MgrItemActivity;->q:I

    return v0
.end method

.method public final g()J
    .locals 2

    .prologue
    .line 140
    iget-wide v0, p0, Lcom/aadhk/restpos/MgrItemActivity;->n:J

    return-wide v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 35
    invoke-super {p0, p1}, Lcom/aadhk/restpos/POSActivity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    const v0, 0x7f030021

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/MgrItemActivity;->setContentView(I)V

    .line 38
    invoke-static {}, Lcom/aadhk/restpos/b/f;->a()Lcom/aadhk/restpos/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/b/f;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/MgrItemActivity;->m:Landroid/database/sqlite/SQLiteDatabase;

    .line 39
    const v0, 0x7f0b005a

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/MgrItemActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 40
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/aadhk/restpos/MgrItemActivity;->a:Z

    .line 41
    invoke-virtual {p0}, Lcom/aadhk/restpos/MgrItemActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/MgrItemActivity;->l:Landroid/support/v4/app/FragmentManager;

    .line 42
    invoke-virtual {p0}, Lcom/aadhk/restpos/MgrItemActivity;->c()V

    .line 43
    return-void

    .line 40
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 149
    invoke-static {}, Lcom/aadhk/restpos/b/f;->a()Lcom/aadhk/restpos/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/b/f;->c()V

    .line 150
    invoke-super {p0}, Lcom/aadhk/restpos/POSActivity;->onDestroy()V

    .line 151
    return-void
.end method
