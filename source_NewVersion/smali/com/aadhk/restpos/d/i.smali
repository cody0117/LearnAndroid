.class final Lcom/aadhk/restpos/d/i;
.super Landroid/widget/BaseAdapter;
.source "ProGuard"


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/d/e;


# direct methods
.method private constructor <init>(Lcom/aadhk/restpos/d/e;)V
    .locals 0
    .parameter

    .prologue
    .line 158
    iput-object p1, p0, Lcom/aadhk/restpos/d/i;->a:Lcom/aadhk/restpos/d/e;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 210
    return-void
.end method

.method synthetic constructor <init>(Lcom/aadhk/restpos/d/e;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 158
    invoke-direct {p0, p1}, Lcom/aadhk/restpos/d/i;-><init>(Lcom/aadhk/restpos/d/e;)V

    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/aadhk/restpos/d/i;->a:Lcom/aadhk/restpos/d/e;

    invoke-static {v0}, Lcom/aadhk/restpos/d/e;->a(Lcom/aadhk/restpos/d/e;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 167
    iget-object v0, p0, Lcom/aadhk/restpos/d/i;->a:Lcom/aadhk/restpos/d/e;

    invoke-static {v0}, Lcom/aadhk/restpos/d/e;->a(Lcom/aadhk/restpos/d/e;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 172
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 178
    if-nez p2, :cond_1

    .line 179
    iget-object v0, p0, Lcom/aadhk/restpos/d/i;->a:Lcom/aadhk/restpos/d/e;

    invoke-static {v0}, Lcom/aadhk/restpos/d/e;->f(Lcom/aadhk/restpos/d/e;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030064

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 180
    new-instance v1, Lcom/aadhk/restpos/d/j;

    const/4 v0, 0x0

    invoke-direct {v1, p0, v0}, Lcom/aadhk/restpos/d/j;-><init>(Lcom/aadhk/restpos/d/i;B)V

    .line 181
    const v0, 0x7f0b004f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/aadhk/restpos/d/j;->a:Landroid/widget/TextView;

    .line 182
    const v0, 0x7f0b013c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/aadhk/restpos/d/j;->b:Landroid/widget/TextView;

    .line 183
    const v0, 0x7f0b004d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/aadhk/restpos/d/j;->c:Landroid/widget/TextView;

    .line 184
    const v0, 0x7f0b013b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v1, Lcom/aadhk/restpos/d/j;->d:Landroid/widget/LinearLayout;

    .line 186
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 191
    :goto_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/i;->a:Lcom/aadhk/restpos/d/e;

    invoke-static {v0}, Lcom/aadhk/restpos/d/e;->g(Lcom/aadhk/restpos/d/e;)I

    move-result v0

    if-ne v0, p1, :cond_2

    .line 192
    iget-object v0, v1, Lcom/aadhk/restpos/d/j;->d:Landroid/widget/LinearLayout;

    const v2, 0x7f080067

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 197
    :goto_1
    invoke-virtual {p0, p1}, Lcom/aadhk/restpos/d/i;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/Customer;

    .line 198
    iget-object v2, v1, Lcom/aadhk/restpos/d/j;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Customer;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 199
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Customer;->getAddress1()Ljava/lang/String;

    move-result-object v2

    .line 200
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Customer;->getAddress2()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Customer;->getAddress2()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 201
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Customer;->getAddress2()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 203
    :cond_0
    iget-object v3, v1, Lcom/aadhk/restpos/d/j;->b:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 204
    iget-object v1, v1, Lcom/aadhk/restpos/d/j;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Customer;->getTel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 206
    return-object p2

    .line 188
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/d/j;

    move-object v1, v0

    goto :goto_0

    .line 194
    :cond_2
    iget-object v0, v1, Lcom/aadhk/restpos/d/j;->d:Landroid/widget/LinearLayout;

    const v2, 0x7f080039

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_1
.end method
