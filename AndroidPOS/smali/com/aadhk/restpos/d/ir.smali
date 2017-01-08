.class final Lcom/aadhk/restpos/d/ir;
.super Landroid/widget/BaseAdapter;
.source "ProGuard"


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/d/ip;

.field private b:Lcom/aadhk/restpos/d/is;


# direct methods
.method private constructor <init>(Lcom/aadhk/restpos/d/ip;)V
    .locals 0
    .parameter

    .prologue
    .line 69
    iput-object p1, p0, Lcom/aadhk/restpos/d/ir;->a:Lcom/aadhk/restpos/d/ip;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/aadhk/restpos/d/ip;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/aadhk/restpos/d/ir;-><init>(Lcom/aadhk/restpos/d/ip;)V

    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/aadhk/restpos/d/ir;->a:Lcom/aadhk/restpos/d/ip;

    invoke-static {v0}, Lcom/aadhk/restpos/d/ip;->c(Lcom/aadhk/restpos/d/ip;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lcom/aadhk/restpos/d/ir;->a:Lcom/aadhk/restpos/d/ip;

    invoke-static {v0}, Lcom/aadhk/restpos/d/ip;->c(Lcom/aadhk/restpos/d/ip;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, p1

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 84
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 89
    if-nez p2, :cond_0

    .line 90
    iget-object v0, p0, Lcom/aadhk/restpos/d/ir;->a:Lcom/aadhk/restpos/d/ip;

    invoke-virtual {v0}, Lcom/aadhk/restpos/d/ip;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300a2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 91
    new-instance v0, Lcom/aadhk/restpos/d/is;

    iget-object v1, p0, Lcom/aadhk/restpos/d/ir;->a:Lcom/aadhk/restpos/d/ip;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/aadhk/restpos/d/is;-><init>(Lcom/aadhk/restpos/d/ip;B)V

    iput-object v0, p0, Lcom/aadhk/restpos/d/ir;->b:Lcom/aadhk/restpos/d/is;

    .line 92
    iget-object v1, p0, Lcom/aadhk/restpos/d/ir;->b:Lcom/aadhk/restpos/d/is;

    const v0, 0x7f09027a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/aadhk/restpos/d/is;->a:Landroid/widget/TextView;

    .line 93
    iget-object v1, p0, Lcom/aadhk/restpos/d/ir;->b:Lcom/aadhk/restpos/d/is;

    const v0, 0x7f090279

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v1, Lcom/aadhk/restpos/d/is;->b:Landroid/widget/LinearLayout;

    .line 94
    iget-object v0, p0, Lcom/aadhk/restpos/d/ir;->b:Lcom/aadhk/restpos/d/is;

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 98
    :goto_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/ir;->b:Lcom/aadhk/restpos/d/is;

    iget-object v0, v0, Lcom/aadhk/restpos/d/is;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/aadhk/restpos/d/ir;->a:Lcom/aadhk/restpos/d/ip;

    invoke-static {v1}, Lcom/aadhk/restpos/d/ip;->c(Lcom/aadhk/restpos/d/ip;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    iget-object v0, p0, Lcom/aadhk/restpos/d/ir;->a:Lcom/aadhk/restpos/d/ip;

    invoke-static {v0}, Lcom/aadhk/restpos/d/ip;->d(Lcom/aadhk/restpos/d/ip;)I

    move-result v0

    if-ne v0, p1, :cond_1

    .line 100
    iget-object v0, p0, Lcom/aadhk/restpos/d/ir;->b:Lcom/aadhk/restpos/d/is;

    iget-object v0, v0, Lcom/aadhk/restpos/d/is;->b:Landroid/widget/LinearLayout;

    const v1, 0x7f070078

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 104
    :goto_1
    return-object p2

    .line 96
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/d/is;

    iput-object v0, p0, Lcom/aadhk/restpos/d/ir;->b:Lcom/aadhk/restpos/d/is;

    goto :goto_0

    .line 102
    :cond_1
    iget-object v0, p0, Lcom/aadhk/restpos/d/ir;->b:Lcom/aadhk/restpos/d/is;

    iget-object v0, v0, Lcom/aadhk/restpos/d/is;->b:Landroid/widget/LinearLayout;

    const v1, 0x7f07003b

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_1
.end method
