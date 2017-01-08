.class final Lcom/aadhk/restpos/d/kr;
.super Landroid/widget/BaseAdapter;
.source "ProGuard"


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/d/kq;


# direct methods
.method private constructor <init>(Lcom/aadhk/restpos/d/kq;)V
    .locals 0
    .parameter

    .prologue
    .line 122
    iput-object p1, p0, Lcom/aadhk/restpos/d/kr;->a:Lcom/aadhk/restpos/d/kq;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 163
    return-void
.end method

.method synthetic constructor <init>(Lcom/aadhk/restpos/d/kq;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 122
    invoke-direct {p0, p1}, Lcom/aadhk/restpos/d/kr;-><init>(Lcom/aadhk/restpos/d/kq;)V

    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/aadhk/restpos/d/kr;->a:Lcom/aadhk/restpos/d/kq;

    invoke-static {v0}, Lcom/aadhk/restpos/d/kq;->a(Lcom/aadhk/restpos/d/kq;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 130
    iget-object v0, p0, Lcom/aadhk/restpos/d/kr;->a:Lcom/aadhk/restpos/d/kq;

    invoke-static {v0}, Lcom/aadhk/restpos/d/kq;->a(Lcom/aadhk/restpos/d/kq;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 135
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 141
    if-nez p2, :cond_0

    .line 142
    iget-object v0, p0, Lcom/aadhk/restpos/d/kr;->a:Lcom/aadhk/restpos/d/kq;

    invoke-static {v0}, Lcom/aadhk/restpos/d/kq;->b(Lcom/aadhk/restpos/d/kq;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300aa

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 143
    new-instance v1, Lcom/aadhk/restpos/d/ks;

    const/4 v0, 0x0

    invoke-direct {v1, p0, v0}, Lcom/aadhk/restpos/d/ks;-><init>(Lcom/aadhk/restpos/d/kr;B)V

    .line 144
    const v0, 0x7f09028a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/aadhk/restpos/d/ks;->a:Landroid/widget/TextView;

    .line 145
    const v0, 0x7f09028b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/aadhk/restpos/d/ks;->b:Landroid/widget/TextView;

    .line 146
    const v0, 0x7f09028f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, v1, Lcom/aadhk/restpos/d/ks;->c:Landroid/widget/RelativeLayout;

    .line 147
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 151
    :goto_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/kr;->a:Lcom/aadhk/restpos/d/kq;

    invoke-static {v0}, Lcom/aadhk/restpos/d/kq;->c(Lcom/aadhk/restpos/d/kq;)I

    move-result v0

    if-ne v0, p1, :cond_1

    .line 152
    iget-object v0, v1, Lcom/aadhk/restpos/d/ks;->c:Landroid/widget/RelativeLayout;

    const v2, 0x7f07007d

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 156
    :goto_1
    invoke-virtual {p0, p1}, Lcom/aadhk/restpos/d/kr;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/User;

    .line 157
    iget-object v2, v1, Lcom/aadhk/restpos/d/ks;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/User;->getAccount()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    iget-object v1, v1, Lcom/aadhk/restpos/d/ks;->b:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/aadhk/restpos/d/kr;->a:Lcom/aadhk/restpos/d/kq;

    invoke-static {v2}, Lcom/aadhk/restpos/d/kq;->d(Lcom/aadhk/restpos/d/kq;)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/User;->getRole()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    aget-object v0, v2, v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    return-object p2

    .line 149
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/d/ks;

    move-object v1, v0

    goto :goto_0

    .line 154
    :cond_1
    iget-object v0, v1, Lcom/aadhk/restpos/d/ks;->c:Landroid/widget/RelativeLayout;

    const v2, 0x7f07003b

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    goto :goto_1
.end method
