.class public Lcom/aadhk/restpos/PriceScheduleActivity;
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
    .line 19
    invoke-direct {p0}, Lcom/aadhk/restpos/POSActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/aadhk/restpos/PriceScheduleActivity;->m:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method public final a(Lcom/aadhk/restpos/bean/PriceSchedule;)V
    .locals 4
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/aadhk/restpos/PriceScheduleActivity;->l:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 53
    new-instance v1, Lcom/aadhk/restpos/d/cw;

    invoke-direct {v1}, Lcom/aadhk/restpos/d/cw;-><init>()V

    .line 55
    if-eqz p1, :cond_0

    .line 56
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 57
    const-string v3, "bundlePriceSchedule"

    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 58
    invoke-virtual {v1, v2}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 61
    :cond_0
    iget-boolean v2, p0, Lcom/aadhk/restpos/PriceScheduleActivity;->a:Z

    if-eqz v2, :cond_1

    .line 62
    const v2, 0x7f0b005a

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 66
    :goto_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 67
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 68
    return-void

    .line 64
    :cond_1
    const v2, 0x7f0b0058

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_0
.end method

.method public final b()V
    .locals 3

    .prologue
    .line 43
    iget-object v0, p0, Lcom/aadhk/restpos/PriceScheduleActivity;->l:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 44
    const v1, 0x7f0b0058

    new-instance v2, Lcom/aadhk/restpos/d/db;

    invoke-direct {v2}, Lcom/aadhk/restpos/d/db;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 45
    iget-boolean v1, p0, Lcom/aadhk/restpos/PriceScheduleActivity;->a:Z

    if-eqz v1, :cond_0

    .line 46
    const v1, 0x7f0b005a

    new-instance v2, Lcom/aadhk/restpos/d/cw;

    invoke-direct {v2}, Lcom/aadhk/restpos/d/cw;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 48
    :cond_0
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 49
    return-void
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/aadhk/restpos/PriceScheduleActivity;->a:Z

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 27
    invoke-super {p0, p1}, Lcom/aadhk/restpos/POSActivity;->onCreate(Landroid/os/Bundle;)V

    .line 28
    const v0, 0x7f090260

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/PriceScheduleActivity;->setTitle(I)V

    .line 29
    const v0, 0x7f03001f

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/PriceScheduleActivity;->setContentView(I)V

    .line 30
    invoke-static {}, Lcom/aadhk/restpos/b/f;->a()Lcom/aadhk/restpos/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/b/f;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/PriceScheduleActivity;->m:Landroid/database/sqlite/SQLiteDatabase;

    .line 31
    const v0, 0x7f0b005a

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/PriceScheduleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 32
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/aadhk/restpos/PriceScheduleActivity;->a:Z

    .line 33
    invoke-virtual {p0}, Lcom/aadhk/restpos/PriceScheduleActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/PriceScheduleActivity;->l:Landroid/support/v4/app/FragmentManager;

    .line 34
    invoke-virtual {p0}, Lcom/aadhk/restpos/PriceScheduleActivity;->b()V

    .line 35
    return-void

    .line 32
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/aadhk/restpos/PriceScheduleActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0f0001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 73
    invoke-super {p0, p1}, Lcom/aadhk/restpos/POSActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 88
    invoke-static {}, Lcom/aadhk/restpos/b/f;->a()Lcom/aadhk/restpos/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/b/f;->c()V

    .line 89
    invoke-super {p0}, Lcom/aadhk/restpos/POSActivity;->onDestroy()V

    .line 90
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter

    .prologue
    .line 78
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0b027f

    if-ne v0, v1, :cond_0

    .line 79
    invoke-virtual {p0}, Lcom/aadhk/restpos/PriceScheduleActivity;->b()V

    .line 80
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/PriceScheduleActivity;->a(Lcom/aadhk/restpos/bean/PriceSchedule;)V

    .line 81
    const/4 v0, 0x1

    .line 83
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/aadhk/restpos/POSActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method
