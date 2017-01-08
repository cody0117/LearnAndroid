.class public Lcom/aadhk/restpos/TableListActivity;
.super Lcom/aadhk/restpos/POSActivity;
.source "ProGuard"

# interfaces
.implements Landroid/support/v7/widget/PopupMenu$OnMenuItemClickListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field private A:Lcom/aadhk/restpos/bean/POSPrinterSetting;

.field private B:Lcom/aadhk/restpos/e/g;

.field private C:Landroid/widget/Spinner;

.field private D:Z

.field private E:Lcom/aadhk/restpos/d/ke;

.field private F:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/TableGroup;",
            ">;"
        }
    .end annotation
.end field

.field private G:I

.field private H:Landroid/widget/Button;

.field private I:Landroid/widget/Button;

.field private J:Landroid/widget/Button;

.field private K:Landroid/widget/Button;

.field private L:Landroid/widget/Button;

.field private M:Landroid/widget/Button;

.field a:Lcom/aadhk/product/library/a/c;

.field private o:Lcom/aadhk/restpos/util/r;

.field private p:Lcom/dropbox/client2/DropboxAPI;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/dropbox/client2/DropboxAPI",
            "<",
            "Lcom/dropbox/client2/android/AndroidAuthSession;",
            ">;"
        }
    .end annotation
.end field

.field private q:Lcom/aadhk/product/library/c/e;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private u:Lcom/aadhk/restpos/g/ac;

.field private v:Lcom/aadhk/restpos/g/m;

.field private w:Lcom/aadhk/restpos/bean/RolePermission;

.field private x:Lcom/aadhk/restpos/bean/RolePermission;

.field private y:Lcom/aadhk/restpos/bean/RolePermission;

.field private z:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/aadhk/restpos/POSActivity;-><init>()V

    .line 478
    new-instance v0, Lcom/aadhk/restpos/do;

    invoke-direct {v0, p0}, Lcom/aadhk/restpos/do;-><init>(Lcom/aadhk/restpos/TableListActivity;)V

    iput-object v0, p0, Lcom/aadhk/restpos/TableListActivity;->a:Lcom/aadhk/product/library/a/c;

    .line 571
    return-void
.end method

.method static synthetic a(Lcom/aadhk/restpos/TableListActivity;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 61
    iput p1, p0, Lcom/aadhk/restpos/TableListActivity;->G:I

    return p1
.end method

.method static synthetic a(Lcom/aadhk/restpos/TableListActivity;)Lcom/aadhk/restpos/g/m;
    .locals 1
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lcom/aadhk/restpos/TableListActivity;->v:Lcom/aadhk/restpos/g/m;

    return-object v0
.end method

.method static synthetic a(Lcom/aadhk/restpos/TableListActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 61
    iput-object p1, p0, Lcom/aadhk/restpos/TableListActivity;->F:Ljava/util/List;

    return-object p1
.end method

.method static synthetic b(Lcom/aadhk/restpos/TableListActivity;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lcom/aadhk/restpos/TableListActivity;->F:Ljava/util/List;

    return-object v0
.end method

.method static synthetic c(Lcom/aadhk/restpos/TableListActivity;)Landroid/widget/Spinner;
    .locals 1
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lcom/aadhk/restpos/TableListActivity;->C:Landroid/widget/Spinner;

    return-object v0
.end method

.method private c()V
    .locals 3

    .prologue
    .line 281
    iget-object v0, p0, Lcom/aadhk/restpos/TableListActivity;->A:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->isEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 282
    iget-object v0, p0, Lcom/aadhk/restpos/TableListActivity;->x:Lcom/aadhk/restpos/bean/RolePermission;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/RolePermission;->isManagerPermission()Z

    move-result v0

    if-nez v0, :cond_0

    .line 283
    new-instance v0, Lcom/aadhk/product/library/a/d;

    iget-object v1, p0, Lcom/aadhk/restpos/TableListActivity;->a:Lcom/aadhk/product/library/a/c;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/aadhk/product/library/a/d;-><init>(Lcom/aadhk/product/library/a/c;Landroid/content/Context;B)V

    .line 284
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/product/library/a/d;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 299
    :goto_0
    return-void

    .line 286
    :cond_0
    new-instance v0, Lcom/aadhk/restpos/c/bl;

    invoke-direct {v0, p0}, Lcom/aadhk/restpos/c/bl;-><init>(Landroid/content/Context;)V

    .line 287
    new-instance v1, Lcom/aadhk/restpos/dl;

    invoke-direct {v1, p0}, Lcom/aadhk/restpos/dl;-><init>(Lcom/aadhk/restpos/TableListActivity;)V

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/bl;->a(Lcom/aadhk/restpos/c/bm;)V

    .line 294
    invoke-virtual {v0}, Lcom/aadhk/restpos/c/bl;->show()V

    goto :goto_0

    .line 297
    :cond_1
    const v0, 0x7f080242

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method static synthetic d(Lcom/aadhk/restpos/TableListActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 61
    iget v0, p0, Lcom/aadhk/restpos/TableListActivity;->G:I

    return v0
.end method

.method private d()V
    .locals 2

    .prologue
    .line 513
    iget-object v0, p0, Lcom/aadhk/restpos/TableListActivity;->o:Lcom/aadhk/restpos/util/r;

    invoke-virtual {v0}, Lcom/aadhk/restpos/util/r;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/aadhk/restpos/TableListActivity;->r:Ljava/lang/String;

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
    iget-object v0, p0, Lcom/aadhk/restpos/TableListActivity;->r:Ljava/lang/String;

    iget-object v1, p0, Lcom/aadhk/restpos/TableListActivity;->s:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/aadhk/product/library/c/f;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/aadhk/restpos/TableListActivity;->o:Lcom/aadhk/restpos/util/r;

    invoke-virtual {v0}, Lcom/aadhk/restpos/util/r;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/aadhk/restpos/TableListActivity;->r:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 514
    :cond_1
    invoke-virtual {p0}, Lcom/aadhk/restpos/TableListActivity;->finish()V

    .line 515
    return-void

    .line 513
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/bugsense/trace/BugSenseHandler;->sendException(Ljava/lang/Exception;)V

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic e(Lcom/aadhk/restpos/TableListActivity;)Lcom/aadhk/restpos/g/ac;
    .locals 1
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lcom/aadhk/restpos/TableListActivity;->u:Lcom/aadhk/restpos/g/ac;

    return-object v0
.end method

.method static synthetic f(Lcom/aadhk/restpos/TableListActivity;)Lcom/aadhk/restpos/d/ke;
    .locals 1
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lcom/aadhk/restpos/TableListActivity;->E:Lcom/aadhk/restpos/d/ke;

    return-object v0
.end method

.method static synthetic g(Lcom/aadhk/restpos/TableListActivity;)Lcom/aadhk/restpos/bean/POSPrinterSetting;
    .locals 1
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lcom/aadhk/restpos/TableListActivity;->A:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    return-object v0
.end method

.method static synthetic h(Lcom/aadhk/restpos/TableListActivity;)Lcom/aadhk/restpos/e/g;
    .locals 1
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lcom/aadhk/restpos/TableListActivity;->B:Lcom/aadhk/restpos/e/g;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 609
    iget-object v0, p0, Lcom/aadhk/restpos/TableListActivity;->z:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Lcom/aadhk/restpos/g/ac;
    .locals 1

    .prologue
    .line 613
    iget-object v0, p0, Lcom/aadhk/restpos/TableListActivity;->u:Lcom/aadhk/restpos/g/ac;

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 506
    invoke-virtual {p0}, Lcom/aadhk/restpos/TableListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 507
    const/high16 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 508
    invoke-virtual {p0}, Lcom/aadhk/restpos/TableListActivity;->finish()V

    .line 509
    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/TableListActivity;->startActivity(Landroid/content/Intent;)V

    .line 510
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 369
    invoke-direct {p0}, Lcom/aadhk/restpos/TableListActivity;->d()V

    .line 370
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter

    .prologue
    const v5, 0x7f090326

    const/4 v4, 0x1

    .line 252
    iget-object v0, p0, Lcom/aadhk/restpos/TableListActivity;->H:Landroid/widget/Button;

    if-ne p1, v0, :cond_1

    .line 253
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/aadhk/restpos/DeliveryActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 254
    const-string v1, "userAccount"

    iget-object v2, p0, Lcom/aadhk/restpos/TableListActivity;->z:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 255
    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/TableListActivity;->startActivity(Landroid/content/Intent;)V

    .line 278
    :cond_0
    :goto_0
    return-void

    .line 256
    :cond_1
    iget-object v0, p0, Lcom/aadhk/restpos/TableListActivity;->I:Landroid/widget/Button;

    if-ne p1, v0, :cond_2

    .line 258
    new-instance v0, Lcom/aadhk/restpos/bean/Order;

    invoke-direct {v0}, Lcom/aadhk/restpos/bean/Order;-><init>()V

    .line 259
    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/restpos/bean/Order;->setTableId(J)V

    .line 260
    invoke-static {}, Lcom/aadhk/restpos/util/o;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/Order;->setOrderTime(Ljava/lang/String;)V

    .line 261
    invoke-virtual {v0, v4}, Lcom/aadhk/restpos/bean/Order;->setPersonNum(I)V

    .line 262
    const v1, 0x7f080367

    invoke-virtual {p0, v1}, Lcom/aadhk/restpos/TableListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/Order;->setTableName(Ljava/lang/String;)V

    .line 263
    iget-object v1, p0, Lcom/aadhk/restpos/TableListActivity;->d:Lcom/aadhk/restpos/bean/User;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/User;->getAccount()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/Order;->setWaiterName(Ljava/lang/String;)V

    .line 264
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/aadhk/restpos/util/q;->a(Landroid/app/Activity;Lcom/aadhk/restpos/bean/Order;Lcom/aadhk/restpos/bean/Customer;Z)V

    goto :goto_0

    .line 265
    :cond_2
    iget-object v0, p0, Lcom/aadhk/restpos/TableListActivity;->J:Landroid/widget/Button;

    if-ne p1, v0, :cond_3

    .line 266
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 267
    const-class v1, Lcom/aadhk/restpos/OrderListActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 268
    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/TableListActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 269
    :cond_3
    iget-object v0, p0, Lcom/aadhk/restpos/TableListActivity;->L:Landroid/widget/Button;

    if-ne p1, v0, :cond_4

    .line 270
    invoke-direct {p0}, Lcom/aadhk/restpos/TableListActivity;->c()V

    goto :goto_0

    .line 271
    :cond_4
    iget-object v0, p0, Lcom/aadhk/restpos/TableListActivity;->K:Landroid/widget/Button;

    if-ne p1, v0, :cond_5

    .line 272
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 273
    const-class v1, Lcom/aadhk/restpos/ReservationActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 274
    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/TableListActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 275
    :cond_5
    iget-object v0, p0, Lcom/aadhk/restpos/TableListActivity;->M:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/aadhk/restpos/TableListActivity;->M:Landroid/widget/Button;

    new-instance v1, Landroid/support/v7/widget/PopupMenu;

    invoke-direct {v1, p0, v0}, Landroid/support/v7/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    invoke-virtual {v1, p0}, Landroid/support/v7/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/support/v7/widget/PopupMenu$OnMenuItemClickListener;)V

    invoke-virtual {v1}, Landroid/support/v7/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v2, 0x7f0f0017

    invoke-virtual {v1}, Landroid/support/v7/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    invoke-virtual {v1}, Landroid/support/v7/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v2

    const v0, 0x7f090325

    invoke-interface {v2, v0}, Landroid/view/Menu;->removeItem(I)V

    const-string v0, "com.aadhk.restpos.full"

    invoke-static {p0, v0}, Lcom/aadhk/b/b;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v2, v5}, Landroid/view/Menu;->removeItem(I)V

    :cond_6
    iget-object v0, p0, Lcom/aadhk/restpos/TableListActivity;->d:Lcom/aadhk/restpos/bean/User;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/User;->getRole()I

    move-result v0

    if-le v0, v4, :cond_7

    const v0, 0x7f090312

    invoke-interface {v2, v0}, Landroid/view/Menu;->removeItem(I)V

    const v0, 0x7f090324

    invoke-interface {v2, v0}, Landroid/view/Menu;->removeItem(I)V

    invoke-interface {v2, v5}, Landroid/view/Menu;->removeItem(I)V

    :cond_7
    invoke-virtual {p0}, Lcom/aadhk/restpos/TableListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/POSApp;

    invoke-virtual {v0}, Lcom/aadhk/restpos/POSApp;->e()Ljava/util/Map;

    move-result-object v3

    const/16 v0, 0x12c

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/RolePermission;

    iput-object v0, p0, Lcom/aadhk/restpos/TableListActivity;->w:Lcom/aadhk/restpos/bean/RolePermission;

    const/16 v0, 0x67

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/RolePermission;

    iput-object v0, p0, Lcom/aadhk/restpos/TableListActivity;->x:Lcom/aadhk/restpos/bean/RolePermission;

    const/16 v0, 0x68

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/RolePermission;

    iput-object v0, p0, Lcom/aadhk/restpos/TableListActivity;->y:Lcom/aadhk/restpos/bean/RolePermission;

    iget-object v0, p0, Lcom/aadhk/restpos/TableListActivity;->w:Lcom/aadhk/restpos/bean/RolePermission;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/RolePermission;->isShow()Z

    move-result v0

    if-nez v0, :cond_8

    const v0, 0x7f090323

    invoke-interface {v2, v0}, Landroid/view/Menu;->removeItem(I)V

    :cond_8
    invoke-virtual {v1}, Landroid/support/v7/widget/PopupMenu;->show()V

    goto/16 :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter

    .prologue
    const/16 v4, 0x8

    const/4 v1, 0x0

    .line 84
    invoke-super {p0, p1}, Lcom/aadhk/restpos/POSActivity;->onCreate(Landroid/os/Bundle;)V

    .line 86
    invoke-virtual {p0}, Lcom/aadhk/restpos/TableListActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->hide()V

    .line 87
    const-string v0, "9fa2b19a"

    invoke-static {p0, v0}, Lcom/bugsense/trace/BugSenseHandler;->initAndStartSession(Landroid/content/Context;Ljava/lang/String;)V

    .line 89
    new-instance v0, Lcom/aadhk/product/library/c/e;

    const-string v2, "a8lxybk98ib2i9x"

    const-string v3, "7kxlca8anbcr9uq"

    invoke-direct {v0, p0, v2, v3}, Lcom/aadhk/product/library/c/e;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/aadhk/restpos/TableListActivity;->q:Lcom/aadhk/product/library/c/e;

    .line 90
    iget-object v0, p0, Lcom/aadhk/restpos/TableListActivity;->q:Lcom/aadhk/product/library/c/e;

    invoke-virtual {v0}, Lcom/aadhk/product/library/c/e;->a()Lcom/dropbox/client2/DropboxAPI;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/TableListActivity;->p:Lcom/dropbox/client2/DropboxAPI;

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/aadhk/restpos/util/f;->e:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/aadhk/product/library/c/f;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "_restpos.db"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/TableListActivity;->s:Ljava/lang/String;

    .line 94
    const-string v0, "restpos.db"

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/TableListActivity;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/TableListActivity;->r:Ljava/lang/String;

    .line 95
    const-string v0, "restpos.db"

    iput-object v0, p0, Lcom/aadhk/restpos/TableListActivity;->t:Ljava/lang/String;

    .line 97
    new-instance v0, Lcom/aadhk/restpos/util/r;

    invoke-direct {v0, p0}, Lcom/aadhk/restpos/util/r;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/aadhk/restpos/TableListActivity;->o:Lcom/aadhk/restpos/util/r;

    .line 98
    new-instance v0, Lcom/aadhk/restpos/g/ac;

    invoke-direct {v0, p0}, Lcom/aadhk/restpos/g/ac;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/aadhk/restpos/TableListActivity;->u:Lcom/aadhk/restpos/g/ac;

    .line 99
    new-instance v0, Lcom/aadhk/restpos/g/m;

    invoke-direct {v0, p0}, Lcom/aadhk/restpos/g/m;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/aadhk/restpos/TableListActivity;->v:Lcom/aadhk/restpos/g/m;

    .line 100
    iget-object v0, p0, Lcom/aadhk/restpos/TableListActivity;->d:Lcom/aadhk/restpos/bean/User;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/User;->getAccount()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/TableListActivity;->z:Ljava/lang/String;

    .line 102
    invoke-virtual {p0}, Lcom/aadhk/restpos/TableListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/POSApp;

    invoke-virtual {v0}, Lcom/aadhk/restpos/POSApp;->k()Lcom/aadhk/restpos/bean/POSPrinterSetting;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/TableListActivity;->A:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    .line 103
    new-instance v0, Lcom/aadhk/restpos/e/g;

    invoke-direct {v0, p0}, Lcom/aadhk/restpos/e/g;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/aadhk/restpos/TableListActivity;->B:Lcom/aadhk/restpos/e/g;

    .line 105
    new-instance v0, Lcom/aadhk/restpos/util/a;

    invoke-direct {v0, p0}, Lcom/aadhk/restpos/util/a;-><init>(Landroid/content/Context;)V

    .line 106
    invoke-virtual {v0}, Lcom/aadhk/restpos/util/a;->a()V

    .line 129
    const v0, 0x7f030028

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/TableListActivity;->setContentView(I)V

    .line 130
    const v0, 0x7f090060

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/TableListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 131
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/aadhk/restpos/TableListActivity;->D:Z

    .line 133
    invoke-virtual {p0}, Lcom/aadhk/restpos/TableListActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 134
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 135
    new-instance v2, Lcom/aadhk/restpos/d/ke;

    invoke-direct {v2}, Lcom/aadhk/restpos/d/ke;-><init>()V

    iput-object v2, p0, Lcom/aadhk/restpos/TableListActivity;->E:Lcom/aadhk/restpos/d/ke;

    .line 136
    const v2, 0x7f09005f

    iget-object v3, p0, Lcom/aadhk/restpos/TableListActivity;->E:Lcom/aadhk/restpos/d/ke;

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 137
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 139
    const v0, 0x7f09007e

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/TableListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/TableListActivity;->H:Landroid/widget/Button;

    const v0, 0x7f09007f

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/TableListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/TableListActivity;->I:Landroid/widget/Button;

    const v0, 0x7f090080

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/TableListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/TableListActivity;->J:Landroid/widget/Button;

    const v0, 0x7f090081

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/TableListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/TableListActivity;->K:Landroid/widget/Button;

    const v0, 0x7f090082

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/TableListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/TableListActivity;->L:Landroid/widget/Button;

    const v0, 0x7f090083

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/TableListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/TableListActivity;->M:Landroid/widget/Button;

    const v0, 0x7f09007d

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/TableListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/aadhk/restpos/TableListActivity;->C:Landroid/widget/Spinner;

    iget-object v0, p0, Lcom/aadhk/restpos/TableListActivity;->C:Landroid/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object v0, p0, Lcom/aadhk/restpos/TableListActivity;->H:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/aadhk/restpos/TableListActivity;->I:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/aadhk/restpos/TableListActivity;->J:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/aadhk/restpos/TableListActivity;->K:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/aadhk/restpos/TableListActivity;->L:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/aadhk/restpos/TableListActivity;->M:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/aadhk/restpos/TableListActivity;->K:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    iget-boolean v0, p0, Lcom/aadhk/restpos/TableListActivity;->D:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/aadhk/restpos/TableListActivity;->L:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/aadhk/restpos/TableListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/POSApp;

    invoke-virtual {v0}, Lcom/aadhk/restpos/POSApp;->e()Ljava/util/Map;

    move-result-object v0

    const/16 v2, 0x67

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/RolePermission;

    iput-object v0, p0, Lcom/aadhk/restpos/TableListActivity;->x:Lcom/aadhk/restpos/bean/RolePermission;

    iget-object v0, p0, Lcom/aadhk/restpos/TableListActivity;->x:Lcom/aadhk/restpos/bean/RolePermission;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/RolePermission;->isShow()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/aadhk/restpos/TableListActivity;->L:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 140
    :cond_1
    new-instance v0, Lcom/aadhk/product/library/a/d;

    new-instance v2, Lcom/aadhk/restpos/dq;

    invoke-direct {v2, p0, v1}, Lcom/aadhk/restpos/dq;-><init>(Lcom/aadhk/restpos/TableListActivity;B)V

    invoke-direct {v0, v2, p0, v1}, Lcom/aadhk/product/library/a/d;-><init>(Lcom/aadhk/product/library/a/c;Landroid/content/Context;B)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/product/library/a/d;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 141
    return-void

    :cond_2
    move v0, v1

    .line 131
    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 618
    iget-object v0, p0, Lcom/aadhk/restpos/TableListActivity;->u:Lcom/aadhk/restpos/g/ac;

    invoke-static {}, Lcom/aadhk/restpos/b/f;->a()Lcom/aadhk/restpos/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/b/f;->c()V

    .line 619
    invoke-super {p0}, Lcom/aadhk/restpos/POSActivity;->onDestroy()V

    .line 620
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 211
    iget-object v0, p0, Lcom/aadhk/restpos/TableListActivity;->F:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/TableGroup;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/TableGroup;->getTableGroupId()I

    move-result v0

    iput v0, p0, Lcom/aadhk/restpos/TableListActivity;->G:I

    .line 212
    new-instance v0, Lcom/aadhk/product/library/a/d;

    new-instance v1, Lcom/aadhk/restpos/dp;

    iget v2, p0, Lcom/aadhk/restpos/TableListActivity;->G:I

    invoke-direct {v1, p0, v2}, Lcom/aadhk/restpos/dp;-><init>(Lcom/aadhk/restpos/TableListActivity;I)V

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/aadhk/product/library/a/d;-><init>(Lcom/aadhk/product/library/a/c;Landroid/content/Context;B)V

    .line 213
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/product/library/a/d;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 214
    return-void
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 417
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const v3, 0x7f090082

    if-ne v2, v3, :cond_1

    .line 418
    invoke-direct {p0}, Lcom/aadhk/restpos/TableListActivity;->c()V

    :cond_0
    move v0, v1

    .line 448
    :goto_0
    return v0

    .line 422
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const v3, 0x7f090321

    if-ne v2, v3, :cond_5

    .line 423
    const-string v1, "com.aadhk.restpos.report.sales"

    invoke-static {p0, v1}, Lcom/aadhk/b/b;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "com.aadhk.restpos.full"

    invoke-static {p0, v1}, Lcom/aadhk/b/b;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_2
    iget-object v1, p0, Lcom/aadhk/restpos/TableListActivity;->x:Lcom/aadhk/restpos/bean/RolePermission;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/RolePermission;->isManagerPermission()Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Lcom/aadhk/restpos/c/bl;

    invoke-direct {v1, p0}, Lcom/aadhk/restpos/c/bl;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/aadhk/restpos/dm;

    invoke-direct {v2, p0}, Lcom/aadhk/restpos/dm;-><init>(Lcom/aadhk/restpos/TableListActivity;)V

    invoke-virtual {v1, v2}, Lcom/aadhk/restpos/c/bl;->a(Lcom/aadhk/restpos/c/bm;)V

    invoke-virtual {v1}, Lcom/aadhk/restpos/c/bl;->show()V

    goto :goto_0

    :cond_3
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/aadhk/restpos/PayInOutActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/aadhk/restpos/TableListActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_4
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/aadhk/restpos/PurchaseActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/aadhk/restpos/TableListActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 425
    :cond_5
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const v3, 0x7f090322

    if-ne v2, v3, :cond_8

    .line 426
    const-string v1, "com.aadhk.restpos.report.sales"

    invoke-static {p0, v1}, Lcom/aadhk/b/b;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "com.aadhk.restpos.full"

    invoke-static {p0, v1}, Lcom/aadhk/b/b;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_6
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/aadhk/restpos/ReceiptListActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/aadhk/restpos/TableListActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_7
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/aadhk/restpos/PurchaseActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/aadhk/restpos/TableListActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 428
    :cond_8
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const v3, 0x7f090323

    if-ne v2, v3, :cond_a

    .line 429
    iget-object v1, p0, Lcom/aadhk/restpos/TableListActivity;->w:Lcom/aadhk/restpos/bean/RolePermission;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/RolePermission;->isManagerPermission()Z

    move-result v1

    if-nez v1, :cond_9

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-class v2, Lcom/aadhk/restpos/ReportListActivity;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/aadhk/restpos/TableListActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_9
    new-instance v1, Lcom/aadhk/restpos/c/bl;

    invoke-direct {v1, p0}, Lcom/aadhk/restpos/c/bl;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/aadhk/restpos/dn;

    invoke-direct {v2, p0}, Lcom/aadhk/restpos/dn;-><init>(Lcom/aadhk/restpos/TableListActivity;)V

    invoke-virtual {v1, v2}, Lcom/aadhk/restpos/c/bl;->a(Lcom/aadhk/restpos/c/bm;)V

    invoke-virtual {v1}, Lcom/aadhk/restpos/c/bl;->show()V

    goto/16 :goto_0

    .line 431
    :cond_a
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const v3, 0x7f090312

    if-ne v2, v3, :cond_b

    .line 432
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-class v3, Lcom/aadhk/restpos/SettingActivity;

    invoke-virtual {v2, p0, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {p0, v2, v1}, Lcom/aadhk/restpos/TableListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 434
    :cond_b
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const v3, 0x7f090324

    if-ne v2, v3, :cond_c

    .line 435
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-class v2, Lcom/aadhk/restpos/DatabaseActivity;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/aadhk/restpos/TableListActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 437
    :cond_c
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const v3, 0x7f090325

    if-ne v2, v3, :cond_d

    .line 438
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-class v2, Lcom/aadhk/restpos/ServerActivity;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/aadhk/restpos/TableListActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 440
    :cond_d
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const v3, 0x7f090326

    if-ne v2, v3, :cond_e

    .line 441
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/aadhk/restpos/PurchaseActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 442
    invoke-virtual {p0, v1}, Lcom/aadhk/restpos/TableListActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 444
    :cond_e
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const v3, 0x7f090327

    if-ne v2, v3, :cond_0

    .line 445
    invoke-direct {p0}, Lcom/aadhk/restpos/TableListActivity;->d()V

    goto/16 :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 218
    return-void
.end method
