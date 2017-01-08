.class public Lcom/aadhk/restpos/ReceiptListActivity;
.super Lcom/aadhk/restpos/POSActivity;
.source "ProGuard"


# instance fields
.field private a:I

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Landroid/database/sqlite/SQLiteDatabase;

.field private o:Z

.field private p:Landroid/support/v4/app/FragmentManager;

.field private q:Lcom/aadhk/restpos/b/n;

.field private r:Lcom/aadhk/restpos/b/o;

.field private s:Lcom/aadhk/restpos/bean/Order;

.field private t:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/OrderItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/aadhk/restpos/POSActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/aadhk/restpos/ReceiptListActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 26
    const/4 v0, 0x5

    iput v0, p0, Lcom/aadhk/restpos/ReceiptListActivity;->a:I

    return v0
.end method

.method static synthetic a(Lcom/aadhk/restpos/ReceiptListActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 26
    iput-object p1, p0, Lcom/aadhk/restpos/ReceiptListActivity;->l:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/aadhk/restpos/ReceiptListActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 26
    iput-object p1, p0, Lcom/aadhk/restpos/ReceiptListActivity;->m:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 77
    iget-object v0, p0, Lcom/aadhk/restpos/ReceiptListActivity;->p:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 78
    const v1, 0x7f0b0058

    new-instance v2, Lcom/aadhk/restpos/d/dy;

    invoke-direct {v2}, Lcom/aadhk/restpos/d/dy;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 79
    iget-boolean v1, p0, Lcom/aadhk/restpos/ReceiptListActivity;->o:Z

    if-eqz v1, :cond_0

    .line 80
    const v1, 0x7f0b005a

    invoke-virtual {p0, v1}, Lcom/aadhk/restpos/ReceiptListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 82
    :cond_0
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 83
    return-void
.end method

.method public final a(Lcom/aadhk/restpos/bean/Order;)V
    .locals 4
    .parameter

    .prologue
    const v3, 0x7f0b005a

    .line 86
    iput-object p1, p0, Lcom/aadhk/restpos/ReceiptListActivity;->s:Lcom/aadhk/restpos/bean/Order;

    .line 87
    iget-object v0, p0, Lcom/aadhk/restpos/ReceiptListActivity;->r:Lcom/aadhk/restpos/b/o;

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/Order;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/restpos/b/o;->a(J)Ljava/util/List;

    move-result-object v0

    .line 88
    invoke-virtual {p1, v0}, Lcom/aadhk/restpos/bean/Order;->setOrderPayments(Ljava/util/List;)V

    .line 89
    iget-object v0, p0, Lcom/aadhk/restpos/ReceiptListActivity;->q:Lcom/aadhk/restpos/b/n;

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/Order;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/restpos/b/n;->b(J)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/ReceiptListActivity;->t:Ljava/util/List;

    .line 91
    iget-object v0, p0, Lcom/aadhk/restpos/ReceiptListActivity;->p:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 92
    iget-boolean v1, p0, Lcom/aadhk/restpos/ReceiptListActivity;->o:Z

    if-eqz v1, :cond_0

    .line 93
    invoke-virtual {p0, v3}, Lcom/aadhk/restpos/ReceiptListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 94
    new-instance v1, Lcom/aadhk/restpos/d/dr;

    invoke-direct {v1}, Lcom/aadhk/restpos/d/dr;-><init>()V

    invoke-virtual {v0, v3, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 99
    :goto_0
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 100
    return-void

    .line 96
    :cond_0
    const v1, 0x7f0b0058

    new-instance v2, Lcom/aadhk/restpos/d/dr;

    invoke-direct {v2}, Lcom/aadhk/restpos/d/dr;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 97
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_0
.end method

.method public final b()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/aadhk/restpos/ReceiptListActivity;->n:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method public final c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/OrderItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 227
    iget-object v0, p0, Lcom/aadhk/restpos/ReceiptListActivity;->t:Ljava/util/List;

    return-object v0
.end method

.method public final d()Lcom/aadhk/restpos/bean/Order;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/aadhk/restpos/ReceiptListActivity;->s:Lcom/aadhk/restpos/bean/Order;

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/aadhk/restpos/ReceiptListActivity;->l:Ljava/lang/String;

    return-object v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/aadhk/restpos/ReceiptListActivity;->m:Ljava/lang/String;

    return-object v0
.end method

.method public final g()I
    .locals 1

    .prologue
    .line 252
    iget v0, p0, Lcom/aadhk/restpos/ReceiptListActivity;->a:I

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 49
    invoke-super {p0, p1}, Lcom/aadhk/restpos/POSActivity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    const v0, 0x7f030021

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/ReceiptListActivity;->setContentView(I)V

    .line 52
    const v0, 0x7f090196

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/ReceiptListActivity;->setTitle(I)V

    .line 54
    invoke-static {}, Lcom/aadhk/restpos/b/f;->a()Lcom/aadhk/restpos/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/b/f;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/ReceiptListActivity;->n:Landroid/database/sqlite/SQLiteDatabase;

    .line 55
    iget-object v0, p0, Lcom/aadhk/restpos/ReceiptListActivity;->c:Lcom/aadhk/restpos/f/l;

    invoke-virtual {v0}, Lcom/aadhk/restpos/f/l;->f()I

    move-result v0

    iput v0, p0, Lcom/aadhk/restpos/ReceiptListActivity;->a:I

    .line 65
    invoke-static {}, Lcom/aadhk/product/library/c/c;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/ReceiptListActivity;->l:Ljava/lang/String;

    .line 67
    const v0, 0x7f0b005a

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/ReceiptListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 68
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/aadhk/restpos/ReceiptListActivity;->o:Z

    .line 69
    invoke-virtual {p0}, Lcom/aadhk/restpos/ReceiptListActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/ReceiptListActivity;->p:Landroid/support/v4/app/FragmentManager;

    .line 70
    invoke-virtual {p0}, Lcom/aadhk/restpos/ReceiptListActivity;->a()V

    .line 72
    new-instance v0, Lcom/aadhk/restpos/b/n;

    iget-object v1, p0, Lcom/aadhk/restpos/ReceiptListActivity;->n:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {v0, v1}, Lcom/aadhk/restpos/b/n;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v0, p0, Lcom/aadhk/restpos/ReceiptListActivity;->q:Lcom/aadhk/restpos/b/n;

    .line 73
    new-instance v0, Lcom/aadhk/restpos/b/o;

    iget-object v1, p0, Lcom/aadhk/restpos/ReceiptListActivity;->n:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {v0, v1}, Lcom/aadhk/restpos/b/o;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v0, p0, Lcom/aadhk/restpos/ReceiptListActivity;->r:Lcom/aadhk/restpos/b/o;

    .line 74
    return-void

    .line 68
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter

    .prologue
    .line 108
    invoke-virtual {p0}, Lcom/aadhk/restpos/ReceiptListActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0f000e

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 149
    invoke-super {p0, p1}, Lcom/aadhk/restpos/POSActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 236
    invoke-static {}, Lcom/aadhk/restpos/b/f;->a()Lcom/aadhk/restpos/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/b/f;->c()V

    .line 237
    invoke-super {p0}, Lcom/aadhk/restpos/POSActivity;->onDestroy()V

    .line 238
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 165
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x7f0b0284

    if-ne v1, v2, :cond_0

    .line 166
    const/4 v1, 0x2

    iput v1, p0, Lcom/aadhk/restpos/ReceiptListActivity;->a:I

    .line 167
    invoke-virtual {p0}, Lcom/aadhk/restpos/ReceiptListActivity;->a()V

    .line 192
    :goto_0
    return v0

    .line 169
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x7f0b0285

    if-ne v1, v2, :cond_1

    .line 170
    const/4 v1, 0x3

    iput v1, p0, Lcom/aadhk/restpos/ReceiptListActivity;->a:I

    .line 171
    invoke-virtual {p0}, Lcom/aadhk/restpos/ReceiptListActivity;->a()V

    goto :goto_0

    .line 173
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x7f0b0286

    if-ne v1, v2, :cond_2

    .line 174
    const/4 v1, 0x4

    iput v1, p0, Lcom/aadhk/restpos/ReceiptListActivity;->a:I

    .line 175
    invoke-virtual {p0}, Lcom/aadhk/restpos/ReceiptListActivity;->a()V

    goto :goto_0

    .line 177
    :cond_2
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x7f0b0287

    if-ne v1, v2, :cond_3

    .line 178
    new-instance v1, Lcom/aadhk/restpos/c/k;

    invoke-direct {v1, p0}, Lcom/aadhk/restpos/c/k;-><init>(Landroid/content/Context;)V

    .line 179
    new-instance v2, Lcom/aadhk/restpos/br;

    invoke-direct {v2, p0}, Lcom/aadhk/restpos/br;-><init>(Lcom/aadhk/restpos/ReceiptListActivity;)V

    invoke-virtual {v1, v2}, Lcom/aadhk/restpos/c/k;->a(Lcom/aadhk/restpos/c/l;)V

    .line 189
    invoke-virtual {v1}, Lcom/aadhk/restpos/c/k;->show()V

    goto :goto_0

    .line 192
    :cond_3
    invoke-super {p0, p1}, Lcom/aadhk/restpos/POSActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method
