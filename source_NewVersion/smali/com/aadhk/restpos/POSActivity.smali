.class public abstract Lcom/aadhk/restpos/POSActivity;
.super Landroid/support/v7/app/ActionBarActivity;
.source "ProGuard"


# instance fields
.field protected b:Landroid/content/res/Resources;

.field protected c:Lcom/aadhk/restpos/f/l;

.field protected d:Lcom/aadhk/restpos/bean/User;

.field protected e:Lcom/aadhk/restpos/bean/Company;

.field protected f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/aadhk/restpos/bean/RolePermission;",
            ">;"
        }
    .end annotation
.end field

.field protected g:Ljava/lang/String;

.field protected h:Ljava/lang/String;

.field protected i:Ljava/lang/String;

.field protected j:I

.field protected k:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public final h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/aadhk/restpos/POSActivity;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/aadhk/restpos/POSActivity;->h:Ljava/lang/String;

    return-object v0
.end method

.method public final j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/aadhk/restpos/POSActivity;->k:Ljava/lang/String;

    return-object v0
.end method

.method public final k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/aadhk/restpos/POSActivity;->i:Ljava/lang/String;

    return-object v0
.end method

.method public final l()I
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Lcom/aadhk/restpos/POSActivity;->j:I

    return v0
.end method

.method public final m()Lcom/aadhk/restpos/bean/User;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/aadhk/restpos/POSActivity;->d:Lcom/aadhk/restpos/bean/User;

    return-object v0
.end method

.method public final n()Lcom/aadhk/restpos/bean/Company;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/aadhk/restpos/POSActivity;->e:Lcom/aadhk/restpos/bean/Company;

    return-object v0
.end method

.method public final o()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/aadhk/restpos/bean/RolePermission;",
            ">;"
        }
    .end annotation

    .prologue
    .line 107
    iget-object v0, p0, Lcom/aadhk/restpos/POSActivity;->f:Ljava/util/Map;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 34
    invoke-super {p0, p1}, Landroid/support/v7/app/ActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    invoke-virtual {p0}, Lcom/aadhk/restpos/POSActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 36
    const-string v0, "9fa2b19a"

    invoke-static {p0, v0}, Lcom/bugsense/trace/BugSenseHandler;->initAndStartSession(Landroid/content/Context;Ljava/lang/String;)V

    .line 37
    invoke-virtual {p0}, Lcom/aadhk/restpos/POSActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/POSActivity;->b:Landroid/content/res/Resources;

    .line 38
    new-instance v0, Lcom/aadhk/restpos/f/l;

    invoke-direct {v0, p0}, Lcom/aadhk/restpos/f/l;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/aadhk/restpos/POSActivity;->c:Lcom/aadhk/restpos/f/l;

    .line 39
    invoke-virtual {p0}, Lcom/aadhk/restpos/POSActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/POSApp;

    .line 40
    invoke-virtual {v0}, Lcom/aadhk/restpos/POSApp;->c()Lcom/aadhk/restpos/bean/User;

    move-result-object v1

    iput-object v1, p0, Lcom/aadhk/restpos/POSActivity;->d:Lcom/aadhk/restpos/bean/User;

    .line 41
    invoke-virtual {v0}, Lcom/aadhk/restpos/POSApp;->b()Lcom/aadhk/restpos/bean/Company;

    move-result-object v1

    iput-object v1, p0, Lcom/aadhk/restpos/POSActivity;->e:Lcom/aadhk/restpos/bean/Company;

    .line 42
    invoke-virtual {v0}, Lcom/aadhk/restpos/POSApp;->d()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/POSActivity;->f:Ljava/util/Map;

    .line 44
    iget-object v0, p0, Lcom/aadhk/restpos/POSActivity;->e:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Company;->getTimeIn()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/POSActivity;->g:Ljava/lang/String;

    .line 45
    iget-object v0, p0, Lcom/aadhk/restpos/POSActivity;->e:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Company;->getTimeOut()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/POSActivity;->h:Ljava/lang/String;

    .line 46
    iget-object v0, p0, Lcom/aadhk/restpos/POSActivity;->e:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Company;->getCurrencySign()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/POSActivity;->i:Ljava/lang/String;

    .line 47
    iget-object v0, p0, Lcom/aadhk/restpos/POSActivity;->e:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Company;->getDecimalPlace()I

    move-result v0

    iput v0, p0, Lcom/aadhk/restpos/POSActivity;->j:I

    .line 48
    iget-object v0, p0, Lcom/aadhk/restpos/POSActivity;->c:Lcom/aadhk/restpos/f/l;

    invoke-virtual {v0}, Lcom/aadhk/restpos/f/l;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/POSActivity;->k:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter

    .prologue
    .line 54
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 55
    invoke-virtual {p0}, Lcom/aadhk/restpos/POSActivity;->finish()V

    .line 57
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/app/ActionBarActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 62
    invoke-super {p0}, Landroid/support/v7/app/ActionBarActivity;->onStart()V

    .line 63
    invoke-static {}, Lcom/google/analytics/tracking/android/EasyTracker;->getInstance()Lcom/google/analytics/tracking/android/EasyTracker;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/analytics/tracking/android/EasyTracker;->activityStart(Landroid/app/Activity;)V

    .line 64
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 68
    invoke-super {p0}, Landroid/support/v7/app/ActionBarActivity;->onStop()V

    .line 69
    invoke-static {}, Lcom/google/analytics/tracking/android/EasyTracker;->getInstance()Lcom/google/analytics/tracking/android/EasyTracker;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/analytics/tracking/android/EasyTracker;->activityStop(Landroid/app/Activity;)V

    .line 70
    return-void
.end method
