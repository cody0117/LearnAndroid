.class public Lcom/aadhk/restpos/PayInOutActivity;
.super Lcom/aadhk/restpos/POSActivity;
.source "ProGuard"


# instance fields
.field private a:Landroid/support/v4/app/FragmentManager;

.field private o:I

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/ReportItem;",
            ">;"
        }
    .end annotation
.end field

.field private s:Lcom/aadhk/restpos/bean/POSPrinterSetting;

.field private t:Ljava/lang/String;

.field private u:Ljava/lang/String;

.field private v:Ljava/lang/String;

.field private w:Lcom/aadhk/restpos/g/q;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/aadhk/restpos/POSActivity;-><init>()V

    .line 208
    return-void
.end method

.method static synthetic a(Lcom/aadhk/restpos/PayInOutActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 31
    const/4 v0, 0x5

    iput v0, p0, Lcom/aadhk/restpos/PayInOutActivity;->o:I

    return v0
.end method

.method static synthetic a(Lcom/aadhk/restpos/PayInOutActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 31
    iput-object p1, p0, Lcom/aadhk/restpos/PayInOutActivity;->u:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/aadhk/restpos/PayInOutActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 31
    iput-object p1, p0, Lcom/aadhk/restpos/PayInOutActivity;->r:Ljava/util/List;

    return-object p1
.end method

.method private a(I)V
    .locals 2
    .parameter

    .prologue
    .line 123
    new-instance v0, Lcom/aadhk/restpos/c/bq;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1}, Lcom/aadhk/restpos/c/bq;-><init>(Lcom/aadhk/restpos/PayInOutActivity;Lcom/aadhk/restpos/bean/CashRegister;I)V

    .line 124
    new-instance v1, Lcom/aadhk/restpos/cd;

    invoke-direct {v1, p0}, Lcom/aadhk/restpos/cd;-><init>(Lcom/aadhk/restpos/PayInOutActivity;)V

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/bq;->a(Lcom/aadhk/product/library/b/f;)V

    .line 144
    invoke-virtual {v0}, Lcom/aadhk/restpos/c/bq;->show()V

    .line 145
    return-void
.end method

.method static synthetic a(Lcom/aadhk/restpos/PayInOutActivity;Lcom/aadhk/restpos/bean/CashRegister;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 31
    new-instance v0, Lcom/aadhk/product/library/a/d;

    new-instance v1, Lcom/aadhk/restpos/ce;

    invoke-direct {v1, p0, p1}, Lcom/aadhk/restpos/ce;-><init>(Lcom/aadhk/restpos/PayInOutActivity;Lcom/aadhk/restpos/bean/CashRegister;)V

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/aadhk/product/library/a/d;-><init>(Lcom/aadhk/product/library/a/c;Landroid/content/Context;B)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/product/library/a/d;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method static synthetic b(Lcom/aadhk/restpos/PayInOutActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/aadhk/restpos/PayInOutActivity;->t:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/aadhk/restpos/PayInOutActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 31
    iput-object p1, p0, Lcom/aadhk/restpos/PayInOutActivity;->t:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic c(Lcom/aadhk/restpos/PayInOutActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/aadhk/restpos/PayInOutActivity;->u:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/aadhk/restpos/PayInOutActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 31
    iput-object p1, p0, Lcom/aadhk/restpos/PayInOutActivity;->v:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic d(Lcom/aadhk/restpos/PayInOutActivity;)Lcom/aadhk/restpos/g/q;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/aadhk/restpos/PayInOutActivity;->w:Lcom/aadhk/restpos/g/q;

    return-object v0
.end method

.method static synthetic e(Lcom/aadhk/restpos/PayInOutActivity;)Lcom/aadhk/restpos/bean/POSPrinterSetting;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/aadhk/restpos/PayInOutActivity;->s:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    return-object v0
.end method

.method static synthetic f(Lcom/aadhk/restpos/PayInOutActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/aadhk/restpos/PayInOutActivity;->v:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcom/aadhk/restpos/PayInOutActivity;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/aadhk/restpos/PayInOutActivity;->r:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/aadhk/restpos/PayInOutActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/PayInOutActivity;->a:Landroid/support/v4/app/FragmentManager;

    .line 64
    iget-object v0, p0, Lcom/aadhk/restpos/PayInOutActivity;->a:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 65
    const v1, 0x7f09005c

    new-instance v2, Lcom/aadhk/restpos/d/ew;

    invoke-direct {v2}, Lcom/aadhk/restpos/d/ew;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 66
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 67
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 247
    iput-object p1, p0, Lcom/aadhk/restpos/PayInOutActivity;->p:Ljava/lang/String;

    .line 248
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/aadhk/restpos/PayInOutActivity;->t:Ljava/lang/String;

    return-object v0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 251
    iput-object p1, p0, Lcom/aadhk/restpos/PayInOutActivity;->q:Ljava/lang/String;

    .line 252
    return-void
.end method

.method public final c()Lcom/aadhk/restpos/g/q;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/aadhk/restpos/PayInOutActivity;->w:Lcom/aadhk/restpos/g/q;

    return-object v0
.end method

.method public final d()I
    .locals 1

    .prologue
    .line 235
    iget v0, p0, Lcom/aadhk/restpos/PayInOutActivity;->o:I

    return v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/aadhk/restpos/PayInOutActivity;->p:Ljava/lang/String;

    return-object v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/aadhk/restpos/PayInOutActivity;->q:Ljava/lang/String;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 44
    invoke-super {p0, p1}, Lcom/aadhk/restpos/POSActivity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    const v0, 0x7f03001e

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/PayInOutActivity;->setContentView(I)V

    .line 46
    const v0, 0x7f0800ff

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/PayInOutActivity;->setTitle(I)V

    .line 47
    new-instance v0, Lcom/aadhk/restpos/g/q;

    invoke-direct {v0, p0}, Lcom/aadhk/restpos/g/q;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/aadhk/restpos/PayInOutActivity;->w:Lcom/aadhk/restpos/g/q;

    .line 48
    invoke-virtual {p0}, Lcom/aadhk/restpos/PayInOutActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/POSApp;

    invoke-virtual {v0}, Lcom/aadhk/restpos/POSApp;->k()Lcom/aadhk/restpos/bean/POSPrinterSetting;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/PayInOutActivity;->s:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    .line 49
    iget-object v0, p0, Lcom/aadhk/restpos/PayInOutActivity;->c:Lcom/aadhk/restpos/util/r;

    invoke-virtual {v0}, Lcom/aadhk/restpos/util/r;->g()I

    move-result v0

    iput v0, p0, Lcom/aadhk/restpos/PayInOutActivity;->o:I

    .line 50
    invoke-static {}, Lcom/aadhk/product/library/c/c;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/PayInOutActivity;->p:Ljava/lang/String;

    .line 51
    invoke-static {}, Lcom/aadhk/product/library/c/c;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/PayInOutActivity;->q:Ljava/lang/String;

    .line 52
    invoke-virtual {p0}, Lcom/aadhk/restpos/PayInOutActivity;->a()V

    .line 53
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/aadhk/restpos/PayInOutActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0f0002

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 72
    invoke-super {p0, p1}, Lcom/aadhk/restpos/POSActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/aadhk/restpos/PayInOutActivity;->w:Lcom/aadhk/restpos/g/q;

    invoke-static {}, Lcom/aadhk/restpos/b/f;->a()Lcom/aadhk/restpos/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/b/f;->c()V

    .line 261
    invoke-super {p0}, Lcom/aadhk/restpos/POSActivity;->onDestroy()V

    .line 262
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 77
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f090302

    if-ne v0, v1, :cond_1

    .line 78
    new-instance v0, Lcom/aadhk/product/library/a/d;

    new-instance v1, Lcom/aadhk/restpos/cf;

    invoke-direct {v1, p0, v2}, Lcom/aadhk/restpos/cf;-><init>(Lcom/aadhk/restpos/PayInOutActivity;B)V

    invoke-direct {v0, v1, p0, v2}, Lcom/aadhk/product/library/a/d;-><init>(Lcom/aadhk/product/library/a/c;Landroid/content/Context;B)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/product/library/a/d;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 113
    :cond_0
    :goto_0
    return v3

    .line 79
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f090303

    if-ne v0, v1, :cond_2

    .line 80
    invoke-direct {p0, v3}, Lcom/aadhk/restpos/PayInOutActivity;->a(I)V

    goto :goto_0

    .line 81
    :cond_2
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f090304

    if-ne v0, v1, :cond_3

    .line 82
    invoke-direct {p0, v4}, Lcom/aadhk/restpos/PayInOutActivity;->a(I)V

    goto :goto_0

    .line 83
    :cond_3
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f090305

    if-ne v0, v1, :cond_4

    .line 84
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/aadhk/restpos/PayCloseOutActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 85
    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/PayInOutActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 86
    :cond_4
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f090306

    if-ne v0, v1, :cond_5

    .line 87
    iput v4, p0, Lcom/aadhk/restpos/PayInOutActivity;->o:I

    .line 88
    invoke-virtual {p0}, Lcom/aadhk/restpos/PayInOutActivity;->a()V

    goto :goto_0

    .line 90
    :cond_5
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f090307

    if-ne v0, v1, :cond_6

    .line 91
    const/4 v0, 0x3

    iput v0, p0, Lcom/aadhk/restpos/PayInOutActivity;->o:I

    .line 92
    invoke-virtual {p0}, Lcom/aadhk/restpos/PayInOutActivity;->a()V

    goto :goto_0

    .line 94
    :cond_6
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f090308

    if-ne v0, v1, :cond_7

    .line 95
    const/4 v0, 0x4

    iput v0, p0, Lcom/aadhk/restpos/PayInOutActivity;->o:I

    .line 96
    invoke-virtual {p0}, Lcom/aadhk/restpos/PayInOutActivity;->a()V

    goto :goto_0

    .line 98
    :cond_7
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f090309

    if-ne v0, v1, :cond_8

    .line 99
    new-instance v0, Lcom/aadhk/restpos/c/h;

    invoke-direct {v0, p0}, Lcom/aadhk/restpos/c/h;-><init>(Landroid/content/Context;)V

    .line 100
    new-instance v1, Lcom/aadhk/restpos/cc;

    invoke-direct {v1, p0}, Lcom/aadhk/restpos/cc;-><init>(Lcom/aadhk/restpos/PayInOutActivity;)V

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/h;->a(Lcom/aadhk/restpos/c/i;)V

    .line 109
    invoke-virtual {v0}, Lcom/aadhk/restpos/c/h;->show()V

    goto :goto_0

    .line 110
    :cond_8
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 111
    invoke-virtual {p0}, Lcom/aadhk/restpos/PayInOutActivity;->finish()V

    goto/16 :goto_0
.end method

.method protected onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 57
    invoke-super {p0}, Lcom/aadhk/restpos/POSActivity;->onResume()V

    .line 58
    new-instance v0, Lcom/aadhk/product/library/a/d;

    new-instance v1, Lcom/aadhk/restpos/cg;

    invoke-direct {v1, p0, v2}, Lcom/aadhk/restpos/cg;-><init>(Lcom/aadhk/restpos/PayInOutActivity;B)V

    invoke-direct {v0, v1, p0, v2}, Lcom/aadhk/product/library/a/d;-><init>(Lcom/aadhk/product/library/a/c;Landroid/content/Context;B)V

    .line 59
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/product/library/a/d;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 60
    return-void
.end method
