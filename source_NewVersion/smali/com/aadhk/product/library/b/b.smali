.class final Lcom/aadhk/product/library/b/b;
.super Landroid/widget/BaseAdapter;
.source "ProGuard"


# instance fields
.field final synthetic a:Lcom/aadhk/product/library/b/a;

.field private final b:[Ljava/lang/String;

.field private final c:Landroid/content/Context;

.field private final d:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Lcom/aadhk/product/library/b/a;Landroid/content/Context;[Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 67
    iput-object p1, p0, Lcom/aadhk/product/library/b/b;->a:Lcom/aadhk/product/library/b/a;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 68
    iput-object p2, p0, Lcom/aadhk/product/library/b/b;->c:Landroid/content/Context;

    .line 69
    iput-object p3, p0, Lcom/aadhk/product/library/b/b;->b:[Ljava/lang/String;

    .line 70
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/product/library/b/b;->d:Landroid/view/LayoutInflater;

    .line 71
    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/aadhk/product/library/b/b;->b:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 80
    iget-object v0, p0, Lcom/aadhk/product/library/b/b;->b:[Ljava/lang/String;

    array-length v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 85
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 91
    if-nez p2, :cond_0

    .line 92
    iget-object v0, p0, Lcom/aadhk/product/library/b/b;->d:Landroid/view/LayoutInflater;

    sget v1, Lcom/aadhk/product/library/c;->e:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 93
    new-instance v1, Lcom/aadhk/product/library/b/c;

    const/4 v0, 0x0

    invoke-direct {v1, p0, v0}, Lcom/aadhk/product/library/b/c;-><init>(Lcom/aadhk/product/library/b/b;B)V

    .line 94
    sget v0, Lcom/aadhk/product/library/b;->g:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/aadhk/product/library/b/c;->a:Landroid/widget/TextView;

    .line 95
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v0, v1

    .line 100
    :goto_0
    new-instance v1, Lcom/aadhk/product/library/bean/b;

    invoke-direct {v1}, Lcom/aadhk/product/library/bean/b;-><init>()V

    .line 101
    iget-object v2, p0, Lcom/aadhk/product/library/b/b;->b:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Lcom/aadhk/product/library/bean/b;->a(Ljava/lang/String;)V

    .line 102
    iget-object v0, v0, Lcom/aadhk/product/library/b/c;->a:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/aadhk/product/library/bean/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    return-object p2

    .line 97
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/product/library/b/c;

    goto :goto_0
.end method
