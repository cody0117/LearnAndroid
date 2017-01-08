.class final Lcom/aadhk/restpos/c/bw;
.super Landroid/widget/BaseAdapter;
.source "ProGuard"


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/c/bv;

.field private b:Landroid/view/LayoutInflater;

.field private c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/aadhk/restpos/c/bv;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 49
    iput-object p1, p0, Lcom/aadhk/restpos/c/bw;->a:Lcom/aadhk/restpos/c/bv;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 50
    iput-object p2, p0, Lcom/aadhk/restpos/c/bw;->c:Landroid/content/Context;

    .line 51
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/c/bw;->b:Landroid/view/LayoutInflater;

    .line 52
    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/aadhk/restpos/c/bw;->a:Lcom/aadhk/restpos/c/bv;

    invoke-static {v0}, Lcom/aadhk/restpos/c/bv;->a(Lcom/aadhk/restpos/c/bv;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lcom/aadhk/restpos/c/bw;->a:Lcom/aadhk/restpos/c/bv;

    invoke-static {v0}, Lcom/aadhk/restpos/c/bv;->a(Lcom/aadhk/restpos/c/bv;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 66
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 72
    if-nez p2, :cond_1

    .line 73
    iget-object v0, p0, Lcom/aadhk/restpos/c/bw;->b:Landroid/view/LayoutInflater;

    const v1, 0x7f030097

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 74
    new-instance v1, Lcom/aadhk/restpos/c/bx;

    const/4 v0, 0x0

    invoke-direct {v1, p0, v0}, Lcom/aadhk/restpos/c/bx;-><init>(Lcom/aadhk/restpos/c/bw;B)V

    .line 75
    const v0, 0x7f0b011f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/aadhk/restpos/c/bx;->b:Landroid/widget/TextView;

    .line 76
    const v0, 0x7f0b0237

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/aadhk/restpos/c/bx;->c:Landroid/widget/TextView;

    .line 77
    const v0, 0x7f0b0236

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v1, Lcom/aadhk/restpos/c/bx;->a:Landroid/widget/LinearLayout;

    .line 78
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 83
    :goto_0
    invoke-virtual {p0, p1}, Lcom/aadhk/restpos/c/bw;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/Discount;

    .line 84
    iget-object v2, v1, Lcom/aadhk/restpos/c/bx;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Discount;->getReason()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Discount;->isPer()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 86
    iget-object v2, v1, Lcom/aadhk/restpos/c/bx;->c:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Discount;->getAmount()D

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/aadhk/restpos/f/j;->b(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    :goto_1
    iget-object v2, p0, Lcom/aadhk/restpos/c/bw;->a:Lcom/aadhk/restpos/c/bv;

    invoke-static {v2}, Lcom/aadhk/restpos/c/bv;->d(Lcom/aadhk/restpos/c/bv;)Lcom/aadhk/restpos/bean/Discount;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 92
    iget-object v2, p0, Lcom/aadhk/restpos/c/bw;->a:Lcom/aadhk/restpos/c/bv;

    invoke-static {v2}, Lcom/aadhk/restpos/c/bv;->d(Lcom/aadhk/restpos/c/bv;)Lcom/aadhk/restpos/bean/Discount;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/Discount;->getId()I

    move-result v2

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Discount;->getId()I

    move-result v0

    if-ne v2, v0, :cond_3

    .line 93
    iget-object v0, v1, Lcom/aadhk/restpos/c/bx;->a:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/aadhk/restpos/c/bw;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080069

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 98
    :cond_0
    :goto_2
    return-object p2

    .line 80
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/c/bx;

    move-object v1, v0

    goto :goto_0

    .line 88
    :cond_2
    iget-object v2, v1, Lcom/aadhk/restpos/c/bx;->c:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/aadhk/restpos/c/bw;->a:Lcom/aadhk/restpos/c/bv;

    invoke-static {v3}, Lcom/aadhk/restpos/c/bv;->b(Lcom/aadhk/restpos/c/bv;)I

    move-result v3

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Discount;->getAmount()D

    move-result-wide v4

    iget-object v6, p0, Lcom/aadhk/restpos/c/bw;->a:Lcom/aadhk/restpos/c/bv;

    invoke-static {v6}, Lcom/aadhk/restpos/c/bv;->c(Lcom/aadhk/restpos/c/bv;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v4, v5, v6}, Lcom/aadhk/restpos/f/j;->a(IDLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 95
    :cond_3
    iget-object v0, v1, Lcom/aadhk/restpos/c/bx;->a:Landroid/widget/LinearLayout;

    const v1, 0x7f020069

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_2
.end method
