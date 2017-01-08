.class public Lcom/aadhk/restpos/PaymentActivity;
.super Lcom/aadhk/restpos/POSActivity;
.source "ProGuard"


# instance fields
.field private a:Z

.field private l:Landroid/support/v4/app/FragmentManager;

.field private m:Landroid/database/sqlite/SQLiteDatabase;

.field private n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/OrderItem;",
            ">;"
        }
    .end annotation
.end field

.field private o:Lcom/aadhk/restpos/bean/Order;

.field private p:Lcom/aadhk/restpos/bean/Order;

.field private q:Lcom/aadhk/restpos/bean/Customer;

.field private r:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/aadhk/restpos/POSActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 121
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/aadhk/restpos/CustomerActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 122
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 123
    const-string v2, "actionType"

    const-string v3, "contextPay"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 125
    const/4 v1, 0x6

    invoke-virtual {p0, v0, v1}, Lcom/aadhk/restpos/PaymentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 126
    return-void
.end method

.method public final a(Lcom/aadhk/restpos/bean/Customer;)V
    .locals 0
    .parameter

    .prologue
    .line 208
    iput-object p1, p0, Lcom/aadhk/restpos/PaymentActivity;->q:Lcom/aadhk/restpos/bean/Customer;

    .line 209
    return-void
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 141
    iget-boolean v0, p0, Lcom/aadhk/restpos/PaymentActivity;->a:Z

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/aadhk/restpos/PaymentActivity;->l:Landroid/support/v4/app/FragmentManager;

    const v1, 0x7f0b005c

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 143
    instance-of v1, v0, Lcom/aadhk/restpos/d/ct;

    if-eqz v1, :cond_0

    .line 144
    check-cast v0, Lcom/aadhk/restpos/d/ct;

    invoke-virtual {v0}, Lcom/aadhk/restpos/d/ct;->b()V

    .line 147
    :cond_0
    return-void
.end method

.method public final c()V
    .locals 2

    .prologue
    .line 150
    iget-boolean v0, p0, Lcom/aadhk/restpos/PaymentActivity;->a:Z

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/aadhk/restpos/PaymentActivity;->l:Landroid/support/v4/app/FragmentManager;

    const v1, 0x7f0b005c

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 152
    instance-of v1, v0, Lcom/aadhk/restpos/d/ct;

    if-eqz v1, :cond_0

    .line 153
    check-cast v0, Lcom/aadhk/restpos/d/ct;

    invoke-virtual {v0}, Lcom/aadhk/restpos/d/ct;->a()V

    .line 156
    :cond_0
    return-void
.end method

.method public final d()V
    .locals 3

    .prologue
    .line 160
    new-instance v0, Lcom/aadhk/restpos/bean/Order;

    invoke-direct {v0}, Lcom/aadhk/restpos/bean/Order;-><init>()V

    .line 161
    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/restpos/bean/Order;->setTableId(J)V

    .line 162
    invoke-static {}, Lcom/aadhk/restpos/f/i;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/Order;->setStartTime(Ljava/lang/String;)V

    .line 163
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/Order;->setPersonNum(I)V

    .line 164
    invoke-virtual {p0}, Lcom/aadhk/restpos/PaymentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090307

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/Order;->setTableName(Ljava/lang/String;)V

    .line 165
    iget-object v1, p0, Lcom/aadhk/restpos/PaymentActivity;->d:Lcom/aadhk/restpos/bean/User;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/User;->getAccount()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/Order;->setWaiterName(Ljava/lang/String;)V

    .line 166
    iget-object v1, p0, Lcom/aadhk/restpos/PaymentActivity;->c:Lcom/aadhk/restpos/f/l;

    invoke-virtual {v1}, Lcom/aadhk/restpos/f/l;->r()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 167
    iget-object v1, p0, Lcom/aadhk/restpos/PaymentActivity;->c:Lcom/aadhk/restpos/f/l;

    invoke-virtual {v1}, Lcom/aadhk/restpos/f/l;->q()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/Order;->setOrderNum(Ljava/lang/String;)V

    .line 171
    :goto_0
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/aadhk/restpos/f/k;->a(Landroid/app/Activity;Lcom/aadhk/restpos/bean/Order;Z)V

    .line 172
    return-void

    .line 169
    :cond_0
    iget-object v1, p0, Lcom/aadhk/restpos/PaymentActivity;->c:Lcom/aadhk/restpos/f/l;

    invoke-virtual {v1}, Lcom/aadhk/restpos/f/l;->r()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/aadhk/restpos/f/j;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/Order;->setOrderNum(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final e()Lcom/aadhk/restpos/bean/Order;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/aadhk/restpos/PaymentActivity;->o:Lcom/aadhk/restpos/bean/Order;

    return-object v0
.end method

.method public final f()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/OrderItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 200
    iget-object v0, p0, Lcom/aadhk/restpos/PaymentActivity;->n:Ljava/util/List;

    return-object v0
.end method

.method public final g()Lcom/aadhk/restpos/bean/Customer;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/aadhk/restpos/PaymentActivity;->q:Lcom/aadhk/restpos/bean/Customer;

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 104
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    const/4 v0, 0x6

    if-ne p1, v0, :cond_1

    .line 105
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 106
    const-string v1, "bundleCustomer"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/Customer;

    iput-object v0, p0, Lcom/aadhk/restpos/PaymentActivity;->q:Lcom/aadhk/restpos/bean/Customer;

    .line 108
    iget-object v0, p0, Lcom/aadhk/restpos/PaymentActivity;->l:Landroid/support/v4/app/FragmentManager;

    const v1, 0x7f0b005c

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 109
    if-eqz v0, :cond_0

    .line 110
    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/aadhk/restpos/PaymentActivity;->l:Landroid/support/v4/app/FragmentManager;

    const v1, 0x7f0b005b

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 114
    if-eqz v0, :cond_1

    .line 115
    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 118
    :cond_1
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 185
    iget-object v0, p0, Lcom/aadhk/restpos/PaymentActivity;->p:Lcom/aadhk/restpos/bean/Order;

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/aadhk/restpos/f/k;->a(Landroid/app/Activity;Lcom/aadhk/restpos/bean/Order;Z)V

    .line 186
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter

    .prologue
    const v5, 0x7f0b005c

    .line 42
    invoke-super {p0, p1}, Lcom/aadhk/restpos/POSActivity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    const v0, 0x7f030020

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/PaymentActivity;->setContentView(I)V

    .line 44
    invoke-virtual {p0, v5}, Lcom/aadhk/restpos/PaymentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 45
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/aadhk/restpos/PaymentActivity;->a:Z

    .line 47
    invoke-virtual {p0}, Lcom/aadhk/restpos/PaymentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 48
    const-string v0, "bundleOrderClone"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/Order;

    iput-object v0, p0, Lcom/aadhk/restpos/PaymentActivity;->o:Lcom/aadhk/restpos/bean/Order;

    .line 49
    const-string v0, "bundleOrder"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/Order;

    iput-object v0, p0, Lcom/aadhk/restpos/PaymentActivity;->p:Lcom/aadhk/restpos/bean/Order;

    .line 50
    const-string v0, "bundleCustomer"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/Customer;

    iput-object v0, p0, Lcom/aadhk/restpos/PaymentActivity;->q:Lcom/aadhk/restpos/bean/Customer;

    .line 55
    iget-object v0, p0, Lcom/aadhk/restpos/PaymentActivity;->o:Lcom/aadhk/restpos/bean/Order;

    if-nez v0, :cond_0

    .line 56
    invoke-virtual {p0}, Lcom/aadhk/restpos/PaymentActivity;->finish()V

    .line 57
    invoke-static {p0}, Lcom/aadhk/restpos/f/k;->c(Landroid/app/Activity;)V

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/aadhk/restpos/PaymentActivity;->o:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getTableName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/PaymentActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 60
    iget-object v0, p0, Lcom/aadhk/restpos/PaymentActivity;->d:Lcom/aadhk/restpos/bean/User;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/User;->getAccount()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/PaymentActivity;->r:Ljava/lang/String;

    .line 62
    invoke-static {}, Lcom/aadhk/restpos/b/f;->a()Lcom/aadhk/restpos/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/b/f;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/PaymentActivity;->m:Landroid/database/sqlite/SQLiteDatabase;

    .line 63
    new-instance v0, Lcom/aadhk/restpos/b/n;

    iget-object v1, p0, Lcom/aadhk/restpos/PaymentActivity;->m:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {v0, v1}, Lcom/aadhk/restpos/b/n;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 65
    iget-object v1, p0, Lcom/aadhk/restpos/PaymentActivity;->o:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Order;->getSplitType()S

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 66
    iget-object v1, p0, Lcom/aadhk/restpos/PaymentActivity;->o:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Order;->getId()J

    move-result-wide v1

    iget-object v3, p0, Lcom/aadhk/restpos/PaymentActivity;->o:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v3}, Lcom/aadhk/restpos/bean/Order;->getBillId()J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/aadhk/restpos/b/n;->b(JJ)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/PaymentActivity;->n:Ljava/util/List;

    .line 75
    :goto_1
    invoke-virtual {p0}, Lcom/aadhk/restpos/PaymentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/PaymentActivity;->l:Landroid/support/v4/app/FragmentManager;

    .line 76
    iget-object v0, p0, Lcom/aadhk/restpos/PaymentActivity;->l:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 77
    const v1, 0x7f0b005b

    new-instance v2, Lcom/aadhk/restpos/d/cd;

    invoke-direct {v2}, Lcom/aadhk/restpos/d/cd;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 79
    iget-boolean v1, p0, Lcom/aadhk/restpos/PaymentActivity;->a:Z

    if-eqz v1, :cond_1

    .line 80
    new-instance v1, Lcom/aadhk/restpos/d/ct;

    invoke-direct {v1}, Lcom/aadhk/restpos/d/ct;-><init>()V

    invoke-virtual {v0, v5, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 83
    :cond_1
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 84
    return-void

    .line 45
    :cond_2
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 68
    :cond_3
    iget-object v1, p0, Lcom/aadhk/restpos/PaymentActivity;->c:Lcom/aadhk/restpos/f/l;

    invoke-virtual {v1}, Lcom/aadhk/restpos/f/l;->l()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 69
    iget-object v1, p0, Lcom/aadhk/restpos/PaymentActivity;->o:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Order;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/restpos/b/n;->b(J)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/PaymentActivity;->n:Ljava/util/List;

    goto :goto_1

    .line 71
    :cond_4
    iget-object v1, p0, Lcom/aadhk/restpos/PaymentActivity;->o:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Order;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/restpos/b/n;->a(J)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/PaymentActivity;->n:Ljava/util/List;

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 221
    invoke-static {}, Lcom/aadhk/restpos/b/f;->a()Lcom/aadhk/restpos/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/b/f;->c()V

    .line 222
    invoke-super {p0}, Lcom/aadhk/restpos/POSActivity;->onDestroy()V

    .line 223
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 176
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x102002c

    if-ne v1, v2, :cond_0

    .line 177
    iget-object v1, p0, Lcom/aadhk/restpos/PaymentActivity;->p:Lcom/aadhk/restpos/bean/Order;

    invoke-static {p0, v1, v0}, Lcom/aadhk/restpos/f/k;->a(Landroid/app/Activity;Lcom/aadhk/restpos/bean/Order;Z)V

    .line 180
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
    .line 191
    invoke-super {p0}, Lcom/aadhk/restpos/POSActivity;->onPause()V

    .line 192
    iget-object v0, p0, Lcom/aadhk/restpos/PaymentActivity;->c:Lcom/aadhk/restpos/f/l;

    const-string v1, "prefSessionStart"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/aadhk/restpos/f/l;->a(Ljava/lang/String;J)V

    .line 193
    return-void
.end method

.method public final p()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/aadhk/restpos/PaymentActivity;->m:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method public final q()Ljava/lang/String;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/aadhk/restpos/PaymentActivity;->r:Ljava/lang/String;

    return-object v0
.end method
