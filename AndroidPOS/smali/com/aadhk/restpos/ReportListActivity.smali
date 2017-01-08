.class public Lcom/aadhk/restpos/ReportListActivity;
.super Lcom/aadhk/restpos/POSActivity;
.source "ProGuard"


# instance fields
.field public a:Z

.field private o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/Report;",
            ">;"
        }
    .end annotation
.end field

.field private p:Lcom/aadhk/restpos/g/w;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/aadhk/restpos/POSActivity;-><init>()V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aadhk/restpos/ReportListActivity;->o:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a()Lcom/aadhk/restpos/g/w;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/aadhk/restpos/ReportListActivity;->p:Lcom/aadhk/restpos/g/w;

    return-object v0
.end method

.method public final a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/Report;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 40
    iput-object p1, p0, Lcom/aadhk/restpos/ReportListActivity;->o:Ljava/util/List;

    .line 42
    invoke-virtual {p0}, Lcom/aadhk/restpos/ReportListActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 43
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Lcom/aadhk/restpos/d/hr;

    invoke-direct {v0}, Lcom/aadhk/restpos/d/hr;-><init>()V

    .line 45
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 46
    const-string v3, "fromDate"

    invoke-virtual {v2, v3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    const-string v3, "toDate"

    invoke-virtual {v2, v3, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    invoke-virtual {v0, v2}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 53
    :goto_0
    iget-boolean v2, p0, Lcom/aadhk/restpos/ReportListActivity;->a:Z

    if-eqz v2, :cond_1

    .line 54
    const v2, 0x7f09005e

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 59
    :goto_1
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 60
    return-void

    .line 50
    :cond_0
    new-instance v0, Lcom/aadhk/restpos/d/af;

    invoke-direct {v0}, Lcom/aadhk/restpos/d/af;-><init>()V

    goto :goto_0

    .line 56
    :cond_1
    const v2, 0x7f09005c

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 57
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_1
.end method

.method public final b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/Report;",
            ">;"
        }
    .end annotation

    .prologue
    .line 67
    iget-object v0, p0, Lcom/aadhk/restpos/ReportListActivity;->o:Ljava/util/List;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 26
    invoke-super {p0, p1}, Lcom/aadhk/restpos/POSActivity;->onCreate(Landroid/os/Bundle;)V

    .line 27
    const v0, 0x7f030022

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/ReportListActivity;->setContentView(I)V

    .line 28
    const v0, 0x7f0801d0

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/ReportListActivity;->setTitle(I)V

    .line 29
    new-instance v0, Lcom/aadhk/restpos/g/w;

    invoke-direct {v0, p0}, Lcom/aadhk/restpos/g/w;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/aadhk/restpos/ReportListActivity;->p:Lcom/aadhk/restpos/g/w;

    .line 31
    const v0, 0x7f09005e

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/ReportListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 32
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/aadhk/restpos/ReportListActivity;->a:Z

    .line 34
    invoke-virtual {p0}, Lcom/aadhk/restpos/ReportListActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 35
    const v1, 0x7f09005c

    new-instance v2, Lcom/aadhk/restpos/d/hk;

    invoke-direct {v2}, Lcom/aadhk/restpos/d/hk;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 36
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 37
    return-void

    .line 32
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/aadhk/restpos/ReportListActivity;->p:Lcom/aadhk/restpos/g/w;

    invoke-static {}, Lcom/aadhk/restpos/b/f;->a()Lcom/aadhk/restpos/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/b/f;->c()V

    .line 77
    invoke-super {p0}, Lcom/aadhk/restpos/POSActivity;->onDestroy()V

    .line 78
    return-void
.end method
