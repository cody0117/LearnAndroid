.class public Lcom/aadhk/restpos/SplitBillActivity;
.super Lcom/aadhk/restpos/POSActivity;
.source "ProGuard"


# instance fields
.field private a:Z

.field private o:Landroid/support/v4/app/FragmentManager;

.field private p:Lcom/aadhk/restpos/g/ab;

.field private q:Lcom/aadhk/restpos/bean/Order;

.field private r:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/aadhk/restpos/POSActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/aadhk/restpos/SplitBillActivity;->a:Z

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/aadhk/restpos/SplitBillActivity;->o:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 65
    new-instance v1, Lcom/aadhk/restpos/d/jx;

    invoke-direct {v1}, Lcom/aadhk/restpos/d/jx;-><init>()V

    .line 66
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 67
    const-string v3, "bundleSplitType"

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putShort(Ljava/lang/String;S)V

    .line 68
    const-string v3, "bundleBillId"

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 69
    invoke-virtual {v1, v2}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 70
    const v2, 0x7f09005f

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 71
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 73
    :cond_0
    return-void
.end method

.method public final a(J)V
    .locals 5
    .parameter

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/aadhk/restpos/SplitBillActivity;->a:Z

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/aadhk/restpos/SplitBillActivity;->o:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 78
    new-instance v1, Lcom/aadhk/restpos/d/jx;

    invoke-direct {v1}, Lcom/aadhk/restpos/d/jx;-><init>()V

    .line 79
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 80
    const-string v3, "bundleSplitType"

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putShort(Ljava/lang/String;S)V

    .line 81
    const-string v3, "bundleBillId"

    invoke-virtual {v2, v3, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 82
    invoke-virtual {v1, v2}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 83
    const v2, 0x7f09005f

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 84
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 88
    :goto_0
    return-void

    .line 86
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/aadhk/restpos/SplitBillActivity;->b(J)V

    goto :goto_0
.end method

.method public final b()V
    .locals 6

    .prologue
    const v5, 0x7f09005f

    .line 103
    iget-object v0, p0, Lcom/aadhk/restpos/SplitBillActivity;->o:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 104
    iget-boolean v0, p0, Lcom/aadhk/restpos/SplitBillActivity;->a:Z

    if-eqz v0, :cond_2

    .line 105
    iget-object v0, p0, Lcom/aadhk/restpos/SplitBillActivity;->o:Landroid/support/v4/app/FragmentManager;

    const v2, 0x7f090060

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 106
    instance-of v2, v0, Lcom/aadhk/restpos/d/jh;

    if-eqz v2, :cond_0

    .line 107
    check-cast v0, Lcom/aadhk/restpos/d/jh;

    invoke-virtual {v0}, Lcom/aadhk/restpos/d/jh;->a()V

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/aadhk/restpos/SplitBillActivity;->o:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0, v5}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 111
    instance-of v2, v0, Lcom/aadhk/restpos/d/jx;

    if-eqz v2, :cond_1

    .line 112
    check-cast v0, Lcom/aadhk/restpos/d/jx;

    invoke-virtual {v0}, Lcom/aadhk/restpos/d/jx;->a()V

    .line 121
    :cond_1
    :goto_0
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 123
    return-void

    .line 115
    :cond_2
    new-instance v0, Lcom/aadhk/restpos/d/jh;

    invoke-direct {v0}, Lcom/aadhk/restpos/d/jh;-><init>()V

    .line 116
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 117
    const-string v3, "bundleSplitType"

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putShort(Ljava/lang/String;S)V

    .line 118
    invoke-virtual {v0, v2}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 119
    invoke-virtual {v1, v5, v0}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_0
.end method

.method public final b(J)V
    .locals 5
    .parameter

    .prologue
    .line 91
    iget-object v0, p0, Lcom/aadhk/restpos/SplitBillActivity;->o:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 92
    new-instance v1, Lcom/aadhk/restpos/d/jx;

    invoke-direct {v1}, Lcom/aadhk/restpos/d/jx;-><init>()V

    .line 93
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 94
    const-string v3, "bundleBillId"

    invoke-virtual {v2, v3, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 95
    const-string v3, "bundleSplitType"

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putShort(Ljava/lang/String;S)V

    .line 96
    invoke-virtual {v1, v2}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 97
    const v2, 0x7f09005f

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 99
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 100
    return-void
.end method

.method public final c()Lcom/aadhk/restpos/g/ab;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/aadhk/restpos/SplitBillActivity;->p:Lcom/aadhk/restpos/g/ab;

    return-object v0
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 136
    iget-boolean v0, p0, Lcom/aadhk/restpos/SplitBillActivity;->a:Z

    return v0
.end method

.method public final e()Lcom/aadhk/restpos/bean/Order;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/aadhk/restpos/SplitBillActivity;->q:Lcom/aadhk/restpos/bean/Order;

    return-object v0
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    .line 159
    iget-object v0, p0, Lcom/aadhk/restpos/SplitBillActivity;->q:Lcom/aadhk/restpos/bean/Order;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p0, v0, v1, v2}, Lcom/aadhk/restpos/util/q;->a(Landroid/app/Activity;Lcom/aadhk/restpos/bean/Order;Lcom/aadhk/restpos/bean/Customer;Z)V

    .line 160
    invoke-virtual {p0}, Lcom/aadhk/restpos/SplitBillActivity;->finish()V

    .line 161
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter

    .prologue
    const v7, 0x7f090060

    const v6, 0x7f09005f

    .line 29
    invoke-super {p0, p1}, Lcom/aadhk/restpos/POSActivity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    const v0, 0x7f030020

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/SplitBillActivity;->setContentView(I)V

    .line 31
    invoke-virtual {p0, v7}, Lcom/aadhk/restpos/SplitBillActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 32
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/aadhk/restpos/SplitBillActivity;->a:Z

    .line 33
    const v0, 0x7f08021f

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/SplitBillActivity;->setTitle(I)V

    .line 35
    invoke-virtual {p0}, Lcom/aadhk/restpos/SplitBillActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 36
    const-string v0, "bundleOrder"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/Order;

    iput-object v0, p0, Lcom/aadhk/restpos/SplitBillActivity;->q:Lcom/aadhk/restpos/bean/Order;

    .line 38
    iget-object v0, p0, Lcom/aadhk/restpos/SplitBillActivity;->d:Lcom/aadhk/restpos/bean/User;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/User;->getAccount()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/SplitBillActivity;->r:Ljava/lang/String;

    .line 40
    new-instance v0, Lcom/aadhk/restpos/g/ab;

    invoke-direct {v0, p0}, Lcom/aadhk/restpos/g/ab;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/aadhk/restpos/SplitBillActivity;->p:Lcom/aadhk/restpos/g/ab;

    .line 42
    invoke-virtual {p0}, Lcom/aadhk/restpos/SplitBillActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/SplitBillActivity;->o:Landroid/support/v4/app/FragmentManager;

    .line 43
    iget-object v0, p0, Lcom/aadhk/restpos/SplitBillActivity;->o:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 45
    iget-boolean v2, p0, Lcom/aadhk/restpos/SplitBillActivity;->a:Z

    if-eqz v2, :cond_1

    .line 46
    new-instance v2, Lcom/aadhk/restpos/d/jx;

    invoke-direct {v2}, Lcom/aadhk/restpos/d/jx;-><init>()V

    .line 47
    const-string v3, "bundleBillId"

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 48
    invoke-virtual {v2, v1}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 49
    invoke-virtual {v0, v6, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 51
    new-instance v2, Lcom/aadhk/restpos/d/jh;

    invoke-direct {v2}, Lcom/aadhk/restpos/d/jh;-><init>()V

    .line 52
    invoke-virtual {v2, v1}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 53
    invoke-virtual {v0, v7, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 59
    :goto_1
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 60
    return-void

    .line 32
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 55
    :cond_1
    new-instance v2, Lcom/aadhk/restpos/d/jh;

    invoke-direct {v2}, Lcom/aadhk/restpos/d/jh;-><init>()V

    .line 56
    invoke-virtual {v2, v1}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 57
    invoke-virtual {v0, v6, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/aadhk/restpos/SplitBillActivity;->p:Lcom/aadhk/restpos/g/ab;

    invoke-static {}, Lcom/aadhk/restpos/b/f;->a()Lcom/aadhk/restpos/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/b/f;->c()V

    .line 166
    invoke-super {p0}, Lcom/aadhk/restpos/POSActivity;->onDestroy()V

    .line 167
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 149
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x102002c

    if-ne v1, v2, :cond_0

    .line 150
    iget-object v1, p0, Lcom/aadhk/restpos/SplitBillActivity;->q:Lcom/aadhk/restpos/bean/Order;

    const/4 v2, 0x0

    invoke-static {p0, v1, v2, v0}, Lcom/aadhk/restpos/util/q;->a(Landroid/app/Activity;Lcom/aadhk/restpos/bean/Order;Lcom/aadhk/restpos/bean/Customer;Z)V

    .line 151
    invoke-virtual {p0}, Lcom/aadhk/restpos/SplitBillActivity;->finish()V

    .line 154
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
    .line 131
    invoke-super {p0}, Lcom/aadhk/restpos/POSActivity;->onPause()V

    .line 132
    iget-object v0, p0, Lcom/aadhk/restpos/SplitBillActivity;->c:Lcom/aadhk/restpos/util/r;

    const-string v1, "prefSessionStart"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/aadhk/restpos/util/r;->a(Ljava/lang/String;J)V

    .line 133
    return-void
.end method
