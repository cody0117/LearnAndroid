.class final Lcom/aadhk/restpos/d/jm;
.super Landroid/widget/BaseAdapter;
.source "ProGuard"


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/d/jh;

.field private b:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Lcom/aadhk/restpos/d/jh;)V
    .locals 1
    .parameter

    .prologue
    .line 594
    iput-object p1, p0, Lcom/aadhk/restpos/d/jm;->a:Lcom/aadhk/restpos/d/jh;

    .line 595
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 596
    invoke-static {p1}, Lcom/aadhk/restpos/d/jh;->a(Lcom/aadhk/restpos/d/jh;)Lcom/aadhk/restpos/SplitBillActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/jm;->b:Landroid/view/LayoutInflater;

    .line 597
    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 601
    iget-object v0, p0, Lcom/aadhk/restpos/d/jm;->a:Lcom/aadhk/restpos/d/jh;

    invoke-static {v0}, Lcom/aadhk/restpos/d/jh;->c(Lcom/aadhk/restpos/d/jh;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 606
    iget-object v0, p0, Lcom/aadhk/restpos/d/jm;->a:Lcom/aadhk/restpos/d/jh;

    invoke-static {v0}, Lcom/aadhk/restpos/d/jh;->c(Lcom/aadhk/restpos/d/jh;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 611
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 617
    if-nez p2, :cond_0

    .line 618
    iget-object v0, p0, Lcom/aadhk/restpos/d/jm;->b:Landroid/view/LayoutInflater;

    const v1, 0x7f0300a3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 619
    new-instance v1, Lcom/aadhk/restpos/d/jo;

    invoke-direct {v1, p0, v7}, Lcom/aadhk/restpos/d/jo;-><init>(Lcom/aadhk/restpos/d/jm;B)V

    .line 620
    const v0, 0x7f09027b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/aadhk/restpos/d/jo;->a:Landroid/widget/TextView;

    .line 621
    const v0, 0x7f09027d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/aadhk/restpos/d/jo;->b:Landroid/widget/ImageView;

    .line 622
    const v0, 0x7f09027c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/aadhk/restpos/d/jo;->c:Landroid/widget/ImageView;

    .line 623
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 627
    :goto_0
    invoke-virtual {p0, p1}, Lcom/aadhk/restpos/d/jm;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/SplitBill;

    .line 628
    iget-object v2, v1, Lcom/aadhk/restpos/d/jo;->c:Landroid/widget/ImageView;

    new-instance v3, Lcom/aadhk/restpos/d/jn;

    invoke-direct {v3, p0, p1, v0}, Lcom/aadhk/restpos/d/jn;-><init>(Lcom/aadhk/restpos/d/jm;ILcom/aadhk/restpos/bean/SplitBill;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 636
    iget-object v2, v1, Lcom/aadhk/restpos/d/jo;->a:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/aadhk/restpos/d/jm;->a:Lcom/aadhk/restpos/d/jh;

    invoke-static {v3}, Lcom/aadhk/restpos/d/jh;->i(Lcom/aadhk/restpos/d/jh;)I

    move-result v3

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/SplitBill;->getAmount()D

    move-result-wide v4

    iget-object v6, p0, Lcom/aadhk/restpos/d/jm;->a:Lcom/aadhk/restpos/d/jh;

    invoke-static {v6}, Lcom/aadhk/restpos/d/jh;->j(Lcom/aadhk/restpos/d/jh;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v4, v5, v6}, Lcom/aadhk/restpos/util/p;->a(IDLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 637
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/SplitBill;->isPaid()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 638
    iget-object v0, v1, Lcom/aadhk/restpos/d/jo;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 639
    iget-object v0, v1, Lcom/aadhk/restpos/d/jo;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 644
    :goto_1
    return-object p2

    .line 625
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/d/jo;

    move-object v1, v0

    goto :goto_0

    .line 641
    :cond_1
    iget-object v0, v1, Lcom/aadhk/restpos/d/jo;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 642
    iget-object v0, v1, Lcom/aadhk/restpos/d/jo;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method
