.class final Lcom/aadhk/restpos/d/ex;
.super Lcom/aadhk/restpos/a/aa;
.source "ProGuard"


# instance fields
.field final synthetic h:Lcom/aadhk/restpos/d/eu;


# direct methods
.method public constructor <init>(Lcom/aadhk/restpos/d/eu;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 211
    iput-object p1, p0, Lcom/aadhk/restpos/d/ex;->h:Lcom/aadhk/restpos/d/eu;

    .line 212
    invoke-direct {p0, p2}, Lcom/aadhk/restpos/a/aa;-><init>(Landroid/content/Context;)V

    .line 213
    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/aadhk/restpos/d/ex;->h:Lcom/aadhk/restpos/d/eu;

    invoke-static {v0}, Lcom/aadhk/restpos/d/eu;->c(Lcom/aadhk/restpos/d/eu;)Lcom/aadhk/restpos/bean/Report;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Report;->getReportItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 222
    iget-object v0, p0, Lcom/aadhk/restpos/d/ex;->h:Lcom/aadhk/restpos/d/eu;

    invoke-static {v0}, Lcom/aadhk/restpos/d/eu;->c(Lcom/aadhk/restpos/d/eu;)Lcom/aadhk/restpos/bean/Report;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Report;->getReportItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 227
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 233
    if-nez p2, :cond_0

    .line 234
    iget-object v0, p0, Lcom/aadhk/restpos/d/ex;->b:Landroid/view/LayoutInflater;

    const v1, 0x7f0300b7

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 235
    new-instance v1, Lcom/aadhk/restpos/d/ey;

    const/4 v0, 0x0

    invoke-direct {v1, p0, v0}, Lcom/aadhk/restpos/d/ey;-><init>(Lcom/aadhk/restpos/d/ex;B)V

    .line 236
    const v0, 0x7f0b011f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/aadhk/restpos/d/ey;->a:Landroid/widget/TextView;

    .line 237
    const v0, 0x7f0b0273

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/aadhk/restpos/d/ey;->b:Landroid/widget/TextView;

    .line 238
    const v0, 0x7f0b0274

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/aadhk/restpos/d/ey;->c:Landroid/widget/TextView;

    .line 239
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 244
    :goto_0
    invoke-virtual {p0, p1}, Lcom/aadhk/restpos/d/ex;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/ReportItem;

    .line 245
    iget-object v2, v1, Lcom/aadhk/restpos/d/ey;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/ReportItem;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 246
    iget-object v2, v1, Lcom/aadhk/restpos/d/ey;->b:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/ReportItem;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 247
    iget-object v1, v1, Lcom/aadhk/restpos/d/ey;->c:Landroid/widget/TextView;

    iget v2, p0, Lcom/aadhk/restpos/d/ex;->g:I

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/ReportItem;->getAmount()D

    move-result-wide v3

    iget-object v0, p0, Lcom/aadhk/restpos/d/ex;->d:Ljava/lang/String;

    invoke-static {v2, v3, v4, v0}, Lcom/aadhk/restpos/f/j;->a(IDLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 248
    return-object p2

    .line 241
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/d/ey;

    move-object v1, v0

    goto :goto_0
.end method
