.class public final Lcom/aadhk/restpos/a/at;
.super Landroid/widget/BaseAdapter;
.source "ProGuard"


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/TableGroup;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/content/Context;

.field private c:Landroid/view/LayoutInflater;


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
            "Lcom/aadhk/restpos/bean/TableGroup;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/aadhk/restpos/a/at;->b:Landroid/content/Context;

    .line 24
    iput-object p2, p0, Lcom/aadhk/restpos/a/at;->a:Ljava/util/List;

    .line 25
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/a/at;->c:Landroid/view/LayoutInflater;

    .line 26
    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/aadhk/restpos/a/at;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/aadhk/restpos/a/at;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

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
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 46
    if-nez p2, :cond_0

    .line 47
    iget-object v0, p0, Lcom/aadhk/restpos/a/at;->c:Landroid/view/LayoutInflater;

    const v1, 0x7f0300df

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 48
    new-instance v1, Lcom/aadhk/restpos/a/au;

    const/4 v0, 0x0

    invoke-direct {v1, p0, v0}, Lcom/aadhk/restpos/a/au;-><init>(Lcom/aadhk/restpos/a/at;B)V

    .line 49
    const v0, 0x7f090047

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/aadhk/restpos/a/au;->a:Landroid/widget/TextView;

    .line 50
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 55
    :goto_0
    invoke-virtual {p0, p1}, Lcom/aadhk/restpos/a/at;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/TableGroup;

    .line 56
    iget-object v1, v1, Lcom/aadhk/restpos/a/au;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/TableGroup;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    return-object p2

    .line 52
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/a/au;

    move-object v1, v0

    goto :goto_0
.end method
