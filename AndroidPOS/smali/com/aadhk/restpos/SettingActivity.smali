.class public Lcom/aadhk/restpos/SettingActivity;
.super Lcom/aadhk/restpos/POSActivity;
.source "ProGuard"


# instance fields
.field private a:Lcom/aadhk/restpos/g/aa;

.field private o:Lcom/aadhk/restpos/g/i;

.field private p:Lcom/aadhk/restpos/g/z;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/aadhk/restpos/POSActivity;-><init>()V

    .line 195
    return-void
.end method

.method private c()V
    .locals 1

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/aadhk/restpos/SettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/POSApp;

    invoke-virtual {v0}, Lcom/aadhk/restpos/POSApp;->c()V

    .line 74
    invoke-virtual {p0}, Lcom/aadhk/restpos/SettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/POSApp;

    invoke-virtual {v0}, Lcom/aadhk/restpos/POSApp;->j()V

    .line 75
    invoke-virtual {p0}, Lcom/aadhk/restpos/SettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/POSApp;

    invoke-virtual {v0}, Lcom/aadhk/restpos/POSApp;->l()V

    .line 76
    invoke-virtual {p0}, Lcom/aadhk/restpos/SettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/POSApp;

    invoke-virtual {v0}, Lcom/aadhk/restpos/POSApp;->n()V

    .line 77
    invoke-virtual {p0}, Lcom/aadhk/restpos/SettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/POSApp;

    invoke-virtual {v0}, Lcom/aadhk/restpos/POSApp;->f()V

    .line 78
    invoke-virtual {p0}, Lcom/aadhk/restpos/SettingActivity;->finish()V

    .line 80
    return-void
.end method


# virtual methods
.method public final a()Lcom/aadhk/restpos/g/aa;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/aadhk/restpos/SettingActivity;->a:Lcom/aadhk/restpos/g/aa;

    return-object v0
.end method

.method public final b()Lcom/aadhk/restpos/g/z;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/aadhk/restpos/SettingActivity;->p:Lcom/aadhk/restpos/g/z;

    return-object v0
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/aadhk/restpos/SettingActivity;->c()V

    .line 55
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 33
    invoke-super {p0, p1}, Lcom/aadhk/restpos/POSActivity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    const v0, 0x7f080030

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/SettingActivity;->setTitle(I)V

    .line 35
    new-instance v0, Lcom/aadhk/restpos/g/aa;

    invoke-direct {v0, p0}, Lcom/aadhk/restpos/g/aa;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/aadhk/restpos/SettingActivity;->a:Lcom/aadhk/restpos/g/aa;

    .line 36
    new-instance v0, Lcom/aadhk/restpos/g/i;

    invoke-direct {v0, p0}, Lcom/aadhk/restpos/g/i;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/aadhk/restpos/SettingActivity;->o:Lcom/aadhk/restpos/g/i;

    .line 37
    new-instance v0, Lcom/aadhk/restpos/g/z;

    invoke-direct {v0, p0}, Lcom/aadhk/restpos/g/z;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/aadhk/restpos/SettingActivity;->p:Lcom/aadhk/restpos/g/z;

    .line 40
    invoke-virtual {p0}, Lcom/aadhk/restpos/SettingActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x1020002

    new-instance v2, Lcom/aadhk/restpos/d/it;

    invoke-direct {v2}, Lcom/aadhk/restpos/d/it;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 41
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/aadhk/restpos/SettingActivity;->a:Lcom/aadhk/restpos/g/aa;

    invoke-static {}, Lcom/aadhk/restpos/b/f;->a()Lcom/aadhk/restpos/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/b/f;->c()V

    .line 235
    iget-object v0, p0, Lcom/aadhk/restpos/SettingActivity;->o:Lcom/aadhk/restpos/g/i;

    invoke-static {}, Lcom/aadhk/restpos/b/f;->a()Lcom/aadhk/restpos/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/b/f;->c()V

    .line 236
    iget-object v0, p0, Lcom/aadhk/restpos/SettingActivity;->p:Lcom/aadhk/restpos/g/z;

    invoke-static {}, Lcom/aadhk/restpos/b/f;->a()Lcom/aadhk/restpos/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/b/f;->c()V

    .line 244
    invoke-super {p0}, Lcom/aadhk/restpos/POSActivity;->onDestroy()V

    .line 245
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter

    .prologue
    .line 45
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 46
    invoke-direct {p0}, Lcom/aadhk/restpos/SettingActivity;->c()V

    .line 47
    const/4 v0, 0x1

    .line 49
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/aadhk/restpos/POSActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method
