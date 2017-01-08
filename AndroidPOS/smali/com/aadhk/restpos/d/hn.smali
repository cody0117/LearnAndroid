.class public final Lcom/aadhk/restpos/d/hn;
.super Lcom/aadhk/restpos/a/ag;
.source "ProGuard"


# instance fields
.field final synthetic h:Lcom/aadhk/restpos/d/hk;


# direct methods
.method public constructor <init>(Lcom/aadhk/restpos/d/hk;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 145
    iput-object p1, p0, Lcom/aadhk/restpos/d/hn;->h:Lcom/aadhk/restpos/d/hk;

    .line 146
    invoke-direct {p0, p2}, Lcom/aadhk/restpos/a/ag;-><init>(Landroid/content/Context;)V

    .line 147
    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/aadhk/restpos/d/hn;->h:Lcom/aadhk/restpos/d/hk;

    invoke-static {v0}, Lcom/aadhk/restpos/d/hk;->a(Lcom/aadhk/restpos/d/hk;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 156
    iget-object v0, p0, Lcom/aadhk/restpos/d/hn;->h:Lcom/aadhk/restpos/d/hk;

    invoke-static {v0}, Lcom/aadhk/restpos/d/hk;->a(Lcom/aadhk/restpos/d/hk;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, p1

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 161
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 167
    if-nez p2, :cond_0

    .line 168
    iget-object v0, p0, Lcom/aadhk/restpos/d/hn;->b:Landroid/view/LayoutInflater;

    const v1, 0x7f0300d8

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 169
    new-instance v1, Lcom/aadhk/restpos/d/hp;

    invoke-direct {v1, p0, v3}, Lcom/aadhk/restpos/d/hp;-><init>(Lcom/aadhk/restpos/d/hn;B)V

    .line 170
    const v0, 0x7f090098

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, v1, Lcom/aadhk/restpos/d/hp;->a:Landroid/widget/CheckBox;

    .line 171
    const v0, 0x7f0902e9

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/aadhk/restpos/d/hp;->b:Landroid/widget/TextView;

    .line 172
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v0, v1

    .line 177
    :goto_0
    iget-object v1, p0, Lcom/aadhk/restpos/d/hn;->h:Lcom/aadhk/restpos/d/hk;

    invoke-static {v1}, Lcom/aadhk/restpos/d/hk;->c(Lcom/aadhk/restpos/d/hk;)Lcom/aadhk/restpos/util/r;

    move-result-object v1

    iget-object v2, p0, Lcom/aadhk/restpos/d/hn;->h:Lcom/aadhk/restpos/d/hk;

    invoke-static {v2}, Lcom/aadhk/restpos/d/hk;->b(Lcom/aadhk/restpos/d/hk;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Lcom/aadhk/restpos/util/r;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 178
    iget-object v1, v0, Lcom/aadhk/restpos/d/hp;->a:Landroid/widget/CheckBox;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 183
    :goto_1
    iget-object v1, v0, Lcom/aadhk/restpos/d/hp;->a:Landroid/widget/CheckBox;

    new-instance v2, Lcom/aadhk/restpos/d/ho;

    invoke-direct {v2, p0, v0, p1}, Lcom/aadhk/restpos/d/ho;-><init>(Lcom/aadhk/restpos/d/hn;Lcom/aadhk/restpos/d/hp;I)V

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    iget-object v0, v0, Lcom/aadhk/restpos/d/hp;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/aadhk/restpos/d/hn;->h:Lcom/aadhk/restpos/d/hk;

    invoke-static {v1}, Lcom/aadhk/restpos/d/hk;->a(Lcom/aadhk/restpos/d/hk;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 195
    return-object p2

    .line 174
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/d/hp;

    goto :goto_0

    .line 180
    :cond_1
    iget-object v1, v0, Lcom/aadhk/restpos/d/hp;->a:Landroid/widget/CheckBox;

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1
.end method
