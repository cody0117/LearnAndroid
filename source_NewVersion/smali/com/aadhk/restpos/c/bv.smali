.class public final Lcom/aadhk/restpos/c/bv;
.super Lcom/aadhk/product/library/b/e;
.source "ProGuard"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private f:Landroid/widget/ListView;

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/Discount;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/lang/String;

.field private i:I

.field private j:Lcom/aadhk/restpos/bean/Discount;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;ILjava/util/List;Lcom/aadhk/restpos/bean/Discount;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/Discount;",
            ">;",
            "Lcom/aadhk/restpos/bean/Discount;",
            ")V"
        }
    .end annotation

    .prologue
    .line 34
    const v0, 0x7f030056

    invoke-direct {p0, p1, v0}, Lcom/aadhk/product/library/b/e;-><init>(Landroid/content/Context;I)V

    .line 35
    iput-object p2, p0, Lcom/aadhk/restpos/c/bv;->h:Ljava/lang/String;

    .line 36
    iput p3, p0, Lcom/aadhk/restpos/c/bv;->i:I

    .line 37
    iput-object p5, p0, Lcom/aadhk/restpos/c/bv;->j:Lcom/aadhk/restpos/bean/Discount;

    .line 38
    iput-object p4, p0, Lcom/aadhk/restpos/c/bv;->g:Ljava/util/List;

    .line 40
    const v0, 0x7f0b0120

    invoke-virtual {p0, v0}, Lcom/aadhk/restpos/c/bv;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/aadhk/restpos/c/bv;->f:Landroid/widget/ListView;

    .line 41
    iget-object v0, p0, Lcom/aadhk/restpos/c/bv;->f:Landroid/widget/ListView;

    new-instance v1, Lcom/aadhk/restpos/c/bw;

    invoke-direct {v1, p0, p1}, Lcom/aadhk/restpos/c/bw;-><init>(Lcom/aadhk/restpos/c/bv;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 42
    iget-object v0, p0, Lcom/aadhk/restpos/c/bv;->f:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 43
    return-void
.end method

.method static synthetic a(Lcom/aadhk/restpos/c/bv;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/aadhk/restpos/c/bv;->g:Ljava/util/List;

    return-object v0
.end method

.method static synthetic b(Lcom/aadhk/restpos/c/bv;)I
    .locals 1
    .parameter

    .prologue
    .line 24
    iget v0, p0, Lcom/aadhk/restpos/c/bv;->i:I

    return v0
.end method

.method static synthetic c(Lcom/aadhk/restpos/c/bv;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/aadhk/restpos/c/bv;->h:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/aadhk/restpos/c/bv;)Lcom/aadhk/restpos/bean/Discount;
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/aadhk/restpos/c/bv;->j:Lcom/aadhk/restpos/bean/Discount;

    return-object v0
.end method


# virtual methods
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
    .line 109
    iget-object v0, p0, Lcom/aadhk/restpos/c/bv;->g:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/Discount;

    .line 110
    iget-object v1, p0, Lcom/aadhk/restpos/c/bv;->j:Lcom/aadhk/restpos/bean/Discount;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/aadhk/restpos/c/bv;->j:Lcom/aadhk/restpos/bean/Discount;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Discount;->getId()I

    move-result v1

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Discount;->getId()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 111
    iget-object v0, p0, Lcom/aadhk/restpos/c/bv;->a:Lcom/aadhk/product/library/b/f;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/aadhk/product/library/b/f;->a(Ljava/lang/Object;)V

    .line 116
    :goto_0
    invoke-virtual {p0}, Lcom/aadhk/restpos/c/bv;->dismiss()V

    .line 117
    return-void

    .line 113
    :cond_0
    iget-object v1, p0, Lcom/aadhk/restpos/c/bv;->a:Lcom/aadhk/product/library/b/f;

    invoke-interface {v1, v0}, Lcom/aadhk/product/library/b/f;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method
