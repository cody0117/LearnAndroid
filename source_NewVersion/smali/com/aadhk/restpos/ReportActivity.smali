.class public Lcom/aadhk/restpos/ReportActivity;
.super Lcom/aadhk/restpos/POSActivity;
.source "ProGuard"


# instance fields
.field private a:Landroid/content/res/Resources;

.field private l:Lcom/aadhk/restpos/f/l;

.field private m:I

.field private n:Lcom/aadhk/restpos/bt;

.field private o:Landroid/support/v4/view/ViewPager;

.field private p:I

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:I

.field private u:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/aadhk/restpos/POSActivity;-><init>()V

    .line 158
    return-void
.end method

.method static synthetic a(Lcom/aadhk/restpos/ReportActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 31
    const/4 v0, 0x5

    iput v0, p0, Lcom/aadhk/restpos/ReportActivity;->m:I

    return v0
.end method

.method static synthetic a(Lcom/aadhk/restpos/ReportActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 31
    iput-object p1, p0, Lcom/aadhk/restpos/ReportActivity;->r:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/aadhk/restpos/ReportActivity;)Lcom/aadhk/restpos/bt;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/aadhk/restpos/ReportActivity;->n:Lcom/aadhk/restpos/bt;

    return-object v0
.end method

.method static synthetic b(Lcom/aadhk/restpos/ReportActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 31
    iput-object p1, p0, Lcom/aadhk/restpos/ReportActivity;->s:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic c(Lcom/aadhk/restpos/ReportActivity;)Landroid/support/v4/view/ViewPager;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/aadhk/restpos/ReportActivity;->o:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic d(Lcom/aadhk/restpos/ReportActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 31
    iget v0, p0, Lcom/aadhk/restpos/ReportActivity;->m:I

    return v0
.end method

.method static synthetic e(Lcom/aadhk/restpos/ReportActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 31
    iget v0, p0, Lcom/aadhk/restpos/ReportActivity;->t:I

    return v0
.end method

.method static synthetic f(Lcom/aadhk/restpos/ReportActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/aadhk/restpos/ReportActivity;->r:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcom/aadhk/restpos/ReportActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/aadhk/restpos/ReportActivity;->s:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic h(Lcom/aadhk/restpos/ReportActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 31
    iget v0, p0, Lcom/aadhk/restpos/ReportActivity;->p:I

    return v0
.end method


# virtual methods
.method public final a()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/aadhk/restpos/ReportActivity;->u:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/aadhk/restpos/ReportActivity;->q:Ljava/lang/String;

    return-object v0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 230
    iget v0, p0, Lcom/aadhk/restpos/ReportActivity;->m:I

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 51
    invoke-super {p0, p1}, Lcom/aadhk/restpos/POSActivity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    const v0, 0x7f0300a7

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/ReportActivity;->setContentView(I)V

    .line 54
    invoke-static {}, Lcom/aadhk/restpos/b/f;->a()Lcom/aadhk/restpos/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/b/f;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/ReportActivity;->u:Landroid/database/sqlite/SQLiteDatabase;

    .line 55
    invoke-virtual {p0}, Lcom/aadhk/restpos/ReportActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/ReportActivity;->a:Landroid/content/res/Resources;

    .line 56
    new-instance v0, Lcom/aadhk/restpos/f/l;

    invoke-direct {v0, p0}, Lcom/aadhk/restpos/f/l;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/aadhk/restpos/ReportActivity;->l:Lcom/aadhk/restpos/f/l;

    .line 58
    invoke-virtual {p0}, Lcom/aadhk/restpos/ReportActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 59
    const-string v1, "reportType"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/aadhk/restpos/ReportActivity;->p:I

    .line 60
    const-string v1, "reportTitle"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/ReportActivity;->q:Ljava/lang/String;

    .line 62
    iget-object v0, p0, Lcom/aadhk/restpos/ReportActivity;->q:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/ReportActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 64
    iget-object v0, p0, Lcom/aadhk/restpos/ReportActivity;->l:Lcom/aadhk/restpos/f/l;

    invoke-virtual {v0}, Lcom/aadhk/restpos/f/l;->f()I

    move-result v0

    iput v0, p0, Lcom/aadhk/restpos/ReportActivity;->m:I

    .line 65
    iget-object v0, p0, Lcom/aadhk/restpos/ReportActivity;->l:Lcom/aadhk/restpos/f/l;

    invoke-virtual {v0}, Lcom/aadhk/restpos/f/l;->e()I

    move-result v0

    iput v0, p0, Lcom/aadhk/restpos/ReportActivity;->t:I

    .line 74
    invoke-static {}, Lcom/aadhk/product/library/c/c;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/ReportActivity;->r:Ljava/lang/String;

    .line 75
    new-instance v0, Lcom/aadhk/restpos/bt;

    invoke-virtual {p0}, Lcom/aadhk/restpos/ReportActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/aadhk/restpos/bt;-><init>(Lcom/aadhk/restpos/ReportActivity;Landroid/support/v4/app/FragmentManager;)V

    iput-object v0, p0, Lcom/aadhk/restpos/ReportActivity;->n:Lcom/aadhk/restpos/bt;

    .line 76
    const v0, 0x7f0b0141

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/ReportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/aadhk/restpos/ReportActivity;->o:Landroid/support/v4/view/ViewPager;

    .line 77
    iget-object v0, p0, Lcom/aadhk/restpos/ReportActivity;->o:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/aadhk/restpos/ReportActivity;->n:Lcom/aadhk/restpos/bt;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 78
    iget-object v0, p0, Lcom/aadhk/restpos/ReportActivity;->o:Landroid/support/v4/view/ViewPager;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 79
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/aadhk/restpos/ReportActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0f0004

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 88
    invoke-super {p0, p1}, Lcom/aadhk/restpos/POSActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 222
    invoke-static {}, Lcom/aadhk/restpos/b/f;->a()Lcom/aadhk/restpos/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/b/f;->c()V

    .line 223
    invoke-super {p0}, Lcom/aadhk/restpos/POSActivity;->onDestroy()V

    .line 224
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter

    .prologue
    const/16 v3, 0x3e8

    const/4 v0, 0x1

    .line 93
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x7f0b0284

    if-ne v1, v2, :cond_0

    .line 94
    const/4 v1, 0x2

    iput v1, p0, Lcom/aadhk/restpos/ReportActivity;->m:I

    .line 95
    iget-object v1, p0, Lcom/aadhk/restpos/ReportActivity;->n:Lcom/aadhk/restpos/bt;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bt;->notifyDataSetChanged()V

    .line 96
    iget-object v1, p0, Lcom/aadhk/restpos/ReportActivity;->o:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v3}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 124
    :goto_0
    return v0

    .line 98
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x7f0b0285

    if-ne v1, v2, :cond_1

    .line 99
    const/4 v1, 0x3

    iput v1, p0, Lcom/aadhk/restpos/ReportActivity;->m:I

    .line 100
    iget-object v1, p0, Lcom/aadhk/restpos/ReportActivity;->n:Lcom/aadhk/restpos/bt;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bt;->notifyDataSetChanged()V

    .line 101
    iget-object v1, p0, Lcom/aadhk/restpos/ReportActivity;->o:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v3}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto :goto_0

    .line 103
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x7f0b0286

    if-ne v1, v2, :cond_2

    .line 104
    const/4 v1, 0x4

    iput v1, p0, Lcom/aadhk/restpos/ReportActivity;->m:I

    .line 105
    iget-object v1, p0, Lcom/aadhk/restpos/ReportActivity;->n:Lcom/aadhk/restpos/bt;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bt;->notifyDataSetChanged()V

    .line 106
    iget-object v1, p0, Lcom/aadhk/restpos/ReportActivity;->o:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v3}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto :goto_0

    .line 108
    :cond_2
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x7f0b0287

    if-ne v1, v2, :cond_3

    .line 109
    new-instance v1, Lcom/aadhk/restpos/c/k;

    invoke-direct {v1, p0}, Lcom/aadhk/restpos/c/k;-><init>(Landroid/content/Context;)V

    .line 110
    new-instance v2, Lcom/aadhk/restpos/bs;

    invoke-direct {v2, p0}, Lcom/aadhk/restpos/bs;-><init>(Lcom/aadhk/restpos/ReportActivity;)V

    invoke-virtual {v1, v2}, Lcom/aadhk/restpos/c/k;->a(Lcom/aadhk/restpos/c/l;)V

    .line 121
    invoke-virtual {v1}, Lcom/aadhk/restpos/c/k;->show()V

    goto :goto_0

    .line 124
    :cond_3
    invoke-super {p0, p1}, Lcom/aadhk/restpos/POSActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method
