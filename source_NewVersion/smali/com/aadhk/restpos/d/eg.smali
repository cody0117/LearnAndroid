.class final Lcom/aadhk/restpos/d/eg;
.super Lcom/aadhk/restpos/a/aa;
.source "ProGuard"


# instance fields
.field final synthetic h:Lcom/aadhk/restpos/d/ef;

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/ReportItem;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/aadhk/restpos/d/ef;Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/ReportItem;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 177
    iput-object p1, p0, Lcom/aadhk/restpos/d/eg;->h:Lcom/aadhk/restpos/d/ef;

    .line 178
    invoke-direct {p0, p2}, Lcom/aadhk/restpos/a/aa;-><init>(Landroid/content/Context;)V

    .line 179
    iput-object p3, p0, Lcom/aadhk/restpos/d/eg;->i:Ljava/util/List;

    .line 180
    iput-object p4, p0, Lcom/aadhk/restpos/d/eg;->j:Ljava/lang/String;

    .line 181
    iput-object p5, p0, Lcom/aadhk/restpos/d/eg;->k:Ljava/lang/String;

    .line 182
    iput-object p6, p0, Lcom/aadhk/restpos/d/eg;->l:Ljava/lang/String;

    .line 183
    iput-object p7, p0, Lcom/aadhk/restpos/d/eg;->m:Ljava/lang/String;

    .line 184
    return-void
.end method

.method static synthetic a(Lcom/aadhk/restpos/d/eg;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 169
    iget-object v0, p0, Lcom/aadhk/restpos/d/eg;->j:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/aadhk/restpos/d/eg;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 169
    iget-object v0, p0, Lcom/aadhk/restpos/d/eg;->k:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/aadhk/restpos/d/eg;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 169
    iget-object v0, p0, Lcom/aadhk/restpos/d/eg;->l:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/aadhk/restpos/d/eg;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 169
    iget-object v0, p0, Lcom/aadhk/restpos/d/eg;->m:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/aadhk/restpos/d/eg;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 193
    iget-object v0, p0, Lcom/aadhk/restpos/d/eg;->i:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 198
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 204
    if-nez p2, :cond_0

    .line 205
    iget-object v0, p0, Lcom/aadhk/restpos/d/eg;->b:Landroid/view/LayoutInflater;

    const v1, 0x7f0300b5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 206
    new-instance v1, Lcom/aadhk/restpos/d/ej;

    const/4 v0, 0x0

    invoke-direct {v1, p0, v0}, Lcom/aadhk/restpos/d/ej;-><init>(Lcom/aadhk/restpos/d/eg;B)V

    .line 207
    const v0, 0x7f0b011f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/aadhk/restpos/d/ej;->a:Landroid/widget/TextView;

    .line 208
    const v0, 0x7f0b0273

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/aadhk/restpos/d/ej;->b:Landroid/widget/TextView;

    .line 209
    const v0, 0x7f0b0274

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/aadhk/restpos/d/ej;->c:Landroid/widget/TextView;

    .line 210
    const v0, 0x7f0b0272

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v1, Lcom/aadhk/restpos/d/ej;->d:Landroid/widget/LinearLayout;

    .line 211
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 215
    :goto_0
    invoke-virtual {p0, p1}, Lcom/aadhk/restpos/d/eg;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/ReportItem;

    .line 216
    iget-object v2, v1, Lcom/aadhk/restpos/d/ej;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/ReportItem;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 217
    iget-object v2, v1, Lcom/aadhk/restpos/d/ej;->b:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/ReportItem;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 218
    iget-object v2, v1, Lcom/aadhk/restpos/d/ej;->c:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/ReportItem;->getPercentage()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 220
    new-instance v2, Lcom/aadhk/restpos/d/eh;

    invoke-direct {v2, p0, v0}, Lcom/aadhk/restpos/d/eh;-><init>(Lcom/aadhk/restpos/d/eg;Lcom/aadhk/restpos/bean/ReportItem;)V

    .line 234
    iget-object v0, v1, Lcom/aadhk/restpos/d/ej;->d:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/aadhk/restpos/d/ei;

    invoke-direct {v1, p0, v2}, Lcom/aadhk/restpos/d/ei;-><init>(Lcom/aadhk/restpos/d/eg;Lcom/aadhk/product/library/a/b;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 241
    return-object p2

    .line 213
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/d/ej;

    move-object v1, v0

    goto :goto_0
.end method