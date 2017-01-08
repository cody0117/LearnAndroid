.class public Lcom/aadhk/restpos/PriceScheduleActivity;
.super Lcom/aadhk/restpos/POSActivity;
.source "ProGuard"


# instance fields
.field private a:Z

.field private o:Landroid/support/v4/app/FragmentManager;

.field private p:Lcom/aadhk/restpos/g/t;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/aadhk/restpos/POSActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/aadhk/restpos/g/t;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/aadhk/restpos/PriceScheduleActivity;->p:Lcom/aadhk/restpos/g/t;

    return-object v0
.end method

.method public final a(Lcom/aadhk/restpos/bean/PriceSchedule;)V
    .locals 4
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/aadhk/restpos/PriceScheduleActivity;->o:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 52
    new-instance v1, Lcom/aadhk/restpos/d/fq;

    invoke-direct {v1}, Lcom/aadhk/restpos/d/fq;-><init>()V

    .line 54
    if-eqz p1, :cond_0

    .line 55
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 56
    const-string v3, "bundlePriceSchedule"

    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 57
    invoke-virtual {v1, v2}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 60
    :cond_0
    iget-boolean v2, p0, Lcom/aadhk/restpos/PriceScheduleActivity;->a:Z

    if-eqz v2, :cond_1

    .line 61
    const v2, 0x7f090060

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 65
    :goto_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 66
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 67
    return-void

    .line 63
    :cond_1
    const v2, 0x7f09005f

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_0
.end method

.method public final b()V
    .locals 3

    .prologue
    .line 42
    iget-object v0, p0, Lcom/aadhk/restpos/PriceScheduleActivity;->o:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 43
    const v1, 0x7f09005f

    new-instance v2, Lcom/aadhk/restpos/d/gb;

    invoke-direct {v2}, Lcom/aadhk/restpos/d/gb;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 44
    iget-boolean v1, p0, Lcom/aadhk/restpos/PriceScheduleActivity;->a:Z

    if-eqz v1, :cond_0

    .line 45
    const v1, 0x7f090060

    new-instance v2, Lcom/aadhk/restpos/d/fq;

    invoke-direct {v2}, Lcom/aadhk/restpos/d/fq;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 47
    :cond_0
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 48
    return-void
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/aadhk/restpos/PriceScheduleActivity;->a:Z

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 26
    invoke-super {p0, p1}, Lcom/aadhk/restpos/POSActivity;->onCreate(Landroid/os/Bundle;)V

    .line 27
    const v0, 0x7f0802bb

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/PriceScheduleActivity;->setTitle(I)V

    .line 28
    const v0, 0x7f030020

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/PriceScheduleActivity;->setContentView(I)V

    .line 29
    new-instance v0, Lcom/aadhk/restpos/g/t;

    invoke-direct {v0, p0}, Lcom/aadhk/restpos/g/t;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/aadhk/restpos/PriceScheduleActivity;->p:Lcom/aadhk/restpos/g/t;

    .line 30
    const v0, 0x7f090060

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/PriceScheduleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 31
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/aadhk/restpos/PriceScheduleActivity;->a:Z

    .line 32
    invoke-virtual {p0}, Lcom/aadhk/restpos/PriceScheduleActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/PriceScheduleActivity;->o:Landroid/support/v4/app/FragmentManager;

    .line 33
    invoke-virtual {p0}, Lcom/aadhk/restpos/PriceScheduleActivity;->b()V

    .line 34
    return-void

    .line 31
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/aadhk/restpos/PriceScheduleActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0f0001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 72
    invoke-super {p0, p1}, Lcom/aadhk/restpos/POSActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/aadhk/restpos/PriceScheduleActivity;->p:Lcom/aadhk/restpos/g/t;

    invoke-static {}, Lcom/aadhk/restpos/b/f;->a()Lcom/aadhk/restpos/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/b/f;->c()V

    .line 92
    invoke-super {p0}, Lcom/aadhk/restpos/POSActivity;->onDestroy()V

    .line 93
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter

    .prologue
    .line 77
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f090301

    if-ne v0, v1, :cond_0

    .line 78
    invoke-virtual {p0}, Lcom/aadhk/restpos/PriceScheduleActivity;->b()V

    .line 79
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/PriceScheduleActivity;->a(Lcom/aadhk/restpos/bean/PriceSchedule;)V

    .line 80
    const/4 v0, 0x1

    .line 82
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/aadhk/restpos/POSActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method
