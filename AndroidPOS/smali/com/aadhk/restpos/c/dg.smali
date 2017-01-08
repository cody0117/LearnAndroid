.class final Lcom/aadhk/restpos/c/dg;
.super Landroid/widget/BaseAdapter;
.source "ProGuard"


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/c/de;


# direct methods
.method private constructor <init>(Lcom/aadhk/restpos/c/de;)V
    .locals 0
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Lcom/aadhk/restpos/c/dg;->a:Lcom/aadhk/restpos/c/de;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 98
    return-void
.end method

.method synthetic constructor <init>(Lcom/aadhk/restpos/c/de;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/aadhk/restpos/c/dg;-><init>(Lcom/aadhk/restpos/c/de;)V

    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/aadhk/restpos/c/dg;->a:Lcom/aadhk/restpos/c/de;

    invoke-static {v0}, Lcom/aadhk/restpos/c/de;->a(Lcom/aadhk/restpos/c/de;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 68
    iget-object v0, p0, Lcom/aadhk/restpos/c/dg;->a:Lcom/aadhk/restpos/c/de;

    invoke-static {v0}, Lcom/aadhk/restpos/c/de;->a(Lcom/aadhk/restpos/c/de;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 73
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 79
    if-nez p2, :cond_0

    .line 80
    iget-object v0, p0, Lcom/aadhk/restpos/c/dg;->a:Lcom/aadhk/restpos/c/de;

    invoke-static {v0}, Lcom/aadhk/restpos/c/de;->b(Lcom/aadhk/restpos/c/de;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300ac

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 81
    new-instance v1, Lcom/aadhk/restpos/c/dh;

    invoke-direct {v1, p0, v5}, Lcom/aadhk/restpos/c/dh;-><init>(Lcom/aadhk/restpos/c/dg;B)V

    .line 82
    const v0, 0x7f090099

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/aadhk/restpos/c/dh;->a:Landroid/widget/TextView;

    .line 83
    const v0, 0x7f090290

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/aadhk/restpos/c/dh;->b:Landroid/widget/TextView;

    .line 84
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 88
    :goto_0
    invoke-virtual {p0, p1}, Lcom/aadhk/restpos/c/dg;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/Order;

    .line 89
    iget-object v2, v1, Lcom/aadhk/restpos/c/dh;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getTableName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    iget-object v2, v1, Lcom/aadhk/restpos/c/dh;->b:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getOrderNum()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getOrderNum()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 92
    iget-object v0, v1, Lcom/aadhk/restpos/c/dh;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 96
    :goto_1
    return-object p2

    .line 86
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/c/dh;

    move-object v1, v0

    goto :goto_0

    .line 94
    :cond_1
    iget-object v0, v1, Lcom/aadhk/restpos/c/dh;->b:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method
