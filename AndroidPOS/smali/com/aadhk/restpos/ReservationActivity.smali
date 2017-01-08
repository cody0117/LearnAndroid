.class public Lcom/aadhk/restpos/ReservationActivity;
.super Lcom/aadhk/restpos/POSActivity;
.source "ProGuard"


# static fields
.field private static a:Landroid/view/MenuItem;


# instance fields
.field private o:Lcom/aadhk/restpos/g/x;

.field private p:Landroid/support/v4/app/FragmentManager;

.field private q:Lcom/aadhk/restpos/d/ia;

.field private r:Lcom/aadhk/restpos/d/hu;

.field private s:Z

.field private t:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/aadhk/restpos/POSActivity;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/aadhk/restpos/ReservationActivity;->t:Z

    return-void
.end method

.method private d()V
    .locals 2

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/aadhk/restpos/ReservationActivity;->t:Z

    if-eqz v0, :cond_0

    .line 117
    sget-object v0, Lcom/aadhk/restpos/ReservationActivity;->a:Landroid/view/MenuItem;

    const v1, 0x7f0800e4

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 121
    :goto_0
    return-void

    .line 119
    :cond_0
    sget-object v0, Lcom/aadhk/restpos/ReservationActivity;->a:Landroid/view/MenuItem;

    const v1, 0x7f0800e5

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_0
.end method


# virtual methods
.method public final a()Lcom/aadhk/restpos/g/x;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/aadhk/restpos/ReservationActivity;->o:Lcom/aadhk/restpos/g/x;

    return-object v0
.end method

.method public final a(Lcom/aadhk/restpos/bean/Reservation;)V
    .locals 3
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lcom/aadhk/restpos/ReservationActivity;->p:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 67
    new-instance v1, Lcom/aadhk/restpos/d/hu;

    invoke-direct {v1}, Lcom/aadhk/restpos/d/hu;-><init>()V

    iput-object v1, p0, Lcom/aadhk/restpos/ReservationActivity;->r:Lcom/aadhk/restpos/d/hu;

    .line 68
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 69
    const-string v2, "reservation"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 70
    iget-object v2, p0, Lcom/aadhk/restpos/ReservationActivity;->r:Lcom/aadhk/restpos/d/hu;

    invoke-virtual {v2, v1}, Lcom/aadhk/restpos/d/hu;->setArguments(Landroid/os/Bundle;)V

    .line 71
    iget-boolean v1, p0, Lcom/aadhk/restpos/ReservationActivity;->s:Z

    if-eqz v1, :cond_0

    .line 72
    const v1, 0x7f090060

    iget-object v2, p0, Lcom/aadhk/restpos/ReservationActivity;->r:Lcom/aadhk/restpos/d/hu;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 76
    :goto_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 77
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 78
    return-void

    .line 74
    :cond_0
    const v1, 0x7f09005f

    iget-object v2, p0, Lcom/aadhk/restpos/ReservationActivity;->r:Lcom/aadhk/restpos/d/hu;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_0
.end method

.method public final a(Ljava/util/Map;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/Reservation;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 124
    iget-object v0, p0, Lcom/aadhk/restpos/ReservationActivity;->q:Lcom/aadhk/restpos/d/ia;

    invoke-virtual {v0, p1}, Lcom/aadhk/restpos/d/ia;->a(Ljava/util/Map;)V

    .line 125
    return-void
.end method

.method public final b(Lcom/aadhk/restpos/bean/Reservation;)V
    .locals 5
    .parameter

    .prologue
    .line 136
    new-instance v0, Lcom/aadhk/restpos/bean/Order;

    invoke-direct {v0}, Lcom/aadhk/restpos/bean/Order;-><init>()V

    .line 137
    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/Reservation;->getTableId()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/restpos/bean/Order;->setTableId(J)V

    .line 138
    invoke-static {}, Lcom/aadhk/restpos/util/o;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/Order;->setOrderTime(Ljava/lang/String;)V

    .line 139
    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/Reservation;->getGuestNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/Order;->setPersonNum(I)V

    .line 140
    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/Reservation;->getTableName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/Order;->setTableName(Ljava/lang/String;)V

    .line 141
    iget-object v1, p0, Lcom/aadhk/restpos/ReservationActivity;->d:Lcom/aadhk/restpos/bean/User;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/User;->getAccount()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/Order;->setWaiterName(Ljava/lang/String;)V

    .line 143
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 144
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 145
    const-string v3, "bundleOrderType"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 146
    const-string v3, "bundleOrder"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 147
    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 148
    const-class v0, Lcom/aadhk/restpos/TakeOrderActivity;

    invoke-virtual {v1, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 149
    invoke-virtual {p0, v1}, Lcom/aadhk/restpos/ReservationActivity;->startActivity(Landroid/content/Intent;)V

    .line 150
    return-void
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 128
    iget-boolean v0, p0, Lcom/aadhk/restpos/ReservationActivity;->s:Z

    return v0
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 132
    iget-boolean v0, p0, Lcom/aadhk/restpos/ReservationActivity;->t:Z

    return v0
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 112
    invoke-virtual {p0}, Lcom/aadhk/restpos/ReservationActivity;->finish()V

    .line 113
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    const v3, 0x7f090060

    .line 39
    invoke-super {p0, p1}, Lcom/aadhk/restpos/POSActivity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    const v0, 0x7f0800d9

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/ReservationActivity;->setTitle(I)V

    .line 41
    const v0, 0x7f030020

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/ReservationActivity;->setContentView(I)V

    .line 42
    new-instance v0, Lcom/aadhk/restpos/g/x;

    invoke-direct {v0, p0}, Lcom/aadhk/restpos/g/x;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/aadhk/restpos/ReservationActivity;->o:Lcom/aadhk/restpos/g/x;

    .line 44
    invoke-virtual {p0, v3}, Lcom/aadhk/restpos/ReservationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 45
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/aadhk/restpos/ReservationActivity;->s:Z

    .line 46
    invoke-virtual {p0}, Lcom/aadhk/restpos/ReservationActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/ReservationActivity;->p:Landroid/support/v4/app/FragmentManager;

    .line 47
    iget-object v0, p0, Lcom/aadhk/restpos/ReservationActivity;->p:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    new-instance v1, Lcom/aadhk/restpos/d/ia;

    invoke-direct {v1}, Lcom/aadhk/restpos/d/ia;-><init>()V

    iput-object v1, p0, Lcom/aadhk/restpos/ReservationActivity;->q:Lcom/aadhk/restpos/d/ia;

    const v1, 0x7f09005f

    iget-object v2, p0, Lcom/aadhk/restpos/ReservationActivity;->q:Lcom/aadhk/restpos/d/ia;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    iget-boolean v1, p0, Lcom/aadhk/restpos/ReservationActivity;->s:Z

    if-eqz v1, :cond_0

    new-instance v1, Lcom/aadhk/restpos/d/hu;

    invoke-direct {v1}, Lcom/aadhk/restpos/d/hu;-><init>()V

    iput-object v1, p0, Lcom/aadhk/restpos/ReservationActivity;->r:Lcom/aadhk/restpos/d/hu;

    iget-object v1, p0, Lcom/aadhk/restpos/ReservationActivity;->r:Lcom/aadhk/restpos/d/hu;

    invoke-virtual {v0, v3, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    :cond_0
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 48
    return-void

    .line 45
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/aadhk/restpos/ReservationActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0f0013

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 83
    const v0, 0x7f09031c

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    sput-object v0, Lcom/aadhk/restpos/ReservationActivity;->a:Landroid/view/MenuItem;

    .line 85
    invoke-direct {p0}, Lcom/aadhk/restpos/ReservationActivity;->d()V

    .line 86
    invoke-super {p0, p1}, Lcom/aadhk/restpos/POSActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/aadhk/restpos/ReservationActivity;->o:Lcom/aadhk/restpos/g/x;

    invoke-static {}, Lcom/aadhk/restpos/b/f;->a()Lcom/aadhk/restpos/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/b/f;->c()V

    .line 154
    invoke-super {p0}, Lcom/aadhk/restpos/POSActivity;->onDestroy()V

    .line 155
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 91
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x7f090301

    if-ne v1, v2, :cond_0

    .line 92
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/aadhk/restpos/ReservationActivity;->a(Lcom/aadhk/restpos/bean/Reservation;)V

    .line 107
    :goto_0
    return v0

    .line 94
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x102002c

    if-ne v1, v2, :cond_1

    .line 95
    invoke-virtual {p0}, Lcom/aadhk/restpos/ReservationActivity;->finish()V

    goto :goto_0

    .line 97
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x7f09031c

    if-ne v1, v2, :cond_3

    .line 98
    iget-boolean v1, p0, Lcom/aadhk/restpos/ReservationActivity;->t:Z

    if-eqz v1, :cond_2

    .line 99
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/aadhk/restpos/ReservationActivity;->t:Z

    .line 103
    :goto_1
    iget-object v1, p0, Lcom/aadhk/restpos/ReservationActivity;->q:Lcom/aadhk/restpos/d/ia;

    iget-boolean v2, p0, Lcom/aadhk/restpos/ReservationActivity;->t:Z

    invoke-virtual {v1, v2}, Lcom/aadhk/restpos/d/ia;->a(Z)V

    .line 104
    invoke-direct {p0}, Lcom/aadhk/restpos/ReservationActivity;->d()V

    goto :goto_0

    .line 101
    :cond_2
    iput-boolean v0, p0, Lcom/aadhk/restpos/ReservationActivity;->t:Z

    goto :goto_1

    .line 107
    :cond_3
    invoke-super {p0, p1}, Lcom/aadhk/restpos/POSActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method
