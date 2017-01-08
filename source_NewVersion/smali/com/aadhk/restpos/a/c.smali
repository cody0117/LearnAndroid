.class public final Lcom/aadhk/restpos/a/c;
.super Landroid/widget/BaseAdapter;
.source "ProGuard"


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/product/library/bean/Currency;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Landroid/content/Context;

.field private final c:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/product/library/bean/Currency;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/aadhk/restpos/a/c;->b:Landroid/content/Context;

    .line 25
    iput-object p2, p0, Lcom/aadhk/restpos/a/c;->a:Ljava/util/List;

    .line 26
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/a/c;->c:Landroid/view/LayoutInflater;

    .line 27
    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/aadhk/restpos/a/c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/aadhk/restpos/a/c;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 41
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 48
    invoke-virtual {p0, p1}, Lcom/aadhk/restpos/a/c;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/product/library/bean/Currency;

    .line 50
    if-nez p2, :cond_0

    .line 51
    iget-object v1, p0, Lcom/aadhk/restpos/a/c;->c:Landroid/view/LayoutInflater;

    const v2, 0x7f030027

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 52
    new-instance v2, Lcom/aadhk/restpos/a/d;

    invoke-direct {v2, p0, v4}, Lcom/aadhk/restpos/a/d;-><init>(Lcom/aadhk/restpos/a/c;B)V

    .line 53
    const v1, 0x7f0b0081

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/aadhk/restpos/a/d;->a:Landroid/widget/TextView;

    .line 54
    const v1, 0x7f0b0080

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/aadhk/restpos/a/d;->b:Landroid/widget/TextView;

    .line 55
    const v1, 0x7f0b0082

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/aadhk/restpos/a/d;->c:Landroid/widget/TextView;

    .line 56
    const v1, 0x7f0b0083

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v2, Lcom/aadhk/restpos/a/d;->d:Landroid/widget/ImageView;

    .line 57
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v1, v2

    .line 62
    :goto_0
    iget-object v2, v1, Lcom/aadhk/restpos/a/d;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/aadhk/product/library/bean/Currency;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    iget-object v2, v1, Lcom/aadhk/restpos/a/d;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/aadhk/product/library/bean/Currency;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    iget-object v2, v1, Lcom/aadhk/restpos/a/d;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/aadhk/product/library/bean/Currency;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    invoke-virtual {v0}, Lcom/aadhk/product/library/bean/Currency;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 67
    iget-object v0, v1, Lcom/aadhk/restpos/a/d;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 71
    :goto_1
    return-object p2

    .line 59
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/aadhk/restpos/a/d;

    goto :goto_0

    .line 69
    :cond_1
    iget-object v0, v1, Lcom/aadhk/restpos/a/d;->d:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method
