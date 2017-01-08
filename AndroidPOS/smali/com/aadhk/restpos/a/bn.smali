.class public final Lcom/aadhk/restpos/a/bn;
.super Landroid/widget/ArrayAdapter;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:[Ljava/lang/String;

.field private final c:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;[Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 19
    const v0, 0x7f090047

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 20
    iput-object p1, p0, Lcom/aadhk/restpos/a/bn;->a:Landroid/content/Context;

    .line 21
    iput-object p2, p0, Lcom/aadhk/restpos/a/bn;->b:[Ljava/lang/String;

    .line 22
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/a/bn;->c:Landroid/view/LayoutInflater;

    .line 23
    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/aadhk/restpos/a/bn;->b:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public final getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 42
    if-nez p2, :cond_0

    .line 44
    new-instance v1, Lcom/aadhk/restpos/a/bo;

    invoke-direct {v1, p0}, Lcom/aadhk/restpos/a/bo;-><init>(Lcom/aadhk/restpos/a/bn;)V

    .line 45
    iget-object v0, p0, Lcom/aadhk/restpos/a/bn;->c:Landroid/view/LayoutInflater;

    const v2, 0x7f0300de

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 46
    const v0, 0x7f090047

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v1, v0}, Lcom/aadhk/restpos/a/bo;->a(Lcom/aadhk/restpos/a/bo;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 47
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v0, v1

    .line 51
    :goto_0
    invoke-static {v0}, Lcom/aadhk/restpos/a/bo;->a(Lcom/aadhk/restpos/a/bo;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/a/bn;->b:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    return-object p2

    .line 49
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/a/bo;

    goto :goto_0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 32
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 37
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 57
    new-instance v1, Lcom/aadhk/restpos/a/bo;

    invoke-direct {v1, p0}, Lcom/aadhk/restpos/a/bo;-><init>(Lcom/aadhk/restpos/a/bn;)V

    .line 58
    iget-object v0, p0, Lcom/aadhk/restpos/a/bn;->c:Landroid/view/LayoutInflater;

    const v2, 0x7f0300de

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 59
    const v0, 0x7f090047

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v1, v0}, Lcom/aadhk/restpos/a/bo;->a(Lcom/aadhk/restpos/a/bo;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 60
    invoke-virtual {v2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 61
    invoke-static {v1}, Lcom/aadhk/restpos/a/bo;->a(Lcom/aadhk/restpos/a/bo;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/a/bn;->b:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    return-object v2
.end method
