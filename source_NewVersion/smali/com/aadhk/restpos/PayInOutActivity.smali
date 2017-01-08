.class public Lcom/aadhk/restpos/PayInOutActivity;
.super Lcom/aadhk/restpos/POSActivity;
.source "ProGuard"


# instance fields
.field private a:Landroid/support/v4/app/FragmentManager;

.field private l:I

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/ReportItem;",
            ">;"
        }
    .end annotation
.end field

.field private p:Lcom/aadhk/restpos/bean/POSPrinterSetting;

.field private q:Lcom/aadhk/restpos/b/a;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/aadhk/restpos/POSActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/aadhk/restpos/PayInOutActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 30
    const/4 v0, 0x5

    iput v0, p0, Lcom/aadhk/restpos/PayInOutActivity;->l:I

    return v0
.end method

.method static synthetic a(Lcom/aadhk/restpos/PayInOutActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 30
    iput-object p1, p0, Lcom/aadhk/restpos/PayInOutActivity;->s:Ljava/lang/String;

    return-object p1
.end method

.method private a(I)V
    .locals 2
    .parameter

    .prologue
    .line 174
    new-instance v0, Lcom/aadhk/restpos/c/az;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1}, Lcom/aadhk/restpos/c/az;-><init>(Lcom/aadhk/restpos/PayInOutActivity;Lcom/aadhk/restpos/bean/CashRegister;I)V

    .line 175
    new-instance v1, Lcom/aadhk/restpos/bg;

    invoke-direct {v1, p0}, Lcom/aadhk/restpos/bg;-><init>(Lcom/aadhk/restpos/PayInOutActivity;)V

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/az;->a(Lcom/aadhk/product/library/b/f;)V

    .line 195
    invoke-virtual {v0}, Lcom/aadhk/restpos/c/az;->show()V

    .line 196
    return-void
.end method

.method static synthetic a(Lcom/aadhk/restpos/PayInOutActivity;Lcom/aadhk/restpos/bean/CashRegister;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 30
    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/CashRegister;->getTranxType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/aadhk/restpos/PayInOutActivity;->q:Lcom/aadhk/restpos/b/a;

    invoke-virtual {v0, p1}, Lcom/aadhk/restpos/b/a;->a(Lcom/aadhk/restpos/bean/CashRegister;)J

    invoke-virtual {p0}, Lcom/aadhk/restpos/PayInOutActivity;->a()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/aadhk/restpos/PayInOutActivity;->q:Lcom/aadhk/restpos/b/a;

    invoke-virtual {v0, p1}, Lcom/aadhk/restpos/b/a;->a(Lcom/aadhk/restpos/bean/CashRegister;)J

    invoke-virtual {p0}, Lcom/aadhk/restpos/PayInOutActivity;->a()V

    goto :goto_0
.end method

.method static synthetic b(Lcom/aadhk/restpos/PayInOutActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/aadhk/restpos/PayInOutActivity;->r:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/aadhk/restpos/PayInOutActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/aadhk/restpos/PayInOutActivity;->s:Ljava/lang/String;

    return-object v0
.end method

.method private g()V
    .locals 15

    .prologue
    const/4 v11, 0x0

    .line 121
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aadhk/restpos/PayInOutActivity;->o:Ljava/util/List;

    .line 124
    iget-object v0, p0, Lcom/aadhk/restpos/PayInOutActivity;->q:Lcom/aadhk/restpos/b/a;

    iget-object v1, p0, Lcom/aadhk/restpos/PayInOutActivity;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/PayInOutActivity;->t:Ljava/lang/String;

    .line 125
    iget-object v0, p0, Lcom/aadhk/restpos/PayInOutActivity;->t:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/aadhk/restpos/PayInOutActivity;->q:Lcom/aadhk/restpos/b/a;

    iget-object v1, p0, Lcom/aadhk/restpos/PayInOutActivity;->t:Ljava/lang/String;

    invoke-virtual {v0, v11, v1}, Lcom/aadhk/restpos/b/a;->a(ILjava/lang/String;)D

    move-result-wide v0

    .line 130
    :goto_0
    new-instance v9, Lcom/aadhk/restpos/bean/ReportItem;

    invoke-direct {v9}, Lcom/aadhk/restpos/bean/ReportItem;-><init>()V

    .line 131
    invoke-virtual {p0}, Lcom/aadhk/restpos/PayInOutActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0900ec

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Lcom/aadhk/restpos/bean/ReportItem;->setName(Ljava/lang/String;)V

    .line 132
    invoke-virtual {v9, v0, v1}, Lcom/aadhk/restpos/bean/ReportItem;->setAmount(D)V

    .line 134
    iget-object v2, p0, Lcom/aadhk/restpos/PayInOutActivity;->q:Lcom/aadhk/restpos/b/a;

    iget-object v3, p0, Lcom/aadhk/restpos/PayInOutActivity;->t:Ljava/lang/String;

    iget-object v4, p0, Lcom/aadhk/restpos/PayInOutActivity;->r:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Lcom/aadhk/restpos/b/a;->a(Ljava/lang/String;Ljava/lang/String;I)D

    move-result-wide v2

    .line 135
    iget-object v4, p0, Lcom/aadhk/restpos/PayInOutActivity;->q:Lcom/aadhk/restpos/b/a;

    iget-object v5, p0, Lcom/aadhk/restpos/PayInOutActivity;->t:Ljava/lang/String;

    iget-object v6, p0, Lcom/aadhk/restpos/PayInOutActivity;->r:Ljava/lang/String;

    const/4 v7, 0x2

    invoke-virtual {v4, v5, v6, v7}, Lcom/aadhk/restpos/b/a;->a(Ljava/lang/String;Ljava/lang/String;I)D

    move-result-wide v4

    .line 136
    iget-object v6, p0, Lcom/aadhk/restpos/PayInOutActivity;->q:Lcom/aadhk/restpos/b/a;

    iget-object v7, p0, Lcom/aadhk/restpos/PayInOutActivity;->t:Ljava/lang/String;

    iget-object v8, p0, Lcom/aadhk/restpos/PayInOutActivity;->r:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Lcom/aadhk/restpos/b/a;->b(Ljava/lang/String;Ljava/lang/String;)D

    move-result-wide v6

    .line 137
    iget v8, p0, Lcom/aadhk/restpos/PayInOutActivity;->j:I

    invoke-static/range {v0 .. v8}, Lcom/aadhk/restpos/f/h;->a(DDDDI)D

    move-result-wide v0

    .line 138
    iget-object v8, p0, Lcom/aadhk/restpos/PayInOutActivity;->q:Lcom/aadhk/restpos/b/a;

    iget-object v10, p0, Lcom/aadhk/restpos/PayInOutActivity;->r:Ljava/lang/String;

    invoke-virtual {v8, v11, v10}, Lcom/aadhk/restpos/b/a;->a(ILjava/lang/String;)D

    move-result-wide v10

    .line 139
    iget v8, p0, Lcom/aadhk/restpos/PayInOutActivity;->j:I

    invoke-static {v0, v1, v10, v11, v8}, Lcom/aadhk/restpos/f/h;->c(DDI)D

    move-result-wide v12

    .line 141
    iget-object v8, p0, Lcom/aadhk/restpos/PayInOutActivity;->o:Ljava/util/List;

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    new-instance v8, Lcom/aadhk/restpos/bean/ReportItem;

    invoke-direct {v8}, Lcom/aadhk/restpos/bean/ReportItem;-><init>()V

    .line 143
    invoke-virtual {p0}, Lcom/aadhk/restpos/PayInOutActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v14, 0x7f0900ed

    invoke-virtual {v9, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/aadhk/restpos/bean/ReportItem;->setName(Ljava/lang/String;)V

    .line 144
    invoke-virtual {v8, v6, v7}, Lcom/aadhk/restpos/bean/ReportItem;->setAmount(D)V

    .line 145
    iget-object v6, p0, Lcom/aadhk/restpos/PayInOutActivity;->o:Ljava/util/List;

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    new-instance v6, Lcom/aadhk/restpos/bean/ReportItem;

    invoke-direct {v6}, Lcom/aadhk/restpos/bean/ReportItem;-><init>()V

    .line 147
    invoke-virtual {p0}, Lcom/aadhk/restpos/PayInOutActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0900d5

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/aadhk/restpos/bean/ReportItem;->setName(Ljava/lang/String;)V

    .line 148
    invoke-virtual {v6, v2, v3}, Lcom/aadhk/restpos/bean/ReportItem;->setAmount(D)V

    .line 149
    iget-object v2, p0, Lcom/aadhk/restpos/PayInOutActivity;->o:Ljava/util/List;

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    new-instance v2, Lcom/aadhk/restpos/bean/ReportItem;

    invoke-direct {v2}, Lcom/aadhk/restpos/bean/ReportItem;-><init>()V

    .line 151
    invoke-virtual {p0}, Lcom/aadhk/restpos/PayInOutActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f0900d6

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/aadhk/restpos/bean/ReportItem;->setName(Ljava/lang/String;)V

    .line 152
    invoke-virtual {v2, v4, v5}, Lcom/aadhk/restpos/bean/ReportItem;->setAmount(D)V

    .line 153
    iget-object v3, p0, Lcom/aadhk/restpos/PayInOutActivity;->o:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    new-instance v2, Lcom/aadhk/restpos/bean/ReportItem;

    invoke-direct {v2}, Lcom/aadhk/restpos/bean/ReportItem;-><init>()V

    .line 155
    invoke-virtual {p0}, Lcom/aadhk/restpos/PayInOutActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0900ee

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/aadhk/restpos/bean/ReportItem;->setName(Ljava/lang/String;)V

    .line 156
    invoke-virtual {v2, v0, v1}, Lcom/aadhk/restpos/bean/ReportItem;->setAmount(D)V

    .line 157
    iget-object v0, p0, Lcom/aadhk/restpos/PayInOutActivity;->o:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    new-instance v0, Lcom/aadhk/restpos/bean/ReportItem;

    invoke-direct {v0}, Lcom/aadhk/restpos/bean/ReportItem;-><init>()V

    .line 159
    invoke-virtual {p0}, Lcom/aadhk/restpos/PayInOutActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900ef

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/ReportItem;->setName(Ljava/lang/String;)V

    .line 160
    neg-double v1, v12

    .line 165
    invoke-virtual {v0, v1, v2}, Lcom/aadhk/restpos/bean/ReportItem;->setAmount(D)V

    .line 166
    iget-object v1, p0, Lcom/aadhk/restpos/PayInOutActivity;->o:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    new-instance v0, Lcom/aadhk/restpos/bean/ReportItem;

    invoke-direct {v0}, Lcom/aadhk/restpos/bean/ReportItem;-><init>()V

    .line 168
    invoke-virtual {p0}, Lcom/aadhk/restpos/PayInOutActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900f0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/ReportItem;->setName(Ljava/lang/String;)V

    .line 169
    invoke-virtual {v0, v10, v11}, Lcom/aadhk/restpos/bean/ReportItem;->setAmount(D)V

    .line 170
    iget-object v1, p0, Lcom/aadhk/restpos/PayInOutActivity;->o:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    return-void

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/aadhk/restpos/PayInOutActivity;->q:Lcom/aadhk/restpos/b/a;

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/aadhk/restpos/PayInOutActivity;->r:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/restpos/b/a;->a(ILjava/lang/String;)D

    move-result-wide v0

    goto/16 :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/aadhk/restpos/PayInOutActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/PayInOutActivity;->a:Landroid/support/v4/app/FragmentManager;

    .line 65
    iget-object v0, p0, Lcom/aadhk/restpos/PayInOutActivity;->a:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 66
    const v1, 0x7f0b0058

    new-instance v2, Lcom/aadhk/restpos/d/cb;

    invoke-direct {v2}, Lcom/aadhk/restpos/d/cb;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 67
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 68
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 230
    iput-object p1, p0, Lcom/aadhk/restpos/PayInOutActivity;->m:Ljava/lang/String;

    .line 231
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 209
    iget-object v0, p0, Lcom/aadhk/restpos/PayInOutActivity;->q:Lcom/aadhk/restpos/b/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/PayInOutActivity;->r:Ljava/lang/String;

    .line 210
    iget-object v0, p0, Lcom/aadhk/restpos/PayInOutActivity;->r:Ljava/lang/String;

    return-object v0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 234
    iput-object p1, p0, Lcom/aadhk/restpos/PayInOutActivity;->n:Ljava/lang/String;

    .line 235
    return-void
.end method

.method public final c()Lcom/aadhk/restpos/b/a;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/aadhk/restpos/PayInOutActivity;->q:Lcom/aadhk/restpos/b/a;

    return-object v0
.end method

.method public final d()I
    .locals 1

    .prologue
    .line 218
    iget v0, p0, Lcom/aadhk/restpos/PayInOutActivity;->l:I

    return v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/aadhk/restpos/PayInOutActivity;->m:Ljava/lang/String;

    return-object v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/aadhk/restpos/PayInOutActivity;->n:Ljava/lang/String;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 43
    invoke-super {p0, p1}, Lcom/aadhk/restpos/POSActivity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    invoke-virtual {p0}, Lcom/aadhk/restpos/PayInOutActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 45
    const v0, 0x7f03001d

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/PayInOutActivity;->setContentView(I)V

    .line 46
    const v0, 0x7f0900d0

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/PayInOutActivity;->setTitle(I)V

    .line 47
    invoke-static {}, Lcom/aadhk/restpos/b/f;->a()Lcom/aadhk/restpos/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/b/f;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 48
    new-instance v1, Lcom/aadhk/restpos/b/a;

    invoke-direct {v1, v0}, Lcom/aadhk/restpos/b/a;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v1, p0, Lcom/aadhk/restpos/PayInOutActivity;->q:Lcom/aadhk/restpos/b/a;

    .line 50
    new-instance v1, Lcom/aadhk/restpos/b/r;

    invoke-direct {v1, v0}, Lcom/aadhk/restpos/b/r;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 51
    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Lcom/aadhk/restpos/b/r;->b(I)Lcom/aadhk/restpos/bean/POSPrinterSetting;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/PayInOutActivity;->p:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    .line 52
    iget-object v0, p0, Lcom/aadhk/restpos/PayInOutActivity;->c:Lcom/aadhk/restpos/f/l;

    invoke-virtual {v0}, Lcom/aadhk/restpos/f/l;->f()I

    move-result v0

    iput v0, p0, Lcom/aadhk/restpos/PayInOutActivity;->l:I

    .line 53
    invoke-static {}, Lcom/aadhk/product/library/c/c;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/PayInOutActivity;->m:Ljava/lang/String;

    .line 54
    invoke-virtual {p0}, Lcom/aadhk/restpos/PayInOutActivity;->a()V

    .line 55
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/aadhk/restpos/PayInOutActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0f0002

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 73
    invoke-direct {p0}, Lcom/aadhk/restpos/PayInOutActivity;->g()V

    .line 74
    invoke-super {p0, p1}, Lcom/aadhk/restpos/POSActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 240
    invoke-static {}, Lcom/aadhk/restpos/b/f;->a()Lcom/aadhk/restpos/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/b/f;->c()V

    .line 241
    invoke-super {p0}, Lcom/aadhk/restpos/POSActivity;->onDestroy()V

    .line 242
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 9
    .parameter

    .prologue
    const/4 v2, 0x2

    const/4 v8, 0x1

    .line 79
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0b0280

    if-ne v0, v1, :cond_1

    .line 80
    invoke-direct {p0}, Lcom/aadhk/restpos/PayInOutActivity;->g()V

    .line 81
    new-instance v0, Lcom/aadhk/restpos/c/am;

    iget-object v2, p0, Lcom/aadhk/restpos/PayInOutActivity;->p:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    iget-object v3, p0, Lcom/aadhk/restpos/PayInOutActivity;->t:Ljava/lang/String;

    iget-object v4, p0, Lcom/aadhk/restpos/PayInOutActivity;->r:Ljava/lang/String;

    iget-object v5, p0, Lcom/aadhk/restpos/PayInOutActivity;->o:Ljava/util/List;

    iget-object v1, p0, Lcom/aadhk/restpos/PayInOutActivity;->d:Lcom/aadhk/restpos/bean/User;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/User;->getAccount()Ljava/lang/String;

    move-result-object v6

    iget-object v1, p0, Lcom/aadhk/restpos/PayInOutActivity;->e:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Company;->getEmail()Ljava/lang/String;

    move-result-object v7

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/aadhk/restpos/c/am;-><init>(Landroid/content/Context;Lcom/aadhk/restpos/bean/POSPrinterSetting;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    invoke-virtual {v0}, Lcom/aadhk/restpos/c/am;->show()V

    .line 117
    :cond_0
    :goto_0
    return v8

    .line 83
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0b0281

    if-ne v0, v1, :cond_2

    .line 84
    invoke-direct {p0, v8}, Lcom/aadhk/restpos/PayInOutActivity;->a(I)V

    goto :goto_0

    .line 85
    :cond_2
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0b0282

    if-ne v0, v1, :cond_3

    .line 86
    invoke-direct {p0, v2}, Lcom/aadhk/restpos/PayInOutActivity;->a(I)V

    goto :goto_0

    .line 87
    :cond_3
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0b0283

    if-ne v0, v1, :cond_4

    .line 88
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/aadhk/restpos/PayCloseOutActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 89
    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/PayInOutActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 90
    :cond_4
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0b0284

    if-ne v0, v1, :cond_5

    .line 91
    iput v2, p0, Lcom/aadhk/restpos/PayInOutActivity;->l:I

    .line 92
    invoke-virtual {p0}, Lcom/aadhk/restpos/PayInOutActivity;->a()V

    goto :goto_0

    .line 94
    :cond_5
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0b0285

    if-ne v0, v1, :cond_6

    .line 95
    const/4 v0, 0x3

    iput v0, p0, Lcom/aadhk/restpos/PayInOutActivity;->l:I

    .line 96
    invoke-virtual {p0}, Lcom/aadhk/restpos/PayInOutActivity;->a()V

    goto :goto_0

    .line 98
    :cond_6
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0b0286

    if-ne v0, v1, :cond_7

    .line 99
    const/4 v0, 0x4

    iput v0, p0, Lcom/aadhk/restpos/PayInOutActivity;->l:I

    .line 100
    invoke-virtual {p0}, Lcom/aadhk/restpos/PayInOutActivity;->a()V

    goto :goto_0

    .line 102
    :cond_7
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0b0287

    if-ne v0, v1, :cond_8

    .line 103
    new-instance v0, Lcom/aadhk/restpos/c/k;

    invoke-direct {v0, p0}, Lcom/aadhk/restpos/c/k;-><init>(Landroid/content/Context;)V

    .line 104
    new-instance v1, Lcom/aadhk/restpos/bf;

    invoke-direct {v1, p0}, Lcom/aadhk/restpos/bf;-><init>(Lcom/aadhk/restpos/PayInOutActivity;)V

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/k;->a(Lcom/aadhk/restpos/c/l;)V

    .line 113
    invoke-virtual {v0}, Lcom/aadhk/restpos/c/k;->show()V

    goto :goto_0

    .line 114
    :cond_8
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 115
    invoke-virtual {p0}, Lcom/aadhk/restpos/PayInOutActivity;->finish()V

    goto/16 :goto_0
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 59
    invoke-super {p0}, Lcom/aadhk/restpos/POSActivity;->onResume()V

    .line 60
    invoke-virtual {p0}, Lcom/aadhk/restpos/PayInOutActivity;->b()Ljava/lang/String;

    .line 61
    return-void
.end method
