.class public final Lcom/aadhk/restpos/c/bc;
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

.field private p:Lcom/aadhk/restpos/e/g;

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

.field private v:Lcom/aadhk/restpos/util/r;

.field private w:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/aadhk/restpos/bean/POSPrinterSetting;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/aadhk/restpos/util/r;)V
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
            "Lcom/aadhk/restpos/util/r;",
            ")V"
        }
    .end annotation

    .prologue
    .line 53
    const v0, 0x7f030052

    invoke-direct {p0, p1, v0}, Lcom/aadhk/product/library/b/e;-><init>(Landroid/content/Context;I)V

    .line 54
    iput-object p1, p0, Lcom/aadhk/restpos/c/bc;->f:Landroid/content/Context;

    .line 55
    iput-object p3, p0, Lcom/aadhk/restpos/c/bc;->t:Ljava/lang/String;

    .line 56
    iput-object p4, p0, Lcom/aadhk/restpos/c/bc;->u:Ljava/lang/String;

    .line 57
    iput-object p6, p0, Lcom/aadhk/restpos/c/bc;->w:Ljava/lang/String;

    .line 58
    iput-object p7, p0, Lcom/aadhk/restpos/c/bc;->v:Lcom/aadhk/restpos/util/r;

    .line 59
    iput-object p2, p0, Lcom/aadhk/restpos/c/bc;->q:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aadhk/restpos/c/bc;->r:Ljava/util/List;

    .line 62
    new-instance v0, Lcom/aadhk/restpos/bean/Report;

    invoke-direct {v0}, Lcom/aadhk/restpos/bean/Report;-><init>()V

    .line 63
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/Report;->setId(I)V

    .line 64
    invoke-virtual {v0, p5}, Lcom/aadhk/restpos/bean/Report;->setReportItems(Ljava/util/List;)V

    .line 65
    iget-object v1, p0, Lcom/aadhk/restpos/c/bc;->r:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    new-instance v0, Lcom/aadhk/restpos/e/g;

    invoke-direct {v0, p1}, Lcom/aadhk/restpos/e/g;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/aadhk/restpos/c/bc;->p:Lcom/aadhk/restpos/e/g;

    .line 68
    invoke-virtual {p7}, Lcom/aadhk/restpos/util/r;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/c/bc;->g:Ljava/lang/String;

    .line 69
    invoke-virtual {p7}, Lcom/aadhk/restpos/util/r;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/c/bc;->h:Ljava/lang/String;

    .line 71
    const v0, 0x7f090125

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/bc;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/aadhk/restpos/c/bc;->i:Landroid/widget/LinearLayout;

    .line 72
    const v0, 0x7f090126

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/bc;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/c/bc;->k:Landroid/widget/TextView;

    .line 73
    const v0, 0x7f09006b

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/bc;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/c/bc;->l:Landroid/widget/TextView;

    .line 74
    const v0, 0x7f090127

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/bc;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ExpandableListView;

    iput-object v0, p0, Lcom/aadhk/restpos/c/bc;->j:Landroid/widget/ExpandableListView;

    .line 75
    const v0, 0x7f090128

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/bc;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/c/bc;->m:Landroid/widget/TextView;

    .line 76
    const v0, 0x7f090129

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/bc;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/c/bc;->o:Landroid/widget/Button;

    .line 77
    const v0, 0x7f09012a

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/bc;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/c/bc;->n:Landroid/widget/Button;

    .line 78
    iget-object v0, p0, Lcom/aadhk/restpos/c/bc;->n:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    iget-object v0, p0, Lcom/aadhk/restpos/c/bc;->o:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    invoke-virtual {p2}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->isEnable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/aadhk/restpos/c/bc;->o:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 85
    :cond_0
    invoke-static {}, Lcom/aadhk/product/library/c/c;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/c/bc;->s:Ljava/lang/String;

    .line 86
    invoke-direct {p0}, Lcom/aadhk/restpos/c/bc;->b()V

    .line 87
    return-void
.end method

.method static synthetic a(Lcom/aadhk/restpos/c/bc;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/aadhk/restpos/c/bc;->f:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b(Lcom/aadhk/restpos/c/bc;)Lcom/aadhk/restpos/bean/POSPrinterSetting;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/aadhk/restpos/c/bc;->q:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    return-object v0
.end method

.method private b()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 90
    iget-object v0, p0, Lcom/aadhk/restpos/c/bc;->j:Landroid/widget/ExpandableListView;

    new-instance v2, Lcom/aadhk/restpos/a/bf;

    iget-object v3, p0, Lcom/aadhk/restpos/c/bc;->f:Landroid/content/Context;

    iget-object v4, p0, Lcom/aadhk/restpos/c/bc;->r:Ljava/util/List;

    invoke-direct {v2, v3, v4}, Lcom/aadhk/restpos/a/bf;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v0, v2}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 91
    iget-object v0, p0, Lcom/aadhk/restpos/c/bc;->j:Landroid/widget/ExpandableListView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ExpandableListView;->setGroupIndicator(Landroid/graphics/drawable/Drawable;)V

    .line 92
    iget-object v0, p0, Lcom/aadhk/restpos/c/bc;->j:Landroid/widget/ExpandableListView;

    new-instance v2, Lcom/aadhk/restpos/c/bd;

    invoke-direct {v2, p0}, Lcom/aadhk/restpos/c/bd;-><init>(Lcom/aadhk/restpos/c/bc;)V

    invoke-virtual {v0, v2}, Landroid/widget/ExpandableListView;->setOnGroupClickListener(Landroid/widget/ExpandableListView$OnGroupClickListener;)V

    move v0, v1

    .line 99
    :goto_0
    iget-object v2, p0, Lcom/aadhk/restpos/c/bc;->r:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 100
    iget-object v2, p0, Lcom/aadhk/restpos/c/bc;->j:Landroid/widget/ExpandableListView;

    invoke-virtual {v2, v0}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    .line 99
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/aadhk/restpos/c/bc;->t:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 103
    iget-object v0, p0, Lcom/aadhk/restpos/c/bc;->i:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 108
    :goto_1
    iget-object v0, p0, Lcom/aadhk/restpos/c/bc;->u:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 109
    iget-object v0, p0, Lcom/aadhk/restpos/c/bc;->l:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/aadhk/restpos/c/bc;->f:Landroid/content/Context;

    const v2, 0x7f08010f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    :goto_2
    iget-object v0, p0, Lcom/aadhk/restpos/c/bc;->m:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/aadhk/restpos/c/bc;->s:Ljava/lang/String;

    iget-object v2, p0, Lcom/aadhk/restpos/c/bc;->g:Ljava/lang/String;

    iget-object v3, p0, Lcom/aadhk/restpos/c/bc;->h:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/aadhk/restpos/util/o;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    return-void

    .line 105
    :cond_1
    iget-object v0, p0, Lcom/aadhk/restpos/c/bc;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 106
    iget-object v0, p0, Lcom/aadhk/restpos/c/bc;->k:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/aadhk/restpos/c/bc;->t:Ljava/lang/String;

    iget-object v2, p0, Lcom/aadhk/restpos/c/bc;->g:Ljava/lang/String;

    iget-object v3, p0, Lcom/aadhk/restpos/c/bc;->h:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/aadhk/restpos/util/o;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 111
    :cond_2
    iget-object v0, p0, Lcom/aadhk/restpos/c/bc;->l:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/aadhk/restpos/c/bc;->u:Ljava/lang/String;

    iget-object v2, p0, Lcom/aadhk/restpos/c/bc;->g:Ljava/lang/String;

    iget-object v3, p0, Lcom/aadhk/restpos/c/bc;->h:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/aadhk/restpos/util/o;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method static synthetic c(Lcom/aadhk/restpos/c/bc;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/aadhk/restpos/c/bc;->r:Ljava/util/List;

    return-object v0
.end method

.method static synthetic d(Lcom/aadhk/restpos/c/bc;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/aadhk/restpos/c/bc;->t:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/aadhk/restpos/c/bc;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/aadhk/restpos/c/bc;->u:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/aadhk/restpos/c/bc;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/aadhk/restpos/c/bc;->s:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcom/aadhk/restpos/c/bc;)Lcom/aadhk/restpos/e/g;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/aadhk/restpos/c/bc;->p:Lcom/aadhk/restpos/e/g;

    return-object v0
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 9
    .parameter

    .prologue
    const/4 v8, 0x0

    .line 129
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 168
    :goto_0
    return-void

    .line 131
    :pswitch_0
    new-instance v0, Lcom/aadhk/product/library/a/d;

    new-instance v1, Lcom/aadhk/restpos/c/be;

    invoke-direct {v1, p0}, Lcom/aadhk/restpos/c/be;-><init>(Lcom/aadhk/restpos/c/bc;)V

    iget-object v2, p0, Lcom/aadhk/restpos/c/bc;->f:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/aadhk/product/library/a/d;-><init>(Lcom/aadhk/product/library/a/c;Landroid/content/Context;B)V

    .line 155
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1, v8}, Lcom/aadhk/product/library/a/d;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 158
    :pswitch_1
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/aadhk/restpos/util/f;->c:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/aadhk/restpos/c/bc;->f:Landroid/content/Context;

    const v2, 0x7f08011a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/c/bc;->u:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 160
    iget-object v0, p0, Lcom/aadhk/restpos/c/bc;->p:Lcom/aadhk/restpos/e/g;

    iget-object v1, p0, Lcom/aadhk/restpos/c/bc;->w:Ljava/lang/String;

    iget-object v2, p0, Lcom/aadhk/restpos/c/bc;->q:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    iget-object v3, p0, Lcom/aadhk/restpos/c/bc;->r:Ljava/util/List;

    iget-object v5, p0, Lcom/aadhk/restpos/c/bc;->t:Ljava/lang/String;

    iget-object v6, p0, Lcom/aadhk/restpos/c/bc;->u:Ljava/lang/String;

    iget-object v7, p0, Lcom/aadhk/restpos/c/bc;->s:Ljava/lang/String;

    invoke-virtual/range {v0 .. v8}, Lcom/aadhk/restpos/e/g;->a(Ljava/lang/String;Lcom/aadhk/restpos/bean/POSPrinterSetting;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 129
    :pswitch_data_0
    .packed-switch 0x7f090129
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
