.class public final Lcom/aadhk/restpos/c/bk;
.super Lcom/aadhk/product/library/b/e;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private f:Landroid/widget/Button;

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/ReportItem;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lcom/aadhk/restpos/c/bl;

.field private i:Landroid/widget/ListView;

.field private j:Ljava/lang/String;

.field private k:I

.field private l:D

.field private m:I

.field private n:I

.field private o:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;I)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/ReportItem;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 40
    const v0, 0x7f030050

    invoke-direct {p0, p1, v0}, Lcom/aadhk/product/library/b/e;-><init>(Landroid/content/Context;I)V

    .line 41
    iput-object p2, p0, Lcom/aadhk/restpos/c/bk;->g:Ljava/util/List;

    .line 42
    iput-object p3, p0, Lcom/aadhk/restpos/c/bk;->j:Ljava/lang/String;

    .line 43
    const v0, 0x7f0b0086

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/bk;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/aadhk/restpos/c/bk;->i:Landroid/widget/ListView;

    .line 44
    const v0, 0x7f0b00b3

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/bk;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/c/bk;->f:Landroid/widget/Button;

    .line 45
    iget-object v0, p0, Lcom/aadhk/restpos/c/bk;->f:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    const v0, 0x7f0b0111

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/bk;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/aadhk/restpos/c/bk;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Lcom/aadhk/restpos/c/bl;

    iget-object v1, p0, Lcom/aadhk/restpos/c/bk;->e:Landroid/content/Context;

    iget-object v2, p0, Lcom/aadhk/restpos/c/bk;->g:Ljava/util/List;

    invoke-direct {v0, p0, v1, v2}, Lcom/aadhk/restpos/c/bl;-><init>(Lcom/aadhk/restpos/c/bk;Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/aadhk/restpos/c/bk;->h:Lcom/aadhk/restpos/c/bl;

    iget-object v0, p0, Lcom/aadhk/restpos/c/bk;->i:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/aadhk/restpos/c/bk;->h:Lcom/aadhk/restpos/c/bl;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 47
    iput p4, p0, Lcom/aadhk/restpos/c/bk;->m:I

    .line 49
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/ReportItem;

    .line 50
    iget v2, p0, Lcom/aadhk/restpos/c/bk;->k:I

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/ReportItem;->getCount()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/aadhk/restpos/c/bk;->k:I

    .line 51
    iget-wide v2, p0, Lcom/aadhk/restpos/c/bk;->l:D

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/ReportItem;->getAmount()D

    move-result-wide v4

    add-double/2addr v2, v4

    iput-wide v2, p0, Lcom/aadhk/restpos/c/bk;->l:D

    goto :goto_0

    .line 54
    :cond_0
    const/4 v0, 0x5

    if-ne p4, v0, :cond_1

    .line 55
    const/4 v0, 0x1

    iget-wide v1, p0, Lcom/aadhk/restpos/c/bk;->l:D

    invoke-direct {p0, v0, v1, v2}, Lcom/aadhk/restpos/c/bk;->a(ID)V

    .line 59
    :goto_1
    return-void

    .line 57
    :cond_1
    const/4 v0, 0x2

    iget v1, p0, Lcom/aadhk/restpos/c/bk;->k:I

    int-to-double v1, v1

    invoke-direct {p0, v0, v1, v2}, Lcom/aadhk/restpos/c/bk;->a(ID)V

    goto :goto_1
.end method

.method static synthetic a(Lcom/aadhk/restpos/c/bk;)I
    .locals 1
    .parameter

    .prologue
    .line 25
    iget v0, p0, Lcom/aadhk/restpos/c/bk;->m:I

    return v0
.end method

.method private a(ID)V
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/aadhk/restpos/c/bk;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 63
    iget-object v0, p0, Lcom/aadhk/restpos/c/bk;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/ReportItem;

    .line 65
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 66
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/ReportItem;->getAmount()D

    move-result-wide v3

    const-wide/high16 v5, 0x4059

    mul-double/2addr v3, v5

    div-double/2addr v3, p2

    double-to-int v1, v3

    .line 70
    :goto_1
    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/ReportItem;->setPercentage(I)V

    .line 71
    iget v0, p0, Lcom/aadhk/restpos/c/bk;->n:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/aadhk/restpos/c/bk;->n:I

    goto :goto_0

    .line 68
    :cond_0
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/ReportItem;->getCount()I

    move-result v1

    mul-int/lit8 v1, v1, 0x64

    int-to-double v3, v1

    div-double/2addr v3, p2

    double-to-int v1, v3

    goto :goto_1

    .line 73
    :cond_1
    iget v0, p0, Lcom/aadhk/restpos/c/bk;->n:I

    rsub-int/lit8 v0, v0, 0x64

    iput v0, p0, Lcom/aadhk/restpos/c/bk;->o:I

    .line 74
    iget v0, p0, Lcom/aadhk/restpos/c/bk;->o:I

    if-lez v0, :cond_5

    .line 75
    :cond_2
    iget-object v0, p0, Lcom/aadhk/restpos/c/bk;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/ReportItem;

    iget v2, p0, Lcom/aadhk/restpos/c/bk;->o:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/aadhk/restpos/c/bk;->o:I

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/ReportItem;->getPercentage()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Lcom/aadhk/restpos/bean/ReportItem;->setPercentage(I)V

    iget v0, p0, Lcom/aadhk/restpos/c/bk;->o:I

    if-nez v0, :cond_3

    :cond_4
    iget v0, p0, Lcom/aadhk/restpos/c/bk;->o:I

    if-gtz v0, :cond_2

    .line 78
    :cond_5
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 102
    iget-object v0, p0, Lcom/aadhk/restpos/c/bk;->f:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 103
    invoke-virtual {p0}, Lcom/aadhk/restpos/c/bk;->dismiss()V

    .line 105
    :cond_0
    return-void
.end method
