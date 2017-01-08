.class final Lcom/aadhk/restpos/d/dc;
.super Landroid/widget/BaseAdapter;
.source "ProGuard"


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/d/db;


# direct methods
.method private constructor <init>(Lcom/aadhk/restpos/d/db;)V
    .locals 0
    .parameter

    .prologue
    .line 85
    iput-object p1, p0, Lcom/aadhk/restpos/d/dc;->a:Lcom/aadhk/restpos/d/db;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 131
    return-void
.end method

.method synthetic constructor <init>(Lcom/aadhk/restpos/d/db;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/aadhk/restpos/d/dc;-><init>(Lcom/aadhk/restpos/d/db;)V

    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/aadhk/restpos/d/dc;->a:Lcom/aadhk/restpos/d/db;

    invoke-static {v0}, Lcom/aadhk/restpos/d/db;->a(Lcom/aadhk/restpos/d/db;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 94
    iget-object v0, p0, Lcom/aadhk/restpos/d/dc;->a:Lcom/aadhk/restpos/d/db;

    invoke-static {v0}, Lcom/aadhk/restpos/d/db;->a(Lcom/aadhk/restpos/d/db;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 99
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 105
    if-nez p2, :cond_0

    .line 106
    iget-object v0, p0, Lcom/aadhk/restpos/d/dc;->a:Lcom/aadhk/restpos/d/db;

    invoke-static {v0}, Lcom/aadhk/restpos/d/db;->b(Lcom/aadhk/restpos/d/db;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300b0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 107
    new-instance v1, Lcom/aadhk/restpos/d/dd;

    const/4 v0, 0x0

    invoke-direct {v1, p0, v0}, Lcom/aadhk/restpos/d/dd;-><init>(Lcom/aadhk/restpos/d/dc;B)V

    .line 108
    const v0, 0x7f0b011f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/aadhk/restpos/d/dd;->a:Landroid/widget/TextView;

    .line 109
    const v0, 0x7f0b0256

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/aadhk/restpos/d/dd;->b:Landroid/widget/ImageView;

    .line 110
    const v0, 0x7f0b013b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v1, Lcom/aadhk/restpos/d/dd;->c:Landroid/widget/LinearLayout;

    .line 111
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 115
    :goto_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/dc;->a:Lcom/aadhk/restpos/d/db;

    invoke-static {v0}, Lcom/aadhk/restpos/d/db;->c(Lcom/aadhk/restpos/d/db;)I

    move-result v0

    if-ne v0, p1, :cond_1

    .line 116
    iget-object v0, v1, Lcom/aadhk/restpos/d/dd;->c:Landroid/widget/LinearLayout;

    const v2, 0x7f080067

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 120
    :goto_1
    invoke-virtual {p0, p1}, Lcom/aadhk/restpos/d/dc;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/PriceSchedule;

    .line 121
    iget-object v2, v1, Lcom/aadhk/restpos/d/dd;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/PriceSchedule;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/PriceSchedule;->isEnable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 123
    iget-object v0, v1, Lcom/aadhk/restpos/d/dd;->b:Landroid/widget/ImageView;

    const v1, 0x7f0200a8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 127
    :goto_2
    return-object p2

    .line 113
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/d/dd;

    move-object v1, v0

    goto :goto_0

    .line 118
    :cond_1
    iget-object v0, v1, Lcom/aadhk/restpos/d/dd;->c:Landroid/widget/LinearLayout;

    const v2, 0x7f080039

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_1

    .line 125
    :cond_2
    iget-object v0, v1, Lcom/aadhk/restpos/d/dd;->b:Landroid/widget/ImageView;

    const v1, 0x7f0200a1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_2
.end method
