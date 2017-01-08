.class public Lcom/aadhk/restpos/ReceiptListActivity;
.super Lcom/aadhk/restpos/POSActivity;
.source "ProGuard"


# instance fields
.field private a:I

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Lcom/aadhk/restpos/g/v;

.field private r:Z

.field private s:Landroid/support/v4/app/FragmentManager;

.field private t:Lcom/aadhk/restpos/d/hi;

.field private u:Lcom/aadhk/restpos/d/gz;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/aadhk/restpos/POSActivity;-><init>()V

    .line 81
    return-void
.end method

.method static synthetic a(Lcom/aadhk/restpos/ReceiptListActivity;Lcom/aadhk/restpos/d/gz;)Lcom/aadhk/restpos/d/gz;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 30
    iput-object p1, p0, Lcom/aadhk/restpos/ReceiptListActivity;->u:Lcom/aadhk/restpos/d/gz;

    return-object p1
.end method

.method static synthetic a(Lcom/aadhk/restpos/ReceiptListActivity;)Lcom/aadhk/restpos/g/v;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/aadhk/restpos/ReceiptListActivity;->q:Lcom/aadhk/restpos/g/v;

    return-object v0
.end method

.method static synthetic a(Lcom/aadhk/restpos/ReceiptListActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 30
    iput-object p1, p0, Lcom/aadhk/restpos/ReceiptListActivity;->o:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/aadhk/restpos/ReceiptListActivity;)Landroid/support/v4/app/FragmentManager;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/aadhk/restpos/ReceiptListActivity;->s:Landroid/support/v4/app/FragmentManager;

    return-object v0
.end method

.method static synthetic b(Lcom/aadhk/restpos/ReceiptListActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 30
    iput-object p1, p0, Lcom/aadhk/restpos/ReceiptListActivity;->p:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic c(Lcom/aadhk/restpos/ReceiptListActivity;)Lcom/aadhk/restpos/d/gz;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/aadhk/restpos/ReceiptListActivity;->u:Lcom/aadhk/restpos/d/gz;

    return-object v0
.end method

.method static synthetic d(Lcom/aadhk/restpos/ReceiptListActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/aadhk/restpos/ReceiptListActivity;->r:Z

    return v0
.end method

.method static synthetic e(Lcom/aadhk/restpos/ReceiptListActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 30
    const/4 v0, 0x5

    iput v0, p0, Lcom/aadhk/restpos/ReceiptListActivity;->a:I

    return v0
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 66
    iget-object v0, p0, Lcom/aadhk/restpos/ReceiptListActivity;->s:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 67
    new-instance v1, Lcom/aadhk/restpos/d/hi;

    invoke-direct {v1}, Lcom/aadhk/restpos/d/hi;-><init>()V

    iput-object v1, p0, Lcom/aadhk/restpos/ReceiptListActivity;->t:Lcom/aadhk/restpos/d/hi;

    .line 68
    const v1, 0x7f09005c

    iget-object v2, p0, Lcom/aadhk/restpos/ReceiptListActivity;->t:Lcom/aadhk/restpos/d/hi;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 69
    iget-boolean v1, p0, Lcom/aadhk/restpos/ReceiptListActivity;->r:Z

    if-eqz v1, :cond_0

    .line 70
    const v1, 0x7f09005e

    invoke-virtual {p0, v1}, Lcom/aadhk/restpos/ReceiptListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 72
    :cond_0
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 73
    return-void
.end method

.method public final a(Lcom/aadhk/restpos/bean/Order;)V
    .locals 3
    .parameter

    .prologue
    .line 77
    new-instance v0, Lcom/aadhk/product/library/a/d;

    new-instance v1, Lcom/aadhk/restpos/cy;

    invoke-direct {v1, p0, p1}, Lcom/aadhk/restpos/cy;-><init>(Lcom/aadhk/restpos/ReceiptListActivity;Lcom/aadhk/restpos/bean/Order;)V

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/aadhk/product/library/a/d;-><init>(Lcom/aadhk/product/library/a/c;Landroid/content/Context;B)V

    .line 78
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/product/library/a/d;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 79
    return-void
.end method

.method public final b()Lcom/aadhk/restpos/g/v;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/aadhk/restpos/ReceiptListActivity;->q:Lcom/aadhk/restpos/g/v;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/aadhk/restpos/ReceiptListActivity;->o:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/aadhk/restpos/ReceiptListActivity;->p:Ljava/lang/String;

    return-object v0
.end method

.method public final e()I
    .locals 1

    .prologue
    .line 269
    iget v0, p0, Lcom/aadhk/restpos/ReceiptListActivity;->a:I

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 48
    invoke-super {p0, p1}, Lcom/aadhk/restpos/POSActivity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    const v0, 0x7f030022

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/ReceiptListActivity;->setContentView(I)V

    .line 51
    const v0, 0x7f0801d1

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/ReceiptListActivity;->setTitle(I)V

    .line 53
    new-instance v0, Lcom/aadhk/restpos/g/v;

    invoke-direct {v0, p0}, Lcom/aadhk/restpos/g/v;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/aadhk/restpos/ReceiptListActivity;->q:Lcom/aadhk/restpos/g/v;

    .line 54
    iget-object v0, p0, Lcom/aadhk/restpos/ReceiptListActivity;->c:Lcom/aadhk/restpos/util/r;

    invoke-virtual {v0}, Lcom/aadhk/restpos/util/r;->g()I

    move-result v0

    iput v0, p0, Lcom/aadhk/restpos/ReceiptListActivity;->a:I

    .line 57
    invoke-static {}, Lcom/aadhk/product/library/c/c;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/ReceiptListActivity;->o:Ljava/lang/String;

    .line 59
    const v0, 0x7f09005e

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/ReceiptListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 60
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/aadhk/restpos/ReceiptListActivity;->r:Z

    .line 61
    invoke-virtual {p0}, Lcom/aadhk/restpos/ReceiptListActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/ReceiptListActivity;->s:Landroid/support/v4/app/FragmentManager;

    .line 62
    invoke-virtual {p0}, Lcom/aadhk/restpos/ReceiptListActivity;->a()V

    .line 63
    return-void

    .line 60
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter

    .prologue
    .line 131
    invoke-virtual {p0}, Lcom/aadhk/restpos/ReceiptListActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0f0011

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 172
    invoke-super {p0, p1}, Lcom/aadhk/restpos/POSActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/aadhk/restpos/ReceiptListActivity;->q:Lcom/aadhk/restpos/g/v;

    invoke-static {}, Lcom/aadhk/restpos/b/f;->a()Lcom/aadhk/restpos/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/b/f;->c()V

    .line 279
    invoke-super {p0}, Lcom/aadhk/restpos/POSActivity;->onDestroy()V

    .line 280
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 188
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x7f090306

    if-ne v1, v2, :cond_0

    .line 189
    const/4 v1, 0x2

    iput v1, p0, Lcom/aadhk/restpos/ReceiptListActivity;->a:I

    .line 190
    invoke-virtual {p0}, Lcom/aadhk/restpos/ReceiptListActivity;->a()V

    .line 215
    :goto_0
    return v0

    .line 192
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x7f090307

    if-ne v1, v2, :cond_1

    .line 193
    const/4 v1, 0x3

    iput v1, p0, Lcom/aadhk/restpos/ReceiptListActivity;->a:I

    .line 194
    invoke-virtual {p0}, Lcom/aadhk/restpos/ReceiptListActivity;->a()V

    goto :goto_0

    .line 196
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x7f090308

    if-ne v1, v2, :cond_2

    .line 197
    const/4 v1, 0x4

    iput v1, p0, Lcom/aadhk/restpos/ReceiptListActivity;->a:I

    .line 198
    invoke-virtual {p0}, Lcom/aadhk/restpos/ReceiptListActivity;->a()V

    goto :goto_0

    .line 200
    :cond_2
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x7f090309

    if-ne v1, v2, :cond_3

    .line 201
    new-instance v1, Lcom/aadhk/restpos/c/h;

    invoke-direct {v1, p0}, Lcom/aadhk/restpos/c/h;-><init>(Landroid/content/Context;)V

    .line 202
    new-instance v2, Lcom/aadhk/restpos/cx;

    invoke-direct {v2, p0}, Lcom/aadhk/restpos/cx;-><init>(Lcom/aadhk/restpos/ReceiptListActivity;)V

    invoke-virtual {v1, v2}, Lcom/aadhk/restpos/c/h;->a(Lcom/aadhk/restpos/c/i;)V

    .line 212
    invoke-virtual {v1}, Lcom/aadhk/restpos/c/h;->show()V

    goto :goto_0

    .line 215
    :cond_3
    invoke-super {p0, p1}, Lcom/aadhk/restpos/POSActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method
