.class public final Lcom/aadhk/restpos/d/hk;
.super Landroid/support/v4/app/Fragment;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private a:Lcom/aadhk/restpos/ReportListActivity;

.field private b:Landroid/widget/ListView;

.field private c:[Ljava/lang/String;

.field private d:Lcom/aadhk/restpos/util/r;

.field private e:Lcom/aadhk/restpos/g/w;

.field private f:Landroid/widget/EditText;

.field private g:Landroid/widget/EditText;

.field private h:Landroid/widget/EditText;

.field private i:Landroid/widget/EditText;

.field private j:Landroid/widget/Button;

.field private k:Landroid/view/View;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:[Ljava/lang/String;

.field private s:[Ljava/lang/String;

.field private t:[Ljava/lang/String;

.field private u:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/Report;",
            ">;"
        }
    .end annotation
.end field

.field private v:Lcom/aadhk/restpos/bean/Company;

.field private w:[Z

.field private x:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 53
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "pref_report_end_day"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "pref_report_sales"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "pref_report_staff_sales"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "pref_report_cb_pay"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "pref_report_cb_profit"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "pref_report_cb_Statistics"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "pref_report_cb_item_amt"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "pref_report_cb_item_qty"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "pref_report_cb_item"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "pref_report_cb_cancel_item"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "pref_report_cb_modifier"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/aadhk/restpos/d/hk;->r:[Ljava/lang/String;

    .line 275
    return-void
.end method

.method static synthetic a(Lcom/aadhk/restpos/d/hk;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 41
    iput-object p1, p0, Lcom/aadhk/restpos/d/hk;->p:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/aadhk/restpos/d/hk;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 41
    iput-object p1, p0, Lcom/aadhk/restpos/d/hk;->u:Ljava/util/List;

    return-object p1
.end method

.method private a()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 271
    new-instance v0, Lcom/aadhk/product/library/a/d;

    new-instance v1, Lcom/aadhk/restpos/d/hq;

    invoke-direct {v1, p0, v3}, Lcom/aadhk/restpos/d/hq;-><init>(Lcom/aadhk/restpos/d/hk;B)V

    iget-object v2, p0, Lcom/aadhk/restpos/d/hk;->a:Lcom/aadhk/restpos/ReportListActivity;

    invoke-direct {v0, v1, v2, v3}, Lcom/aadhk/product/library/a/d;-><init>(Lcom/aadhk/product/library/a/c;Landroid/content/Context;B)V

    .line 272
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/product/library/a/d;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 273
    return-void
.end method

.method private a(Landroid/widget/EditText;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 207
    new-instance v0, Lcom/aadhk/restpos/c/g;

    iget-object v1, p0, Lcom/aadhk/restpos/d/hk;->a:Lcom/aadhk/restpos/ReportListActivity;

    iget-object v2, p0, Lcom/aadhk/restpos/d/hk;->p:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/aadhk/restpos/c/g;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 208
    new-instance v1, Lcom/aadhk/restpos/d/hl;

    invoke-direct {v1, p0, p1, p2}, Lcom/aadhk/restpos/d/hl;-><init>(Lcom/aadhk/restpos/d/hk;Landroid/widget/EditText;I)V

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/g;->a(Lcom/aadhk/product/library/b/f;)V

    .line 224
    invoke-virtual {v0}, Lcom/aadhk/restpos/c/g;->show()V

    .line 225
    return-void
.end method

.method static synthetic a(Lcom/aadhk/restpos/d/hk;)[Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/aadhk/restpos/d/hk;->c:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/aadhk/restpos/d/hk;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 41
    iput-object p1, p0, Lcom/aadhk/restpos/d/hk;->l:Ljava/lang/String;

    return-object p1
.end method

.method private b(Landroid/widget/EditText;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 229
    new-instance v0, Lcom/aadhk/restpos/c/dr;

    iget-object v1, p0, Lcom/aadhk/restpos/d/hk;->a:Lcom/aadhk/restpos/ReportListActivity;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/aadhk/restpos/c/dr;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 230
    new-instance v1, Lcom/aadhk/restpos/d/hm;

    invoke-direct {v1, p0, p1, p2}, Lcom/aadhk/restpos/d/hm;-><init>(Lcom/aadhk/restpos/d/hk;Landroid/widget/EditText;I)V

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/dr;->a(Lcom/aadhk/product/library/b/f;)V

    .line 245
    invoke-virtual {v0}, Lcom/aadhk/restpos/c/dr;->show()V

    .line 246
    return-void
.end method

.method static synthetic b(Lcom/aadhk/restpos/d/hk;)[Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/aadhk/restpos/d/hk;->r:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/aadhk/restpos/d/hk;)Lcom/aadhk/restpos/util/r;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/aadhk/restpos/d/hk;->d:Lcom/aadhk/restpos/util/r;

    return-object v0
.end method

.method static synthetic c(Lcom/aadhk/restpos/d/hk;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 41
    iput-object p1, p0, Lcom/aadhk/restpos/d/hk;->n:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic d(Lcom/aadhk/restpos/d/hk;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 41
    iput-object p1, p0, Lcom/aadhk/restpos/d/hk;->m:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic d(Lcom/aadhk/restpos/d/hk;)[Z
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/aadhk/restpos/d/hk;->w:[Z

    return-object v0
.end method

.method static synthetic e(Lcom/aadhk/restpos/d/hk;)Lcom/aadhk/restpos/ReportListActivity;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/aadhk/restpos/d/hk;->a:Lcom/aadhk/restpos/ReportListActivity;

    return-object v0
.end method

.method static synthetic e(Lcom/aadhk/restpos/d/hk;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 41
    iput-object p1, p0, Lcom/aadhk/restpos/d/hk;->o:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic f(Lcom/aadhk/restpos/d/hk;)V
    .locals 0
    .parameter

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/aadhk/restpos/d/hk;->a()V

    return-void
.end method

.method static synthetic g(Lcom/aadhk/restpos/d/hk;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/aadhk/restpos/d/hk;->q:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic h(Lcom/aadhk/restpos/d/hk;)[Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/aadhk/restpos/d/hk;->s:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic i(Lcom/aadhk/restpos/d/hk;)[Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/aadhk/restpos/d/hk;->t:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic j(Lcom/aadhk/restpos/d/hk;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/aadhk/restpos/d/hk;->x:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic k(Lcom/aadhk/restpos/d/hk;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/aadhk/restpos/d/hk;->l:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic l(Lcom/aadhk/restpos/d/hk;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/aadhk/restpos/d/hk;->m:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic m(Lcom/aadhk/restpos/d/hk;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/aadhk/restpos/d/hk;->n:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic n(Lcom/aadhk/restpos/d/hk;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/aadhk/restpos/d/hk;->o:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic o(Lcom/aadhk/restpos/d/hk;)Lcom/aadhk/restpos/g/w;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/aadhk/restpos/d/hk;->e:Lcom/aadhk/restpos/g/w;

    return-object v0
.end method

.method static synthetic p(Lcom/aadhk/restpos/d/hk;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/aadhk/restpos/d/hk;->u:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public final onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    .line 83
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 84
    iget-object v0, p0, Lcom/aadhk/restpos/d/hk;->a:Lcom/aadhk/restpos/ReportListActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/ReportListActivity;->a()Lcom/aadhk/restpos/g/w;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/hk;->e:Lcom/aadhk/restpos/g/w;

    .line 85
    iget-object v0, p0, Lcom/aadhk/restpos/d/hk;->a:Lcom/aadhk/restpos/ReportListActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/ReportListActivity;->v()Lcom/aadhk/restpos/bean/Company;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/hk;->v:Lcom/aadhk/restpos/bean/Company;

    .line 86
    new-instance v0, Lcom/aadhk/restpos/util/r;

    iget-object v1, p0, Lcom/aadhk/restpos/d/hk;->a:Lcom/aadhk/restpos/ReportListActivity;

    invoke-direct {v0, v1}, Lcom/aadhk/restpos/util/r;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/aadhk/restpos/d/hk;->d:Lcom/aadhk/restpos/util/r;

    .line 87
    invoke-static {}, Lcom/aadhk/restpos/util/o;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/hk;->p:Ljava/lang/String;

    .line 88
    iget-object v0, p0, Lcom/aadhk/restpos/d/hk;->d:Lcom/aadhk/restpos/util/r;

    invoke-virtual {v0}, Lcom/aadhk/restpos/util/r;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/hk;->q:Ljava/lang/String;

    .line 89
    invoke-virtual {p0}, Lcom/aadhk/restpos/d/hk;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0017

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/hk;->c:[Ljava/lang/String;

    .line 91
    iget-object v0, p0, Lcom/aadhk/restpos/d/hk;->p:Ljava/lang/String;

    iput-object v0, p0, Lcom/aadhk/restpos/d/hk;->n:Ljava/lang/String;

    iput-object v0, p0, Lcom/aadhk/restpos/d/hk;->l:Ljava/lang/String;

    .line 92
    iget-object v0, p0, Lcom/aadhk/restpos/d/hk;->v:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Company;->getTimeIn()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/hk;->m:Ljava/lang/String;

    .line 93
    iget-object v0, p0, Lcom/aadhk/restpos/d/hk;->v:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Company;->getTimeOut()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/hk;->o:Ljava/lang/String;

    .line 94
    iget-object v0, p0, Lcom/aadhk/restpos/d/hk;->m:Ljava/lang/String;

    iget-object v1, p0, Lcom/aadhk/restpos/d/hk;->o:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/aadhk/restpos/util/o;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aadhk/restpos/d/hk;->m:Ljava/lang/String;

    invoke-static {}, Lcom/aadhk/restpos/util/o;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/aadhk/restpos/util/o;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 95
    iget-object v0, p0, Lcom/aadhk/restpos/d/hk;->l:Ljava/lang/String;

    invoke-static {v0}, Lcom/aadhk/restpos/util/o;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/hk;->l:Ljava/lang/String;

    .line 100
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/hk;->r:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/aadhk/restpos/d/hk;->w:[Z

    .line 101
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/aadhk/restpos/d/hk;->r:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 102
    iget-object v1, p0, Lcom/aadhk/restpos/d/hk;->w:[Z

    iget-object v2, p0, Lcom/aadhk/restpos/d/hk;->d:Lcom/aadhk/restpos/util/r;

    iget-object v3, p0, Lcom/aadhk/restpos/d/hk;->r:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Lcom/aadhk/restpos/util/r;->b(Ljava/lang/String;)Z

    move-result v2

    aput-boolean v2, v1, v0

    .line 101
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 96
    :cond_1
    iget-object v0, p0, Lcom/aadhk/restpos/d/hk;->m:Ljava/lang/String;

    iget-object v1, p0, Lcom/aadhk/restpos/d/hk;->o:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/aadhk/restpos/util/o;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/aadhk/restpos/util/o;->f()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/d/hk;->o:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/aadhk/restpos/util/o;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/aadhk/restpos/d/hk;->n:Ljava/lang/String;

    invoke-static {v0}, Lcom/aadhk/restpos/util/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/hk;->n:Ljava/lang/String;

    goto :goto_0

    .line 105
    :cond_2
    iget-object v0, p0, Lcom/aadhk/restpos/d/hk;->b:Landroid/widget/ListView;

    new-instance v1, Lcom/aadhk/restpos/d/hn;

    iget-object v2, p0, Lcom/aadhk/restpos/d/hk;->a:Lcom/aadhk/restpos/ReportListActivity;

    invoke-direct {v1, p0, v2}, Lcom/aadhk/restpos/d/hn;-><init>(Lcom/aadhk/restpos/d/hk;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 107
    iget-object v0, p0, Lcom/aadhk/restpos/d/hk;->a:Lcom/aadhk/restpos/ReportListActivity;

    iget-boolean v0, v0, Lcom/aadhk/restpos/ReportListActivity;->a:Z

    if-eqz v0, :cond_3

    .line 108
    iget-object v0, p0, Lcom/aadhk/restpos/d/hk;->j:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 109
    invoke-direct {p0}, Lcom/aadhk/restpos/d/hk;->a()V

    .line 112
    :cond_3
    iget-object v0, p0, Lcom/aadhk/restpos/d/hk;->f:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/aadhk/restpos/d/hk;->l:Ljava/lang/String;

    iget-object v2, p0, Lcom/aadhk/restpos/d/hk;->q:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/aadhk/restpos/util/o;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 113
    iget-object v0, p0, Lcom/aadhk/restpos/d/hk;->g:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/aadhk/restpos/d/hk;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 114
    iget-object v0, p0, Lcom/aadhk/restpos/d/hk;->h:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/aadhk/restpos/d/hk;->n:Ljava/lang/String;

    iget-object v2, p0, Lcom/aadhk/restpos/d/hk;->q:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/aadhk/restpos/util/o;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 115
    iget-object v0, p0, Lcom/aadhk/restpos/d/hk;->i:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/aadhk/restpos/d/hk;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 116
    return-void
.end method

.method public final onAttach(Landroid/app/Activity;)V
    .locals 1
    .parameter

    .prologue
    .line 120
    move-object v0, p1

    check-cast v0, Lcom/aadhk/restpos/ReportListActivity;

    iput-object v0, p0, Lcom/aadhk/restpos/d/hk;->a:Lcom/aadhk/restpos/ReportListActivity;

    .line 121
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 122
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 250
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 267
    :goto_0
    return-void

    .line 252
    :pswitch_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/hk;->f:Landroid/widget/EditText;

    invoke-direct {p0, v0, v1}, Lcom/aadhk/restpos/d/hk;->a(Landroid/widget/EditText;I)V

    goto :goto_0

    .line 255
    :pswitch_1
    iget-object v0, p0, Lcom/aadhk/restpos/d/hk;->g:Landroid/widget/EditText;

    invoke-direct {p0, v0, v1}, Lcom/aadhk/restpos/d/hk;->b(Landroid/widget/EditText;I)V

    goto :goto_0

    .line 258
    :pswitch_2
    iget-object v0, p0, Lcom/aadhk/restpos/d/hk;->h:Landroid/widget/EditText;

    invoke-direct {p0, v0, v2}, Lcom/aadhk/restpos/d/hk;->a(Landroid/widget/EditText;I)V

    goto :goto_0

    .line 261
    :pswitch_3
    iget-object v0, p0, Lcom/aadhk/restpos/d/hk;->i:Landroid/widget/EditText;

    invoke-direct {p0, v0, v2}, Lcom/aadhk/restpos/d/hk;->b(Landroid/widget/EditText;I)V

    goto :goto_0

    .line 264
    :pswitch_4
    invoke-direct {p0}, Lcom/aadhk/restpos/d/hk;->a()V

    goto :goto_0

    .line 250
    :pswitch_data_0
    .packed-switch 0x7f090260
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 63
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 64
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const v1, 0x7f0801f9

    invoke-virtual {p0, v1}, Lcom/aadhk/restpos/d/hk;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    const v1, 0x7f080200

    invoke-virtual {p0, v1}, Lcom/aadhk/restpos/d/hk;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    const v1, 0x7f0802b5

    invoke-virtual {p0, v1}, Lcom/aadhk/restpos/d/hk;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    const v1, 0x7f0800ef

    invoke-virtual {p0, v1}, Lcom/aadhk/restpos/d/hk;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    const v1, 0x7f080308

    invoke-virtual {p0, v1}, Lcom/aadhk/restpos/d/hk;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const v2, 0x7f0801fa

    invoke-virtual {p0, v2}, Lcom/aadhk/restpos/d/hk;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const v2, 0x7f0801fb

    invoke-virtual {p0, v2}, Lcom/aadhk/restpos/d/hk;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const v2, 0x7f0801fc

    invoke-virtual {p0, v2}, Lcom/aadhk/restpos/d/hk;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/aadhk/restpos/d/hk;->s:[Ljava/lang/String;

    .line 65
    new-array v0, v7, [Ljava/lang/String;

    const v1, 0x7f080204

    invoke-virtual {p0, v1}, Lcom/aadhk/restpos/d/hk;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    const v1, 0x7f080205

    invoke-virtual {p0, v1}, Lcom/aadhk/restpos/d/hk;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    const v1, 0x7f080206

    invoke-virtual {p0, v1}, Lcom/aadhk/restpos/d/hk;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    const v1, 0x7f080207

    invoke-virtual {p0, v1}, Lcom/aadhk/restpos/d/hk;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    iput-object v0, p0, Lcom/aadhk/restpos/d/hk;->t:[Ljava/lang/String;

    .line 66
    const v0, 0x7f0801ea

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/d/hk;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/hk;->x:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 126
    const v0, 0x7f03009c

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/hk;->k:Landroid/view/View;

    .line 127
    iget-object v0, p0, Lcom/aadhk/restpos/d/hk;->k:Landroid/view/View;

    const v1, 0x7f0900a4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/hk;->b:Landroid/widget/ListView;

    .line 128
    iget-object v0, p0, Lcom/aadhk/restpos/d/hk;->k:Landroid/view/View;

    const v1, 0x7f090260

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/d/hk;->f:Landroid/widget/EditText;

    .line 129
    iget-object v0, p0, Lcom/aadhk/restpos/d/hk;->k:Landroid/view/View;

    const v1, 0x7f090261

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/d/hk;->g:Landroid/widget/EditText;

    .line 130
    iget-object v0, p0, Lcom/aadhk/restpos/d/hk;->k:Landroid/view/View;

    const v1, 0x7f090262

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/d/hk;->h:Landroid/widget/EditText;

    .line 131
    iget-object v0, p0, Lcom/aadhk/restpos/d/hk;->k:Landroid/view/View;

    const v1, 0x7f090263

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/aadhk/restpos/d/hk;->i:Landroid/widget/EditText;

    .line 132
    iget-object v0, p0, Lcom/aadhk/restpos/d/hk;->k:Landroid/view/View;

    const v1, 0x7f090264

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/d/hk;->j:Landroid/widget/Button;

    .line 134
    iget-object v0, p0, Lcom/aadhk/restpos/d/hk;->f:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    iget-object v0, p0, Lcom/aadhk/restpos/d/hk;->g:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    iget-object v0, p0, Lcom/aadhk/restpos/d/hk;->h:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    iget-object v0, p0, Lcom/aadhk/restpos/d/hk;->i:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    iget-object v0, p0, Lcom/aadhk/restpos/d/hk;->j:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    iget-object v0, p0, Lcom/aadhk/restpos/d/hk;->b:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 140
    iget-object v0, p0, Lcom/aadhk/restpos/d/hk;->k:Landroid/view/View;

    return-object v0
.end method

.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
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
    .line 71
    const v0, 0x7f090098

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 72
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 73
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    .line 74
    iget-object v1, p0, Lcom/aadhk/restpos/d/hk;->w:[Z

    aput-boolean v0, v1, p3

    .line 75
    iget-object v1, p0, Lcom/aadhk/restpos/d/hk;->d:Lcom/aadhk/restpos/util/r;

    iget-object v2, p0, Lcom/aadhk/restpos/d/hk;->r:[Ljava/lang/String;

    aget-object v2, v2, p3

    invoke-virtual {v1, v2, v0}, Lcom/aadhk/restpos/util/r;->a(Ljava/lang/String;Z)V

    .line 76
    iget-object v0, p0, Lcom/aadhk/restpos/d/hk;->a:Lcom/aadhk/restpos/ReportListActivity;

    iget-boolean v0, v0, Lcom/aadhk/restpos/ReportListActivity;->a:Z

    if-eqz v0, :cond_0

    .line 77
    invoke-direct {p0}, Lcom/aadhk/restpos/d/hk;->a()V

    .line 79
    :cond_0
    return-void

    .line 72
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
