.class final Lcom/aadhk/restpos/d/bb;
.super Landroid/widget/BaseAdapter;
.source "ProGuard"


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/d/au;


# direct methods
.method private constructor <init>(Lcom/aadhk/restpos/d/au;)V
    .locals 0
    .parameter

    .prologue
    .line 416
    iput-object p1, p0, Lcom/aadhk/restpos/d/bb;->a:Lcom/aadhk/restpos/d/au;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 459
    return-void
.end method

.method synthetic constructor <init>(Lcom/aadhk/restpos/d/au;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 416
    invoke-direct {p0, p1}, Lcom/aadhk/restpos/d/bb;-><init>(Lcom/aadhk/restpos/d/au;)V

    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 420
    iget-object v0, p0, Lcom/aadhk/restpos/d/bb;->a:Lcom/aadhk/restpos/d/au;

    invoke-static {v0}, Lcom/aadhk/restpos/d/au;->a(Lcom/aadhk/restpos/d/au;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 425
    iget-object v0, p0, Lcom/aadhk/restpos/d/bb;->a:Lcom/aadhk/restpos/d/au;

    invoke-static {v0}, Lcom/aadhk/restpos/d/au;->a(Lcom/aadhk/restpos/d/au;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 430
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 436
    if-nez p2, :cond_1

    .line 437
    iget-object v0, p0, Lcom/aadhk/restpos/d/bb;->a:Lcom/aadhk/restpos/d/au;

    invoke-static {v0}, Lcom/aadhk/restpos/d/au;->g(Lcom/aadhk/restpos/d/au;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300a2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 438
    new-instance v1, Lcom/aadhk/restpos/d/bc;

    const/4 v0, 0x0

    invoke-direct {v1, p0, v0}, Lcom/aadhk/restpos/d/bc;-><init>(Lcom/aadhk/restpos/d/bb;B)V

    .line 439
    const v0, 0x7f0b0241

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/aadhk/restpos/d/bc;->a:Landroid/widget/TextView;

    .line 440
    const v0, 0x7f0b012c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/aadhk/restpos/d/bc;->b:Landroid/widget/TextView;

    .line 441
    const v0, 0x7f0b00d3

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/aadhk/restpos/d/bc;->c:Landroid/widget/TextView;

    .line 442
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 447
    :goto_0
    invoke-virtual {p0, p1}, Lcom/aadhk/restpos/d/bb;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/Modifier;

    .line 448
    iget-object v2, v1, Lcom/aadhk/restpos/d/bc;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Modifier;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 449
    iget-object v2, v1, Lcom/aadhk/restpos/d/bc;->c:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/aadhk/restpos/d/bb;->a:Lcom/aadhk/restpos/d/au;

    invoke-static {v3}, Lcom/aadhk/restpos/d/au;->h(Lcom/aadhk/restpos/d/au;)I

    move-result v3

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Modifier;->getPrice()D

    move-result-wide v4

    iget-object v6, p0, Lcom/aadhk/restpos/d/bb;->a:Lcom/aadhk/restpos/d/au;

    invoke-static {v6}, Lcom/aadhk/restpos/d/au;->i(Lcom/aadhk/restpos/d/au;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v4, v5, v6}, Lcom/aadhk/restpos/f/j;->a(IDLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 450
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Modifier;->getType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 451
    iget-object v0, v1, Lcom/aadhk/restpos/d/bc;->a:Landroid/widget/TextView;

    const-string v1, "+"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 455
    :cond_0
    :goto_1
    return-object p2

    .line 444
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/d/bc;

    move-object v1, v0

    goto :goto_0

    .line 452
    :cond_2
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Modifier;->getType()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 453
    iget-object v0, v1, Lcom/aadhk/restpos/d/bc;->a:Landroid/widget/TextView;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
