.class final Lcom/aadhk/product/library/b/i;
.super Landroid/widget/BaseAdapter;
.source "ProGuard"


# instance fields
.field final synthetic a:Lcom/aadhk/product/library/b/h;

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/aadhk/product/library/b/h;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 53
    iput-object p1, p0, Lcom/aadhk/product/library/b/i;->a:Lcom/aadhk/product/library/b/h;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 54
    iput-object p2, p0, Lcom/aadhk/product/library/b/i;->b:Landroid/content/Context;

    .line 55
    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/aadhk/product/library/b/i;->a:Lcom/aadhk/product/library/b/h;

    invoke-static {v0}, Lcom/aadhk/product/library/b/h;->a(Lcom/aadhk/product/library/b/h;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 91
    iget-object v0, p0, Lcom/aadhk/product/library/b/i;->a:Lcom/aadhk/product/library/b/h;

    invoke-static {v0}, Lcom/aadhk/product/library/b/h;->a(Lcom/aadhk/product/library/b/h;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, p1

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 96
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 59
    .line 60
    if-nez p2, :cond_0

    .line 61
    iget-object v0, p0, Lcom/aadhk/product/library/b/i;->b:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 62
    sget v1, Lcom/aadhk/product/library/c;->c:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/aadhk/product/library/b/i;->a:Lcom/aadhk/product/library/b/h;

    invoke-static {v0}, Lcom/aadhk/product/library/b/h;->a(Lcom/aadhk/product/library/b/h;)[Ljava/lang/String;

    move-result-object v0

    aget-object v2, v0, p1

    .line 67
    sget v0, Lcom/aadhk/product/library/b;->g:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 68
    sget v1, Lcom/aadhk/product/library/b;->c:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 70
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    iget-object v0, p0, Lcom/aadhk/product/library/b/i;->a:Lcom/aadhk/product/library/b/h;

    invoke-static {v0}, Lcom/aadhk/product/library/b/h;->b(Lcom/aadhk/product/library/b/h;)[Z

    move-result-object v0

    aget-boolean v0, v0, p1

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 73
    new-instance v0, Lcom/aadhk/product/library/b/j;

    invoke-direct {v0, p0, p1}, Lcom/aadhk/product/library/b/j;-><init>(Lcom/aadhk/product/library/b/i;I)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    return-object p2
.end method
