.class public Lcom/aadhk/restpos/ListTableActivity;
.super Lcom/aadhk/restpos/POSActivity;
.source "ProGuard"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# instance fields
.field a:Lcom/aadhk/product/library/a/b;

.field private l:Lcom/aadhk/restpos/f/l;

.field private m:Lcom/dropbox/client2/DropboxAPI;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/dropbox/client2/DropboxAPI",
            "<",
            "Lcom/dropbox/client2/android/AndroidAuthSession;",
            ">;"
        }
    .end annotation
.end field

.field private n:Lcom/aadhk/product/library/c/e;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Landroid/database/sqlite/SQLiteDatabase;

.field private s:Lcom/aadhk/restpos/bean/RolePermission;

.field private t:Lcom/aadhk/restpos/bean/RolePermission;

.field private u:Lcom/aadhk/restpos/bean/RolePermission;

.field private v:Ljava/lang/String;

.field private w:Lcom/aadhk/restpos/bean/POSPrinterSetting;

.field private x:Lcom/aadhk/restpos/e/f;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/aadhk/restpos/POSActivity;-><init>()V

    .line 300
    new-instance v0, Lcom/aadhk/restpos/ag;

    invoke-direct {v0, p0}, Lcom/aadhk/restpos/ag;-><init>(Lcom/aadhk/restpos/ListTableActivity;)V

    iput-object v0, p0, Lcom/aadhk/restpos/ListTableActivity;->a:Lcom/aadhk/product/library/a/b;

    .line 396
    return-void
.end method

.method static synthetic a(Lcom/aadhk/restpos/ListTableActivity;)Lcom/aadhk/restpos/bean/POSPrinterSetting;
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/aadhk/restpos/ListTableActivity;->w:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    return-object v0
.end method

.method static synthetic b(Lcom/aadhk/restpos/ListTableActivity;)Lcom/aadhk/restpos/e/f;
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/aadhk/restpos/ListTableActivity;->x:Lcom/aadhk/restpos/e/f;

    return-object v0
.end method

.method private c()V
    .locals 2

    .prologue
    .line 334
    iget-object v0, p0, Lcom/aadhk/restpos/ListTableActivity;->l:Lcom/aadhk/restpos/f/l;

    invoke-virtual {v0}, Lcom/aadhk/restpos/f/l;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/aadhk/restpos/ListTableActivity;->o:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/aadhk/restpos/ListTableActivity;->o:Ljava/lang/String;

    iget-object v1, p0, Lcom/aadhk/restpos/ListTableActivity;->p:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/aadhk/product/library/c/f;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/aadhk/restpos/ListTableActivity;->l:Lcom/aadhk/restpos/f/l;

    invoke-virtual {v0}, Lcom/aadhk/restpos/f/l;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/aadhk/restpos/ListTableActivity;->o:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 335
    :cond_1
    invoke-virtual {p0}, Lcom/aadhk/restpos/ListTableActivity;->finish()V

    .line 336
    return-void

    .line 334
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/bugsense/trace/BugSenseHandler;->sendException(Ljava/lang/Exception;)V

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 430
    iget-object v0, p0, Lcom/aadhk/restpos/ListTableActivity;->v:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .prologue
    .line 434
    iget-object v0, p0, Lcom/aadhk/restpos/ListTableActivity;->r:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 327
    invoke-virtual {p0}, Lcom/aadhk/restpos/ListTableActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 328
    const/high16 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 329
    invoke-virtual {p0}, Lcom/aadhk/restpos/ListTableActivity;->finish()V

    .line 330
    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/ListTableActivity;->startActivity(Landroid/content/Intent;)V

    .line 331
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 143
    invoke-direct {p0}, Lcom/aadhk/restpos/ListTableActivity;->c()V

    .line 144
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter

    .prologue
    const v4, 0x9a2112

    const/4 v3, -0x1

    .line 80
    invoke-super {p0, p1}, Lcom/aadhk/restpos/POSActivity;->onCreate(Landroid/os/Bundle;)V

    .line 81
    invoke-virtual {p0}, Lcom/aadhk/restpos/ListTableActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 82
    const-string v0, "9fa2b19a"

    invoke-static {p0, v0}, Lcom/bugsense/trace/BugSenseHandler;->initAndStartSession(Landroid/content/Context;Ljava/lang/String;)V

    .line 83
    const v0, 0x7f090011

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/ListTableActivity;->setTitle(I)V

    .line 84
    new-instance v0, Lcom/aadhk/product/library/c/e;

    const-string v1, "a8lxybk98ib2i9x"

    const-string v2, "7kxlca8anbcr9uq"

    invoke-direct {v0, p0, v1, v2}, Lcom/aadhk/product/library/c/e;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/aadhk/restpos/ListTableActivity;->n:Lcom/aadhk/product/library/c/e;

    .line 85
    iget-object v0, p0, Lcom/aadhk/restpos/ListTableActivity;->n:Lcom/aadhk/product/library/c/e;

    invoke-virtual {v0}, Lcom/aadhk/product/library/c/e;->a()Lcom/dropbox/client2/DropboxAPI;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/ListTableActivity;->m:Lcom/dropbox/client2/DropboxAPI;

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/aadhk/restpos/f/d;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/aadhk/product/library/c/f;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_restpos.db"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/ListTableActivity;->p:Ljava/lang/String;

    .line 89
    const-string v0, "restpos.db"

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/ListTableActivity;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/ListTableActivity;->o:Ljava/lang/String;

    .line 90
    const-string v0, "restpos.db"

    iput-object v0, p0, Lcom/aadhk/restpos/ListTableActivity;->q:Ljava/lang/String;

    .line 92
    new-instance v0, Lcom/aadhk/restpos/f/l;

    invoke-direct {v0, p0}, Lcom/aadhk/restpos/f/l;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/aadhk/restpos/ListTableActivity;->l:Lcom/aadhk/restpos/f/l;

    .line 93
    invoke-static {}, Lcom/aadhk/restpos/b/f;->a()Lcom/aadhk/restpos/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/b/f;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/ListTableActivity;->r:Landroid/database/sqlite/SQLiteDatabase;

    .line 94
    new-instance v0, Lcom/aadhk/restpos/b/r;

    iget-object v1, p0, Lcom/aadhk/restpos/ListTableActivity;->r:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {v0, v1}, Lcom/aadhk/restpos/b/r;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 95
    iget-object v1, p0, Lcom/aadhk/restpos/ListTableActivity;->d:Lcom/aadhk/restpos/bean/User;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/User;->getAccount()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/aadhk/restpos/ListTableActivity;->v:Ljava/lang/String;

    .line 97
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/b/r;->b(I)Lcom/aadhk/restpos/bean/POSPrinterSetting;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/ListTableActivity;->w:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    .line 98
    new-instance v0, Lcom/aadhk/restpos/e/f;

    invoke-direct {v0, p0}, Lcom/aadhk/restpos/e/f;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/aadhk/restpos/ListTableActivity;->x:Lcom/aadhk/restpos/e/f;

    .line 100
    new-instance v0, Lcom/aadhk/restpos/f/a;

    invoke-direct {v0, p0}, Lcom/aadhk/restpos/f/a;-><init>(Landroid/content/Context;)V

    .line 101
    invoke-virtual {v0}, Lcom/aadhk/restpos/f/a;->d()Z

    .line 121
    invoke-virtual {v0}, Lcom/aadhk/restpos/f/a;->a()V

    .line 129
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 130
    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setId(I)V

    .line 131
    new-instance v1, Landroid/support/v7/app/ActionBar$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/support/v7/app/ActionBar$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/aadhk/restpos/ListTableActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 133
    if-nez p1, :cond_0

    .line 134
    invoke-virtual {p0}, Lcom/aadhk/restpos/ListTableActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 135
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 136
    new-instance v1, Lcom/aadhk/restpos/d/fs;

    invoke-direct {v1}, Lcom/aadhk/restpos/d/fs;-><init>()V

    invoke-virtual {v0, v4, v1}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 137
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 139
    :cond_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter

    .prologue
    const v2, 0x7f0b02a6

    .line 148
    invoke-virtual {p0}, Lcom/aadhk/restpos/ListTableActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0f0012

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 157
    const-string v0, "com.aadhk.restpos.full"

    invoke-static {p0, v0}, Lcom/aadhk/b/b;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    invoke-interface {p1, v2}, Landroid/view/Menu;->removeItem(I)V

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/aadhk/restpos/ListTableActivity;->d:Lcom/aadhk/restpos/bean/User;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/User;->getRole()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 161
    const v0, 0x7f0b02a4

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    .line 162
    const v0, 0x7f0b02a5

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    .line 163
    invoke-interface {p1, v2}, Landroid/view/Menu;->removeItem(I)V

    .line 165
    :cond_1
    invoke-virtual {p0}, Lcom/aadhk/restpos/ListTableActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/POSApp;

    invoke-virtual {v0}, Lcom/aadhk/restpos/POSApp;->d()Ljava/util/Map;

    move-result-object v1

    .line 166
    const/16 v0, 0x12c

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/RolePermission;

    iput-object v0, p0, Lcom/aadhk/restpos/ListTableActivity;->s:Lcom/aadhk/restpos/bean/RolePermission;

    .line 167
    const/16 v0, 0x67

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/RolePermission;

    iput-object v0, p0, Lcom/aadhk/restpos/ListTableActivity;->t:Lcom/aadhk/restpos/bean/RolePermission;

    .line 168
    const/16 v0, 0x68

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/RolePermission;

    iput-object v0, p0, Lcom/aadhk/restpos/ListTableActivity;->u:Lcom/aadhk/restpos/bean/RolePermission;

    .line 170
    iget-object v0, p0, Lcom/aadhk/restpos/ListTableActivity;->s:Lcom/aadhk/restpos/bean/RolePermission;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/RolePermission;->isShow()Z

    move-result v0

    if-nez v0, :cond_2

    .line 171
    const v0, 0x7f0b02a3

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    .line 173
    :cond_2
    iget-object v0, p0, Lcom/aadhk/restpos/ListTableActivity;->t:Lcom/aadhk/restpos/bean/RolePermission;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/RolePermission;->isShow()Z

    move-result v0

    if-nez v0, :cond_3

    .line 174
    const v0, 0x7f0b02a0

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    .line 176
    :cond_3
    iget-object v0, p0, Lcom/aadhk/restpos/ListTableActivity;->u:Lcom/aadhk/restpos/bean/RolePermission;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/RolePermission;->isShow()Z

    move-result v0

    if-nez v0, :cond_4

    .line 177
    const v0, 0x7f0b02a1

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    .line 179
    :cond_4
    invoke-super {p0, p1}, Lcom/aadhk/restpos/POSActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 439
    invoke-static {}, Lcom/aadhk/restpos/b/f;->a()Lcom/aadhk/restpos/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/b/f;->c()V

    .line 440
    invoke-super {p0}, Lcom/aadhk/restpos/POSActivity;->onDestroy()V

    .line 441
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 184
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const v3, 0x7f0b029d

    if-ne v2, v3, :cond_1

    .line 185
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/aadhk/restpos/DeliveryActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 186
    const-string v2, "userAccount"

    iget-object v3, p0, Lcom/aadhk/restpos/ListTableActivity;->v:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 187
    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/ListTableActivity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    :goto_0
    move v0, v1

    .line 297
    :goto_1
    return v0

    .line 188
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const v3, 0x7f0b02a1

    if-ne v2, v3, :cond_4

    .line 189
    const-string v0, "com.aadhk.restpos.feature.payinout"

    invoke-static {p0, v0}, Lcom/aadhk/b/b;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "com.aadhk.restpos.full"

    invoke-static {p0, v0}, Lcom/aadhk/b/b;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 190
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/aadhk/restpos/PurchaseActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 191
    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/ListTableActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 193
    :cond_2
    iget-object v0, p0, Lcom/aadhk/restpos/ListTableActivity;->t:Lcom/aadhk/restpos/bean/RolePermission;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/RolePermission;->isManagerPermission()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 194
    new-instance v0, Lcom/aadhk/restpos/c/au;

    invoke-direct {v0, p0}, Lcom/aadhk/restpos/c/au;-><init>(Landroid/content/Context;)V

    .line 195
    new-instance v2, Lcom/aadhk/restpos/ad;

    invoke-direct {v2, p0}, Lcom/aadhk/restpos/ad;-><init>(Lcom/aadhk/restpos/ListTableActivity;)V

    invoke-virtual {v0, v2}, Lcom/aadhk/restpos/c/au;->a(Lcom/aadhk/restpos/c/aw;)V

    .line 202
    invoke-virtual {v0}, Lcom/aadhk/restpos/c/au;->show()V

    goto :goto_0

    .line 204
    :cond_3
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/aadhk/restpos/PayInOutActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 205
    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/ListTableActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 208
    :cond_4
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const v3, 0x7f0b02a0

    if-ne v2, v3, :cond_8

    .line 209
    iget-object v2, p0, Lcom/aadhk/restpos/ListTableActivity;->w:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    if-eqz v2, :cond_7

    .line 210
    iget-object v0, p0, Lcom/aadhk/restpos/ListTableActivity;->t:Lcom/aadhk/restpos/bean/RolePermission;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/RolePermission;->isManagerPermission()Z

    move-result v0

    if-nez v0, :cond_6

    .line 211
    new-instance v0, Lcom/aadhk/product/library/a/a;

    iget-object v2, p0, Lcom/aadhk/restpos/ListTableActivity;->a:Lcom/aadhk/product/library/a/b;

    const v3, 0x7f090178

    invoke-virtual {p0, v3}, Lcom/aadhk/restpos/ListTableActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, p0, v2, v3}, Lcom/aadhk/product/library/a/a;-><init>(Landroid/content/Context;Lcom/aadhk/product/library/a/b;Ljava/lang/String;)V

    .line 212
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v2, v3, :cond_5

    .line 213
    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v2, v4}, Lcom/aadhk/product/library/a/a;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 215
    :cond_5
    invoke-virtual {v0, v4}, Lcom/aadhk/product/library/a/a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 218
    :cond_6
    new-instance v0, Lcom/aadhk/restpos/c/au;

    invoke-direct {v0, p0}, Lcom/aadhk/restpos/c/au;-><init>(Landroid/content/Context;)V

    .line 219
    new-instance v2, Lcom/aadhk/restpos/ae;

    invoke-direct {v2, p0}, Lcom/aadhk/restpos/ae;-><init>(Lcom/aadhk/restpos/ListTableActivity;)V

    invoke-virtual {v0, v2}, Lcom/aadhk/restpos/c/au;->a(Lcom/aadhk/restpos/c/aw;)V

    .line 230
    invoke-virtual {v0}, Lcom/aadhk/restpos/c/au;->show()V

    goto/16 :goto_0

    .line 233
    :cond_7
    const v2, 0x7f090204

    invoke-static {p0, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 235
    :cond_8
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const v3, 0x7f0b02a3

    if-ne v2, v3, :cond_a

    .line 236
    iget-object v1, p0, Lcom/aadhk/restpos/ListTableActivity;->s:Lcom/aadhk/restpos/bean/RolePermission;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/RolePermission;->isManagerPermission()Z

    move-result v1

    if-nez v1, :cond_9

    .line 237
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 238
    const-class v2, Lcom/aadhk/restpos/ReportListActivity;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 239
    invoke-virtual {p0, v1}, Lcom/aadhk/restpos/ListTableActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 241
    :cond_9
    new-instance v1, Lcom/aadhk/restpos/c/au;

    invoke-direct {v1, p0}, Lcom/aadhk/restpos/c/au;-><init>(Landroid/content/Context;)V

    .line 242
    new-instance v2, Lcom/aadhk/restpos/af;

    invoke-direct {v2, p0}, Lcom/aadhk/restpos/af;-><init>(Lcom/aadhk/restpos/ListTableActivity;)V

    invoke-virtual {v1, v2}, Lcom/aadhk/restpos/c/au;->a(Lcom/aadhk/restpos/c/aw;)V

    .line 250
    invoke-virtual {v1}, Lcom/aadhk/restpos/c/au;->show()V

    goto/16 :goto_1

    .line 253
    :cond_a
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const v3, 0x7f0b02a2

    if-ne v2, v3, :cond_c

    .line 254
    const-string v0, "com.aadhk.restpos.report.sales"

    invoke-static {p0, v0}, Lcom/aadhk/b/b;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string v0, "com.aadhk.restpos.full"

    invoke-static {p0, v0}, Lcom/aadhk/b/b;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 255
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/aadhk/restpos/PurchaseActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 256
    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/ListTableActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 258
    :cond_b
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/aadhk/restpos/ReceiptListActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 259
    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/ListTableActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 261
    :cond_c
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const v3, 0x7f0b02a5

    if-ne v2, v3, :cond_d

    .line 262
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-class v2, Lcom/aadhk/restpos/DatabaseActivity;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/aadhk/restpos/ListTableActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 264
    :cond_d
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const v3, 0x7f0b029f

    if-ne v2, v3, :cond_e

    .line 265
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 266
    const-class v2, Lcom/aadhk/restpos/ListOrdersActivity;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 267
    invoke-virtual {p0, v1}, Lcom/aadhk/restpos/ListTableActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 269
    :cond_e
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const v3, 0x7f0b02a4

    if-ne v2, v3, :cond_f

    .line 270
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-class v3, Lcom/aadhk/restpos/SettingActivity;

    invoke-virtual {v2, p0, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {p0, v2, v1}, Lcom/aadhk/restpos/ListTableActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1

    .line 272
    :cond_f
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const v3, 0x7f0b02a6

    if-ne v2, v3, :cond_10

    .line 273
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/aadhk/restpos/PurchaseActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 274
    invoke-virtual {p0, v1}, Lcom/aadhk/restpos/ListTableActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 279
    :cond_10
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const v3, 0x7f0b02a7

    if-ne v2, v3, :cond_11

    .line 280
    invoke-direct {p0}, Lcom/aadhk/restpos/ListTableActivity;->c()V

    goto/16 :goto_1

    .line 282
    :cond_11
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const v3, 0x7f0b029e

    if-ne v2, v3, :cond_0

    .line 284
    new-instance v2, Lcom/aadhk/restpos/bean/Order;

    invoke-direct {v2}, Lcom/aadhk/restpos/bean/Order;-><init>()V

    .line 285
    const-wide/16 v3, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/aadhk/restpos/bean/Order;->setTableId(J)V

    .line 286
    invoke-static {}, Lcom/aadhk/restpos/f/i;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/aadhk/restpos/bean/Order;->setStartTime(Ljava/lang/String;)V

    .line 287
    invoke-virtual {v2, v0}, Lcom/aadhk/restpos/bean/Order;->setPersonNum(I)V

    .line 288
    invoke-virtual {p0}, Lcom/aadhk/restpos/ListTableActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f090307

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/aadhk/restpos/bean/Order;->setTableName(Ljava/lang/String;)V

    .line 289
    iget-object v0, p0, Lcom/aadhk/restpos/ListTableActivity;->d:Lcom/aadhk/restpos/bean/User;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/User;->getAccount()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/aadhk/restpos/bean/Order;->setWaiterName(Ljava/lang/String;)V

    .line 290
    iget-object v0, p0, Lcom/aadhk/restpos/ListTableActivity;->l:Lcom/aadhk/restpos/f/l;

    invoke-virtual {v0}, Lcom/aadhk/restpos/f/l;->r()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 291
    iget-object v0, p0, Lcom/aadhk/restpos/ListTableActivity;->l:Lcom/aadhk/restpos/f/l;

    invoke-virtual {v0}, Lcom/aadhk/restpos/f/l;->q()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/aadhk/restpos/bean/Order;->setOrderNum(Ljava/lang/String;)V

    .line 295
    :goto_2
    invoke-static {p0, v2, v1}, Lcom/aadhk/restpos/f/k;->a(Landroid/app/Activity;Lcom/aadhk/restpos/bean/Order;Z)V

    goto/16 :goto_0

    .line 293
    :cond_12
    iget-object v0, p0, Lcom/aadhk/restpos/ListTableActivity;->l:Lcom/aadhk/restpos/f/l;

    invoke-virtual {v0}, Lcom/aadhk/restpos/f/l;->r()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/aadhk/restpos/f/j;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/aadhk/restpos/bean/Order;->setOrderNum(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 352
    invoke-super {p0}, Lcom/aadhk/restpos/POSActivity;->onStart()V

    .line 353
    invoke-static {}, Lcom/google/analytics/tracking/android/EasyTracker;->getInstance()Lcom/google/analytics/tracking/android/EasyTracker;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/analytics/tracking/android/EasyTracker;->activityStart(Landroid/app/Activity;)V

    .line 354
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 358
    invoke-super {p0}, Lcom/aadhk/restpos/POSActivity;->onStop()V

    .line 359
    invoke-static {}, Lcom/google/analytics/tracking/android/EasyTracker;->getInstance()Lcom/google/analytics/tracking/android/EasyTracker;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/analytics/tracking/android/EasyTracker;->activityStop(Landroid/app/Activity;)V

    .line 360
    return-void
.end method
