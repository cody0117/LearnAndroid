.class public final Lcom/aadhk/restpos/d/en;
.super Lcom/aadhk/restpos/a/aa;
.source "ProGuard"


# instance fields
.field final synthetic h:Lcom/aadhk/restpos/d/ek;


# direct methods
.method public constructor <init>(Lcom/aadhk/restpos/d/ek;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 158
    iput-object p1, p0, Lcom/aadhk/restpos/d/en;->h:Lcom/aadhk/restpos/d/ek;

    .line 159
    invoke-direct {p0, p2}, Lcom/aadhk/restpos/a/aa;-><init>(Landroid/content/Context;)V

    .line 160
    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/aadhk/restpos/d/en;->h:Lcom/aadhk/restpos/d/ek;

    invoke-static {v0}, Lcom/aadhk/restpos/d/ek;->a(Lcom/aadhk/restpos/d/ek;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 169
    iget-object v0, p0, Lcom/aadhk/restpos/d/en;->h:Lcom/aadhk/restpos/d/ek;

    invoke-static {v0}, Lcom/aadhk/restpos/d/ek;->a(Lcom/aadhk/restpos/d/ek;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, p1

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 174
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 180
    if-nez p2, :cond_1

    .line 181
    iget-object v0, p0, Lcom/aadhk/restpos/d/en;->b:Landroid/view/LayoutInflater;

    const v1, 0x7f0300b9

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 182
    new-instance v1, Lcom/aadhk/restpos/d/ep;

    const/4 v0, 0x0

    invoke-direct {v1, p0, v0}, Lcom/aadhk/restpos/d/ep;-><init>(Lcom/aadhk/restpos/d/en;B)V

    .line 183
    const v0, 0x7f0b011e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, v1, Lcom/aadhk/restpos/d/ep;->a:Landroid/widget/CheckBox;

    .line 184
    const v0, 0x7f0b0277

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/aadhk/restpos/d/ep;->b:Landroid/widget/TextView;

    .line 185
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v0, v1

    .line 190
    :goto_0
    iget-object v1, p0, Lcom/aadhk/restpos/d/en;->h:Lcom/aadhk/restpos/d/ek;

    invoke-static {v1}, Lcom/aadhk/restpos/d/ek;->c(Lcom/aadhk/restpos/d/ek;)Lcom/aadhk/restpos/f/l;

    move-result-object v1

    iget-object v2, p0, Lcom/aadhk/restpos/d/en;->h:Lcom/aadhk/restpos/d/ek;

    invoke-static {v2}, Lcom/aadhk/restpos/d/ek;->b(Lcom/aadhk/restpos/d/ek;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Lcom/aadhk/restpos/f/l;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 191
    iget-object v1, v0, Lcom/aadhk/restpos/d/ep;->a:Landroid/widget/CheckBox;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 194
    :cond_0
    iget-object v1, v0, Lcom/aadhk/restpos/d/ep;->a:Landroid/widget/CheckBox;

    new-instance v2, Lcom/aadhk/restpos/d/eo;

    invoke-direct {v2, p0, v0, p1}, Lcom/aadhk/restpos/d/eo;-><init>(Lcom/aadhk/restpos/d/en;Lcom/aadhk/restpos/d/ep;I)V

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 205
    iget-object v0, v0, Lcom/aadhk/restpos/d/ep;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/aadhk/restpos/d/en;->h:Lcom/aadhk/restpos/d/ek;

    invoke-static {v1}, Lcom/aadhk/restpos/d/ek;->a(Lcom/aadhk/restpos/d/ek;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 206
    return-object p2

    .line 187
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/d/ep;

    goto :goto_0
.end method
