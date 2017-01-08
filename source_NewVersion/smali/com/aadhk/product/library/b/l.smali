.class final Lcom/aadhk/product/library/b/l;
.super Landroid/widget/BaseAdapter;
.source "ProGuard"


# instance fields
.field final synthetic a:Lcom/aadhk/product/library/b/k;

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/aadhk/product/library/b/k;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 54
    iput-object p1, p0, Lcom/aadhk/product/library/b/l;->a:Lcom/aadhk/product/library/b/k;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 55
    iput-object p2, p0, Lcom/aadhk/product/library/b/l;->b:Landroid/content/Context;

    .line 57
    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/aadhk/product/library/b/l;->a:Lcom/aadhk/product/library/b/k;

    invoke-static {v0}, Lcom/aadhk/product/library/b/k;->a(Lcom/aadhk/product/library/b/k;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 97
    iget-object v0, p0, Lcom/aadhk/product/library/b/l;->a:Lcom/aadhk/product/library/b/k;

    invoke-static {v0}, Lcom/aadhk/product/library/b/k;->a(Lcom/aadhk/product/library/b/k;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, p1

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 102
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 61
    .line 62
    if-nez p2, :cond_0

    .line 63
    iget-object v0, p0, Lcom/aadhk/product/library/b/l;->b:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 64
    sget v1, Lcom/aadhk/product/library/c;->d:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/aadhk/product/library/b/l;->a:Lcom/aadhk/product/library/b/k;

    invoke-static {v0}, Lcom/aadhk/product/library/b/k;->a(Lcom/aadhk/product/library/b/k;)[Ljava/lang/String;

    move-result-object v0

    aget-object v2, v0, p1

    .line 69
    sget v0, Lcom/aadhk/product/library/b;->g:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 70
    sget v1, Lcom/aadhk/product/library/b;->h:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    .line 72
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    iget-object v0, p0, Lcom/aadhk/product/library/b/l;->a:Lcom/aadhk/product/library/b/k;

    invoke-static {v0}, Lcom/aadhk/product/library/b/k;->b(Lcom/aadhk/product/library/b/k;)I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 74
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 78
    :goto_0
    new-instance v0, Lcom/aadhk/product/library/b/m;

    invoke-direct {v0, p0, p1}, Lcom/aadhk/product/library/b/m;-><init>(Lcom/aadhk/product/library/b/l;I)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    return-object p2

    .line 76
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0
.end method
