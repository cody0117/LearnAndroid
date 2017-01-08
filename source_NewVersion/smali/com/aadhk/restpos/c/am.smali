.class public final Lcom/aadhk/restpos/c/am;
.super Lcom/aadhk/product/library/b/e;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private f:Landroid/content/Context;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Landroid/widget/LinearLayout;

.field private j:Landroid/widget/ExpandableListView;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/widget/Button;

.field private o:Landroid/widget/Button;

.field private p:Lcom/aadhk/restpos/e/f;

.field private q:Lcom/aadhk/restpos/bean/POSPrinterSetting;

.field private r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/Report;",
            ">;"
        }
    .end annotation
.end field

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private u:Ljava/lang/String;

.field private v:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/aadhk/restpos/bean/POSPrinterSetting;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/aadhk/restpos/bean/POSPrinterSetting;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/ReportItem;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 56
    const v0, 0x7f030043

    invoke-direct {p0, p1, v0}, Lcom/aadhk/product/library/b/e;-><init>(Landroid/content/Context;I)V

    .line 57
    iput-object p1, p0, Lcom/aadhk/restpos/c/am;->f:Landroid/content/Context;

    .line 58
    iput-object p3, p0, Lcom/aadhk/restpos/c/am;->t:Ljava/lang/String;

    .line 59
    iput-object p4, p0, Lcom/aadhk/restpos/c/am;->u:Ljava/lang/String;

    .line 60
    iput-object p6, p0, Lcom/aadhk/restpos/c/am;->h:Ljava/lang/String;

    .line 61
    iput-object p7, p0, Lcom/aadhk/restpos/c/am;->v:Ljava/lang/String;

    .line 62
    iput-object p2, p0, Lcom/aadhk/restpos/c/am;->q:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aadhk/restpos/c/am;->r:Ljava/util/List;

    .line 65
    new-instance v0, Lcom/aadhk/restpos/bean/Report;

    invoke-direct {v0}, Lcom/aadhk/restpos/bean/Report;-><init>()V

    .line 66
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/Report;->setId(I)V

    .line 67
    invoke-virtual {v0, p5}, Lcom/aadhk/restpos/bean/Report;->setReportItems(Ljava/util/List;)V

    .line 68
    iget-object v1, p0, Lcom/aadhk/restpos/c/am;->r:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    new-instance v0, Lcom/aadhk/restpos/e/f;

    invoke-direct {v0, p1}, Lcom/aadhk/restpos/e/f;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/aadhk/restpos/c/am;->p:Lcom/aadhk/restpos/e/f;

    .line 72
    new-instance v0, Lcom/aadhk/restpos/f/l;

    invoke-direct {v0, p1}, Lcom/aadhk/restpos/f/l;-><init>(Landroid/content/Context;)V

    .line 73
    invoke-virtual {v0}, Lcom/aadhk/restpos/f/l;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/c/am;->g:Ljava/lang/String;

    .line 75
    const v0, 0x7f0b00e9

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/am;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/aadhk/restpos/c/am;->i:Landroid/widget/LinearLayout;

    .line 76
    const v0, 0x7f0b00ea

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/am;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/c/am;->k:Landroid/widget/TextView;

    .line 77
    const v0, 0x7f0b005f

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/am;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/c/am;->l:Landroid/widget/TextView;

    .line 78
    const v0, 0x7f0b00eb

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/am;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ExpandableListView;

    iput-object v0, p0, Lcom/aadhk/restpos/c/am;->j:Landroid/widget/ExpandableListView;

    .line 79
    const v0, 0x7f0b00ec

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/am;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/c/am;->m:Landroid/widget/TextView;

    .line 80
    const v0, 0x7f0b00ed

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/am;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/c/am;->o:Landroid/widget/Button;

    .line 81
    const v0, 0x7f0b00ee

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/am;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/c/am;->n:Landroid/widget/Button;

    .line 82
    iget-object v0, p0, Lcom/aadhk/restpos/c/am;->n:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    iget-object v0, p0, Lcom/aadhk/restpos/c/am;->o:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    invoke-virtual {p2}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->isEnable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/aadhk/restpos/c/am;->o:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 89
    :cond_0
    invoke-static {}, Lcom/aadhk/product/library/c/c;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/c/am;->s:Ljava/lang/String;

    .line 90
    invoke-direct {p0}, Lcom/aadhk/restpos/c/am;->b()V

    .line 91
    return-void
.end method

.method static synthetic a(Lcom/aadhk/restpos/c/am;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/aadhk/restpos/c/am;->f:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b(Lcom/aadhk/restpos/c/am;)Lcom/aadhk/restpos/bean/POSPrinterSetting;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/aadhk/restpos/c/am;->q:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    return-object v0
.end method

.method private b()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 94
    iget-object v0, p0, Lcom/aadhk/restpos/c/am;->j:Landroid/widget/ExpandableListView;

    new-instance v2, Lcom/aadhk/restpos/a/ba;

    iget-object v3, p0, Lcom/aadhk/restpos/c/am;->f:Landroid/content/Context;

    iget-object v4, p0, Lcom/aadhk/restpos/c/am;->r:Ljava/util/List;

    invoke-direct {v2, v3, v4}, Lcom/aadhk/restpos/a/ba;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v0, v2}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 95
    iget-object v0, p0, Lcom/aadhk/restpos/c/am;->j:Landroid/widget/ExpandableListView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ExpandableListView;->setGroupIndicator(Landroid/graphics/drawable/Drawable;)V

    .line 96
    iget-object v0, p0, Lcom/aadhk/restpos/c/am;->j:Landroid/widget/ExpandableListView;

    new-instance v2, Lcom/aadhk/restpos/c/an;

    invoke-direct {v2, p0}, Lcom/aadhk/restpos/c/an;-><init>(Lcom/aadhk/restpos/c/am;)V

    invoke-virtual {v0, v2}, Landroid/widget/ExpandableListView;->setOnGroupClickListener(Landroid/widget/ExpandableListView$OnGroupClickListener;)V

    move v0, v1

    .line 103
    :goto_0
    iget-object v2, p0, Lcom/aadhk/restpos/c/am;->r:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 104
    iget-object v2, p0, Lcom/aadhk/restpos/c/am;->j:Landroid/widget/ExpandableListView;

    invoke-virtual {v2, v0}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    .line 103
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/aadhk/restpos/c/am;->t:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 107
    iget-object v0, p0, Lcom/aadhk/restpos/c/am;->i:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 112
    :goto_1
    iget-object v0, p0, Lcom/aadhk/restpos/c/am;->u:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 113
    iget-object v0, p0, Lcom/aadhk/restpos/c/am;->l:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/aadhk/restpos/c/am;->f:Landroid/content/Context;

    const v2, 0x7f0900e0

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    :goto_2
    iget-object v0, p0, Lcom/aadhk/restpos/c/am;->m:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/aadhk/restpos/c/am;->s:Ljava/lang/String;

    iget-object v2, p0, Lcom/aadhk/restpos/c/am;->g:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/aadhk/restpos/f/i;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    return-void

    .line 109
    :cond_1
    iget-object v0, p0, Lcom/aadhk/restpos/c/am;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 110
    iget-object v0, p0, Lcom/aadhk/restpos/c/am;->k:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/aadhk/restpos/c/am;->t:Ljava/lang/String;

    iget-object v2, p0, Lcom/aadhk/restpos/c/am;->g:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/aadhk/restpos/f/i;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 115
    :cond_2
    iget-object v0, p0, Lcom/aadhk/restpos/c/am;->l:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/aadhk/restpos/c/am;->u:Ljava/lang/String;

    iget-object v2, p0, Lcom/aadhk/restpos/c/am;->g:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/aadhk/restpos/f/i;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method static synthetic c(Lcom/aadhk/restpos/c/am;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/aadhk/restpos/c/am;->r:Ljava/util/List;

    return-object v0
.end method

.method static synthetic d(Lcom/aadhk/restpos/c/am;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/aadhk/restpos/c/am;->t:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/aadhk/restpos/c/am;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/aadhk/restpos/c/am;->u:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/aadhk/restpos/c/am;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/aadhk/restpos/c/am;->s:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcom/aadhk/restpos/c/am;)Lcom/aadhk/restpos/e/f;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/aadhk/restpos/c/am;->p:Lcom/aadhk/restpos/e/f;

    return-object v0
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 9
    .parameter
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 138
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 181
    :goto_0
    return-void

    .line 140
    :pswitch_0
    new-instance v0, Lcom/aadhk/product/library/a/a;

    iget-object v1, p0, Lcom/aadhk/restpos/c/am;->f:Landroid/content/Context;

    new-instance v2, Lcom/aadhk/restpos/c/ao;

    invoke-direct {v2, p0}, Lcom/aadhk/restpos/c/ao;-><init>(Lcom/aadhk/restpos/c/am;)V

    iget-object v3, p0, Lcom/aadhk/restpos/c/am;->c:Landroid/content/res/Resources;

    const v4, 0x7f090177

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/aadhk/product/library/a/a;-><init>(Landroid/content/Context;Lcom/aadhk/product/library/a/b;Ljava/lang/String;)V

    .line 164
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    .line 165
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1, v8}, Lcom/aadhk/product/library/a/a;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 167
    :cond_0
    invoke-virtual {v0, v8}, Lcom/aadhk/product/library/a/a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 171
    :pswitch_1
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/aadhk/restpos/f/d;->c:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/aadhk/restpos/c/am;->f:Landroid/content/Context;

    const v2, 0x7f0900eb

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/c/am;->u:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 173
    iget-object v0, p0, Lcom/aadhk/restpos/c/am;->p:Lcom/aadhk/restpos/e/f;

    iget-object v1, p0, Lcom/aadhk/restpos/c/am;->v:Ljava/lang/String;

    iget-object v2, p0, Lcom/aadhk/restpos/c/am;->q:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    iget-object v3, p0, Lcom/aadhk/restpos/c/am;->r:Ljava/util/List;

    iget-object v5, p0, Lcom/aadhk/restpos/c/am;->t:Ljava/lang/String;

    iget-object v6, p0, Lcom/aadhk/restpos/c/am;->u:Ljava/lang/String;

    iget-object v7, p0, Lcom/aadhk/restpos/c/am;->s:Ljava/lang/String;

    invoke-virtual/range {v0 .. v8}, Lcom/aadhk/restpos/e/f;->a(Ljava/lang/String;Lcom/aadhk/restpos/bean/POSPrinterSetting;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 138
    :pswitch_data_0
    .packed-switch 0x7f0b00ed
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
