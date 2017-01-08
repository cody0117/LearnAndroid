.class public final Lcom/aadhk/restpos/a/aq;
.super Landroid/widget/ArrayAdapter;
.source "ProGuard"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/Order;",
            ">;"
        }
    .end annotation
.end field

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
            "Lcom/aadhk/restpos/bean/Order;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 22
    const v0, 0x7f0b0043

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 23
    iput-object p1, p0, Lcom/aadhk/restpos/a/aq;->a:Landroid/content/Context;

    .line 24
    iput-object p2, p0, Lcom/aadhk/restpos/a/aq;->b:Ljava/util/List;

    .line 25
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/a/aq;->c:Landroid/view/LayoutInflater;

    .line 26
    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/aadhk/restpos/a/aq;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 45
    if-nez p2, :cond_0

    .line 47
    new-instance v1, Lcom/aadhk/restpos/a/ar;

    invoke-direct {v1, p0}, Lcom/aadhk/restpos/a/ar;-><init>(Lcom/aadhk/restpos/a/aq;)V

    .line 48
    iget-object v0, p0, Lcom/aadhk/restpos/a/aq;->c:Landroid/view/LayoutInflater;

    const v2, 0x7f0300bd

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 49
    const v0, 0x7f0b0043

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v1, v0}, Lcom/aadhk/restpos/a/ar;->a(Lcom/aadhk/restpos/a/ar;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 50
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v0, v1

    .line 54
    :goto_0
    invoke-static {v0}, Lcom/aadhk/restpos/a/ar;->a(Lcom/aadhk/restpos/a/ar;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v0, p0, Lcom/aadhk/restpos/a/aq;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getTableName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    return-object p2

    .line 52
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/a/ar;

    goto :goto_0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 35
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 40
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 60
    new-instance v1, Lcom/aadhk/restpos/a/ar;

    invoke-direct {v1, p0}, Lcom/aadhk/restpos/a/ar;-><init>(Lcom/aadhk/restpos/a/aq;)V

    .line 61
    iget-object v0, p0, Lcom/aadhk/restpos/a/aq;->c:Landroid/view/LayoutInflater;

    const v2, 0x7f0300bd

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 62
    const v0, 0x7f0b0043

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v1, v0}, Lcom/aadhk/restpos/a/ar;->a(Lcom/aadhk/restpos/a/ar;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 63
    invoke-virtual {v2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 64
    invoke-static {v1}, Lcom/aadhk/restpos/a/ar;->a(Lcom/aadhk/restpos/a/ar;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v0, p0, Lcom/aadhk/restpos/a/aq;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getTableName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    return-object v2
.end method
