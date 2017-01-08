.class public final Lcom/aadhk/restpos/c/bn;
.super Lcom/aadhk/product/library/b/e;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field f:Landroid/os/Handler;

.field private g:Landroid/widget/Button;

.field private h:Landroid/widget/Button;

.field private i:Landroid/widget/Button;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/TextView;

.field private m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/OrderItem;",
            ">;"
        }
    .end annotation
.end field

.field private n:Lcom/aadhk/restpos/bean/Order;

.field private o:Landroid/app/ProgressDialog;

.field private p:Lcom/aadhk/restpos/e/f;

.field private q:Lcom/aadhk/restpos/a/ad;

.field private r:Lcom/aadhk/restpos/bean/Company;

.field private s:Lcom/aadhk/restpos/bean/POSPrinterSetting;

.field private t:Lcom/aadhk/restpos/b/r;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/aadhk/restpos/bean/Order;Ljava/util/List;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/aadhk/restpos/bean/Order;",
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/OrderItem;",
            ">;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ")V"
        }
    .end annotation

    .prologue
    .line 53
    const v0, 0x7f030052

    invoke-direct {p0, p1, v0}, Lcom/aadhk/product/library/b/e;-><init>(Landroid/content/Context;I)V

    .line 150
    new-instance v0, Lcom/aadhk/restpos/c/bq;

    invoke-direct {v0, p0}, Lcom/aadhk/restpos/c/bq;-><init>(Lcom/aadhk/restpos/c/bn;)V

    iput-object v0, p0, Lcom/aadhk/restpos/c/bn;->f:Landroid/os/Handler;

    .line 54
    iput-object p2, p0, Lcom/aadhk/restpos/c/bn;->n:Lcom/aadhk/restpos/bean/Order;

    .line 55
    iput-object p3, p0, Lcom/aadhk/restpos/c/bn;->m:Ljava/util/List;

    .line 57
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/POSApp;

    invoke-virtual {v0}, Lcom/aadhk/restpos/POSApp;->b()Lcom/aadhk/restpos/bean/Company;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/c/bn;->r:Lcom/aadhk/restpos/bean/Company;

    .line 59
    new-instance v1, Lcom/aadhk/restpos/f/l;

    invoke-direct {v1, p1}, Lcom/aadhk/restpos/f/l;-><init>(Landroid/content/Context;)V

    .line 61
    const v0, 0x7f0b0116

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/bn;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/c/bn;->k:Landroid/widget/TextView;

    .line 62
    const v0, 0x7f0b0117

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/bn;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/c/bn;->l:Landroid/widget/TextView;

    .line 63
    const v0, 0x7f0b0119

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/bn;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/c/bn;->j:Landroid/widget/TextView;

    .line 65
    const v0, 0x7f0b0113

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/bn;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/c/bn;->h:Landroid/widget/Button;

    .line 66
    const v0, 0x7f0b0114

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/bn;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/c/bn;->i:Landroid/widget/Button;

    .line 67
    const v0, 0x7f0b011a

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/bn;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/c/bn;->g:Landroid/widget/Button;

    .line 68
    iget-object v0, p0, Lcom/aadhk/restpos/c/bn;->g:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    iget-object v0, p0, Lcom/aadhk/restpos/c/bn;->h:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    iget-object v0, p0, Lcom/aadhk/restpos/c/bn;->i:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    new-instance v0, Lcom/aadhk/restpos/b/r;

    invoke-direct {v0, p4}, Lcom/aadhk/restpos/b/r;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v0, p0, Lcom/aadhk/restpos/c/bn;->t:Lcom/aadhk/restpos/b/r;

    .line 73
    iget-object v0, p0, Lcom/aadhk/restpos/c/bn;->t:Lcom/aadhk/restpos/b/r;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/aadhk/restpos/b/r;->b(I)Lcom/aadhk/restpos/bean/POSPrinterSetting;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/c/bn;->s:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    .line 74
    iget-object v0, p0, Lcom/aadhk/restpos/c/bn;->s:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->isEnable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/aadhk/restpos/c/bn;->h:Landroid/widget/Button;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/aadhk/restpos/c/bn;->k:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/aadhk/restpos/bean/Order;->getOrderNum()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/aadhk/restpos/bean/Order;->getTableName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    iget-object v0, p0, Lcom/aadhk/restpos/c/bn;->l:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/aadhk/restpos/bean/Order;->getStartTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/aadhk/restpos/f/l;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/aadhk/restpos/f/i;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/aadhk/restpos/bean/Order;->getCancelPerson()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 83
    invoke-virtual {p2}, Lcom/aadhk/restpos/bean/Order;->getCancelReason()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 86
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/aadhk/restpos/bean/Order;->getCancelReason()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 88
    :cond_1
    iget-object v1, p0, Lcom/aadhk/restpos/c/bn;->j:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    new-instance v0, Lcom/aadhk/restpos/e/f;

    invoke-direct {v0, p1}, Lcom/aadhk/restpos/e/f;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/aadhk/restpos/c/bn;->p:Lcom/aadhk/restpos/e/f;

    .line 91
    invoke-direct {p0}, Lcom/aadhk/restpos/c/bn;->b()V

    .line 92
    return-void
.end method

.method static synthetic a(Lcom/aadhk/restpos/c/bn;)Lcom/aadhk/restpos/bean/POSPrinterSetting;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/aadhk/restpos/c/bn;->s:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    return-object v0
.end method

.method static synthetic b(Lcom/aadhk/restpos/c/bn;)Lcom/aadhk/restpos/bean/Order;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/aadhk/restpos/c/bn;->n:Lcom/aadhk/restpos/bean/Order;

    return-object v0
.end method

.method private b()V
    .locals 4

    .prologue
    .line 95
    const v0, 0x102000a

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/bn;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ExpandableListView;

    .line 96
    new-instance v1, Lcom/aadhk/restpos/a/ad;

    iget-object v2, p0, Lcom/aadhk/restpos/c/bn;->e:Landroid/content/Context;

    iget-object v3, p0, Lcom/aadhk/restpos/c/bn;->m:Ljava/util/List;

    invoke-direct {v1, v2, v3}, Lcom/aadhk/restpos/a/ad;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v1, p0, Lcom/aadhk/restpos/c/bn;->q:Lcom/aadhk/restpos/a/ad;

    .line 97
    iget-object v1, p0, Lcom/aadhk/restpos/c/bn;->q:Lcom/aadhk/restpos/a/ad;

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 98
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setGroupIndicator(Landroid/graphics/drawable/Drawable;)V

    .line 99
    new-instance v1, Lcom/aadhk/restpos/c/bo;

    invoke-direct {v1, p0}, Lcom/aadhk/restpos/c/bo;-><init>(Lcom/aadhk/restpos/c/bn;)V

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setOnGroupClickListener(Landroid/widget/ExpandableListView$OnGroupClickListener;)V

    .line 107
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/aadhk/restpos/c/bn;->m:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 108
    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    .line 107
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 110
    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/aadhk/restpos/c/bn;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/aadhk/restpos/c/bn;->m:Ljava/util/List;

    return-object v0
.end method

.method static synthetic d(Lcom/aadhk/restpos/c/bn;)Lcom/aadhk/restpos/e/f;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/aadhk/restpos/c/bn;->p:Lcom/aadhk/restpos/e/f;

    return-object v0
.end method

.method static synthetic e(Lcom/aadhk/restpos/c/bn;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/aadhk/restpos/c/bn;->o:Landroid/app/ProgressDialog;

    return-object v0
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x1

    .line 114
    iget-object v0, p0, Lcom/aadhk/restpos/c/bn;->g:Landroid/widget/Button;

    if-ne p1, v0, :cond_1

    .line 115
    invoke-virtual {p0}, Lcom/aadhk/restpos/c/bn;->dismiss()V

    .line 148
    :cond_0
    :goto_0
    return-void

    .line 116
    :cond_1
    iget-object v0, p0, Lcom/aadhk/restpos/c/bn;->h:Landroid/widget/Button;

    if-ne p1, v0, :cond_3

    .line 117
    iget-object v0, p0, Lcom/aadhk/restpos/c/bn;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 118
    new-instance v0, Lcom/aadhk/product/library/a/a;

    iget-object v1, p0, Lcom/aadhk/restpos/c/bn;->e:Landroid/content/Context;

    new-instance v2, Lcom/aadhk/restpos/c/bp;

    invoke-direct {v2, p0}, Lcom/aadhk/restpos/c/bp;-><init>(Lcom/aadhk/restpos/c/bn;)V

    iget-object v3, p0, Lcom/aadhk/restpos/c/bn;->c:Landroid/content/res/Resources;

    const v5, 0x7f090177

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/aadhk/product/library/a/a;-><init>(Landroid/content/Context;Lcom/aadhk/product/library/a/b;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lcom/aadhk/product/library/a/a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 141
    :cond_2
    iget-object v0, p0, Lcom/aadhk/restpos/c/bn;->e:Landroid/content/Context;

    const v1, 0x7f0901f4

    invoke-static {v0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 143
    :cond_3
    iget-object v0, p0, Lcom/aadhk/restpos/c/bn;->i:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/aadhk/restpos/c/bn;->r:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Company;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/c/bn;->e:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09012c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 145
    iget-object v0, p0, Lcom/aadhk/restpos/c/bn;->p:Lcom/aadhk/restpos/e/f;

    iget-object v1, p0, Lcom/aadhk/restpos/c/bn;->s:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    iget-object v2, p0, Lcom/aadhk/restpos/c/bn;->n:Lcom/aadhk/restpos/bean/Order;

    iget-object v3, p0, Lcom/aadhk/restpos/c/bn;->m:Ljava/util/List;

    invoke-virtual/range {v0 .. v6}, Lcom/aadhk/restpos/e/f;->a(Lcom/aadhk/restpos/bean/POSPrinterSetting;Lcom/aadhk/restpos/bean/Order;Ljava/util/List;Lcom/aadhk/restpos/bean/Customer;Ljava/lang/String;Z)V

    .line 146
    invoke-virtual {p0}, Lcom/aadhk/restpos/c/bn;->dismiss()V

    goto :goto_0
.end method
