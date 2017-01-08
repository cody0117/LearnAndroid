.class final Lcom/aadhk/restpos/d/fy;
.super Landroid/widget/BaseAdapter;
.source "ProGuard"


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/d/fx;


# direct methods
.method private constructor <init>(Lcom/aadhk/restpos/d/fx;)V
    .locals 0
    .parameter

    .prologue
    .line 109
    iput-object p1, p0, Lcom/aadhk/restpos/d/fy;->a:Lcom/aadhk/restpos/d/fx;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 150
    return-void
.end method

.method synthetic constructor <init>(Lcom/aadhk/restpos/d/fx;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/aadhk/restpos/d/fy;-><init>(Lcom/aadhk/restpos/d/fx;)V

    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/aadhk/restpos/d/fy;->a:Lcom/aadhk/restpos/d/fx;

    invoke-static {v0}, Lcom/aadhk/restpos/d/fx;->a(Lcom/aadhk/restpos/d/fx;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 117
    iget-object v0, p0, Lcom/aadhk/restpos/d/fy;->a:Lcom/aadhk/restpos/d/fx;

    invoke-static {v0}, Lcom/aadhk/restpos/d/fx;->a(Lcom/aadhk/restpos/d/fx;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 122
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 128
    if-nez p2, :cond_0

    .line 129
    iget-object v0, p0, Lcom/aadhk/restpos/d/fy;->a:Lcom/aadhk/restpos/d/fx;

    invoke-static {v0}, Lcom/aadhk/restpos/d/fx;->b(Lcom/aadhk/restpos/d/fx;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03008d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 130
    new-instance v1, Lcom/aadhk/restpos/d/fz;

    const/4 v0, 0x0

    invoke-direct {v1, p0, v0}, Lcom/aadhk/restpos/d/fz;-><init>(Lcom/aadhk/restpos/d/fy;B)V

    .line 131
    const v0, 0x7f0b0223

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/aadhk/restpos/d/fz;->a:Landroid/widget/TextView;

    .line 132
    const v0, 0x7f0b0224

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/aadhk/restpos/d/fz;->b:Landroid/widget/TextView;

    .line 133
    const v0, 0x7f0b0228

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, v1, Lcom/aadhk/restpos/d/fz;->c:Landroid/widget/RelativeLayout;

    .line 134
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 138
    :goto_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/fy;->a:Lcom/aadhk/restpos/d/fx;

    invoke-static {v0}, Lcom/aadhk/restpos/d/fx;->c(Lcom/aadhk/restpos/d/fx;)I

    move-result v0

    if-ne v0, p1, :cond_1

    .line 139
    iget-object v0, v1, Lcom/aadhk/restpos/d/fz;->c:Landroid/widget/RelativeLayout;

    const v2, 0x7f080067

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 143
    :goto_1
    invoke-virtual {p0, p1}, Lcom/aadhk/restpos/d/fy;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/User;

    .line 144
    iget-object v2, v1, Lcom/aadhk/restpos/d/fz;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/User;->getAccount()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    iget-object v1, v1, Lcom/aadhk/restpos/d/fz;->b:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/aadhk/restpos/d/fy;->a:Lcom/aadhk/restpos/d/fx;

    invoke-static {v2}, Lcom/aadhk/restpos/d/fx;->d(Lcom/aadhk/restpos/d/fx;)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/User;->getRole()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    aget-object v0, v2, v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    return-object p2

    .line 136
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/d/fz;

    move-object v1, v0

    goto :goto_0

    .line 141
    :cond_1
    iget-object v0, v1, Lcom/aadhk/restpos/d/fz;->c:Landroid/widget/RelativeLayout;

    const v2, 0x7f080039

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    goto :goto_1
.end method
