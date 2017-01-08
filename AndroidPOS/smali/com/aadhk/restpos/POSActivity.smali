.class public abstract Lcom/aadhk/restpos/POSActivity;
.super Landroid/support/v7/app/ActionBarActivity;
.source "ProGuard"


# static fields
.field protected static m:Z

.field protected static n:Landroid/net/wifi/p2p/WifiP2pInfo;


# instance fields
.field protected b:Landroid/content/res/Resources;

.field protected c:Lcom/aadhk/restpos/util/r;

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

.field protected l:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivity;-><init>()V

    return-void
.end method

.method public static a(Landroid/net/wifi/p2p/WifiP2pInfo;)V
    .locals 0
    .parameter

    .prologue
    .line 117
    sput-object p0, Lcom/aadhk/restpos/POSActivity;->n:Landroid/net/wifi/p2p/WifiP2pInfo;

    .line 118
    return-void
.end method

.method public static a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 105
    sput-boolean p0, Lcom/aadhk/restpos/POSActivity;->m:Z

    .line 106
    return-void
.end method


# virtual methods
.method public final o()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/aadhk/restpos/POSActivity;->g:Ljava/lang/String;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 36
    invoke-super {p0, p1}, Landroid/support/v7/app/ActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    invoke-virtual {p0}, Lcom/aadhk/restpos/POSActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 38
    const-string v0, "9fa2b19a"

    invoke-static {p0, v0}, Lcom/bugsense/trace/BugSenseHandler;->initAndStartSession(Landroid/content/Context;Ljava/lang/String;)V

    .line 39
    invoke-virtual {p0}, Lcom/aadhk/restpos/POSActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/POSActivity;->b:Landroid/content/res/Resources;

    .line 40
    new-instance v0, Lcom/aadhk/restpos/util/r;

    invoke-direct {v0, p0}, Lcom/aadhk/restpos/util/r;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/aadhk/restpos/POSActivity;->c:Lcom/aadhk/restpos/util/r;

    .line 41
    invoke-virtual {p0}, Lcom/aadhk/restpos/POSActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/POSApp;

    .line 42
    invoke-virtual {v0}, Lcom/aadhk/restpos/POSApp;->d()Lcom/aadhk/restpos/bean/User;

    move-result-object v1

    iput-object v1, p0, Lcom/aadhk/restpos/POSActivity;->d:Lcom/aadhk/restpos/bean/User;

    .line 43
    invoke-virtual {v0}, Lcom/aadhk/restpos/POSApp;->b()Lcom/aadhk/restpos/bean/Company;

    move-result-object v1

    iput-object v1, p0, Lcom/aadhk/restpos/POSActivity;->e:Lcom/aadhk/restpos/bean/Company;

    .line 44
    invoke-virtual {v0}, Lcom/aadhk/restpos/POSApp;->e()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/POSActivity;->f:Ljava/util/Map;

    .line 46
    iget-object v0, p0, Lcom/aadhk/restpos/POSActivity;->e:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Company;->getTimeIn()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/POSActivity;->g:Ljava/lang/String;

    .line 47
    iget-object v0, p0, Lcom/aadhk/restpos/POSActivity;->e:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Company;->getTimeOut()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/POSActivity;->h:Ljava/lang/String;

    .line 48
    iget-object v0, p0, Lcom/aadhk/restpos/POSActivity;->e:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Company;->getCurrencySign()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/POSActivity;->i:Ljava/lang/String;

    .line 49
    iget-object v0, p0, Lcom/aadhk/restpos/POSActivity;->e:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Company;->getDecimalPlace()I

    move-result v0

    iput v0, p0, Lcom/aadhk/restpos/POSActivity;->j:I

    .line 50
    iget-object v0, p0, Lcom/aadhk/restpos/POSActivity;->c:Lcom/aadhk/restpos/util/r;

    invoke-virtual {v0}, Lcom/aadhk/restpos/util/r;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/POSActivity;->k:Ljava/lang/String;

    .line 51
    iget-object v0, p0, Lcom/aadhk/restpos/POSActivity;->c:Lcom/aadhk/restpos/util/r;

    invoke-virtual {v0}, Lcom/aadhk/restpos/util/r;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/POSActivity;->l:Ljava/lang/String;

    .line 52
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 123
    invoke-super {p0}, Landroid/support/v7/app/ActionBarActivity;->onDestroy()V

    .line 124
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter

    .prologue
    .line 57
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 58
    invoke-virtual {p0}, Lcom/aadhk/restpos/POSActivity;->finish()V

    .line 60
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/app/ActionBarActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public final p()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/aadhk/restpos/POSActivity;->h:Ljava/lang/String;

    return-object v0
.end method

.method public final q()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/aadhk/restpos/POSActivity;->k:Ljava/lang/String;

    return-object v0
.end method

.method public final r()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/aadhk/restpos/POSActivity;->l:Ljava/lang/String;

    return-object v0
.end method

.method public final s()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/aadhk/restpos/POSActivity;->i:Ljava/lang/String;

    return-object v0
.end method

.method public final t()I
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lcom/aadhk/restpos/POSActivity;->j:I

    return v0
.end method

.method public final u()Lcom/aadhk/restpos/bean/User;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/aadhk/restpos/POSActivity;->d:Lcom/aadhk/restpos/bean/User;

    return-object v0
.end method

.method public final v()Lcom/aadhk/restpos/bean/Company;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/aadhk/restpos/POSActivity;->e:Lcom/aadhk/restpos/bean/Company;

    return-object v0
.end method

.method public final w()Ljava/util/Map;
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
    .line 101
    iget-object v0, p0, Lcom/aadhk/restpos/POSActivity;->f:Ljava/util/Map;

    return-object v0
.end method
