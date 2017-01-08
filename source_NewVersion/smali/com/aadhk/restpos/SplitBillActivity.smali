.class public Lcom/aadhk/restpos/SplitBillActivity;
.super Lcom/aadhk/restpos/POSActivity;
.source "ProGuard"


# instance fields
.field private a:Z

.field private l:Landroid/support/v4/app/FragmentManager;

.field private m:Landroid/database/sqlite/SQLiteDatabase;

.field private n:Lcom/aadhk/restpos/bean/Order;

.field private o:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/aadhk/restpos/POSActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/aadhk/restpos/SplitBillActivity;->a:Z

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/aadhk/restpos/SplitBillActivity;->l:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 67
    new-instance v1, Lcom/aadhk/restpos/d/fn;

    invoke-direct {v1}, Lcom/aadhk/restpos/d/fn;-><init>()V

    .line 68
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 69
    const-string v3, "bundleSplitType"

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putShort(Ljava/lang/String;S)V

    .line 70
    const-string v3, "bundleBillId"

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 71
    invoke-virtual {v1, v2}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 72
    const v2, 0x7f0b005c

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 73
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 75
    :cond_0
    return-void
.end method

.method public final a(J)V
    .locals 5
    .parameter

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/aadhk/restpos/SplitBillActivity;->a:Z

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/aadhk/restpos/SplitBillActivity;->l:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 80
    new-instance v1, Lcom/aadhk/restpos/d/fn;

    invoke-direct {v1}, Lcom/aadhk/restpos/d/fn;-><init>()V

    .line 81
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 82
    const-string v3, "bundleSplitType"

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putShort(Ljava/lang/String;S)V

    .line 83
    const-string v3, "bundleBillId"

    invoke-virtual {v2, v3, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 84
    invoke-virtual {v1, v2}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 85
    const v2, 0x7f0b005c

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 86
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 90
    :goto_0
    return-void

    .line 88
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/aadhk/restpos/SplitBillActivity;->b(J)V

    goto :goto_0
.end method

.method public final b()V
    .locals 6

    .prologue
    const v5, 0x7f0b005b

    .line 105
    iget-object v0, p0, Lcom/aadhk/restpos/SplitBillActivity;->l:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 106
    iget-boolean v0, p0, Lcom/aadhk/restpos/SplitBillActivity;->a:Z

    if-eqz v0, :cond_2

    .line 107
    iget-object v0, p0, Lcom/aadhk/restpos/SplitBillActivity;->l:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0, v5}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 108
    instance-of v2, v0, Lcom/aadhk/restpos/d/ff;

    if-eqz v2, :cond_0

    .line 109
    check-cast v0, Lcom/aadhk/restpos/d/ff;

    invoke-virtual {v0}, Lcom/aadhk/restpos/d/ff;->a()V

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/aadhk/restpos/SplitBillActivity;->l:Landroid/support/v4/app/FragmentManager;

    const v2, 0x7f0b005c

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 113
    instance-of v2, v0, Lcom/aadhk/restpos/d/fn;

    if-eqz v2, :cond_1

    .line 114
    check-cast v0, Lcom/aadhk/restpos/d/fn;

    invoke-virtual {v0}, Lcom/aadhk/restpos/d/fn;->a()V

    .line 123
    :cond_1
    :goto_0
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 125
    return-void

    .line 117
    :cond_2
    new-instance v0, Lcom/aadhk/restpos/d/ff;

    invoke-direct {v0}, Lcom/aadhk/restpos/d/ff;-><init>()V

    .line 118
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 119
    const-string v3, "bundleSplitType"

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putShort(Ljava/lang/String;S)V

    .line 120
    invoke-virtual {v0, v2}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 121
    invoke-virtual {v1, v5, v0}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_0
.end method

.method public final b(J)V
    .locals 5
    .parameter

    .prologue
    .line 93
    iget-object v0, p0, Lcom/aadhk/restpos/SplitBillActivity;->l:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 94
    new-instance v1, Lcom/aadhk/restpos/d/fn;

    invoke-direct {v1}, Lcom/aadhk/restpos/d/fn;-><init>()V

    .line 95
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 96
    const-string v3, "bundleBillId"

    invoke-virtual {v2, v3, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 97
    const-string v3, "bundleSplitType"

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putShort(Ljava/lang/String;S)V

    .line 98
    invoke-virtual {v1, v2}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 99
    const v2, 0x7f0b005b

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 101
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 102
    return-void
.end method

.method public final c()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/aadhk/restpos/SplitBillActivity;->m:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 138
    iget-boolean v0, p0, Lcom/aadhk/restpos/SplitBillActivity;->a:Z

    return v0
.end method

.method public final e()Lcom/aadhk/restpos/bean/Order;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/aadhk/restpos/SplitBillActivity;->n:Lcom/aadhk/restpos/bean/Order;

    return-object v0
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 166
    iget-object v0, p0, Lcom/aadhk/restpos/SplitBillActivity;->n:Lcom/aadhk/restpos/bean/Order;

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/aadhk/restpos/f/k;->a(Landroid/app/Activity;Lcom/aadhk/restpos/bean/Order;Z)V

    .line 167
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter

    .prologue
    const v7, 0x7f0b005c

    const v6, 0x7f0b005b

    .line 31
    invoke-super {p0, p1}, Lcom/aadhk/restpos/POSActivity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    const v0, 0x7f030020

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/SplitBillActivity;->setContentView(I)V

    .line 33
    invoke-virtual {p0, v7}, Lcom/aadhk/restpos/SplitBillActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 34
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/aadhk/restpos/SplitBillActivity;->a:Z

    .line 35
    const v0, 0x7f0901e0

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/SplitBillActivity;->setTitle(I)V

    .line 37
    invoke-virtual {p0}, Lcom/aadhk/restpos/SplitBillActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 38
    const-string v0, "bundleOrder"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/Order;

    iput-object v0, p0, Lcom/aadhk/restpos/SplitBillActivity;->n:Lcom/aadhk/restpos/bean/Order;

    .line 40
    iget-object v0, p0, Lcom/aadhk/restpos/SplitBillActivity;->d:Lcom/aadhk/restpos/bean/User;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/User;->getAccount()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/SplitBillActivity;->o:Ljava/lang/String;

    .line 42
    invoke-static {}, Lcom/aadhk/restpos/b/f;->a()Lcom/aadhk/restpos/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/b/f;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/SplitBillActivity;->m:Landroid/database/sqlite/SQLiteDatabase;

    .line 44
    invoke-virtual {p0}, Lcom/aadhk/restpos/SplitBillActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/SplitBillActivity;->l:Landroid/support/v4/app/FragmentManager;

    .line 45
    iget-object v0, p0, Lcom/aadhk/restpos/SplitBillActivity;->l:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 47
    iget-boolean v2, p0, Lcom/aadhk/restpos/SplitBillActivity;->a:Z

    if-eqz v2, :cond_1

    .line 48
    new-instance v2, Lcom/aadhk/restpos/d/fn;

    invoke-direct {v2}, Lcom/aadhk/restpos/d/fn;-><init>()V

    .line 49
    const-string v3, "bundleBillId"

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 50
    invoke-virtual {v2, v1}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 51
    invoke-virtual {v0, v7, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 53
    new-instance v2, Lcom/aadhk/restpos/d/ff;

    invoke-direct {v2}, Lcom/aadhk/restpos/d/ff;-><init>()V

    .line 54
    invoke-virtual {v2, v1}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 55
    invoke-virtual {v0, v6, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 61
    :goto_1
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 62
    return-void

    .line 34
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 57
    :cond_1
    new-instance v2, Lcom/aadhk/restpos/d/ff;

    invoke-direct {v2}, Lcom/aadhk/restpos/d/ff;-><init>()V

    .line 58
    invoke-virtual {v2, v1}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 59
    invoke-virtual {v0, v6, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 151
    invoke-static {}, Lcom/aadhk/restpos/b/f;->a()Lcom/aadhk/restpos/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/b/f;->c()V

    .line 152
    invoke-super {p0}, Lcom/aadhk/restpos/POSActivity;->onDestroy()V

    .line 153
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 157
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x102002c

    if-ne v1, v2, :cond_0

    .line 158
    iget-object v1, p0, Lcom/aadhk/restpos/SplitBillActivity;->n:Lcom/aadhk/restpos/bean/Order;

    invoke-static {p0, v1, v0}, Lcom/aadhk/restpos/f/k;->a(Landroid/app/Activity;Lcom/aadhk/restpos/bean/Order;Z)V

    .line 161
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/aadhk/restpos/POSActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 4

    .prologue
    .line 133
    invoke-super {p0}, Lcom/aadhk/restpos/POSActivity;->onPause()V

    .line 134
    iget-object v0, p0, Lcom/aadhk/restpos/SplitBillActivity;->c:Lcom/aadhk/restpos/f/l;

    const-string v1, "prefSessionStart"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/aadhk/restpos/f/l;->a(Ljava/lang/String;J)V

    .line 135
    return-void
.end method
