.class final Lcom/aadhk/restpos/d/gh;
.super Landroid/widget/BaseAdapter;
.source "ProGuard"


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/d/gf;

.field private b:Lcom/aadhk/restpos/d/gi;


# direct methods
.method private constructor <init>(Lcom/aadhk/restpos/d/gf;)V
    .locals 0
    .parameter

    .prologue
    .line 69
    iput-object p1, p0, Lcom/aadhk/restpos/d/gh;->a:Lcom/aadhk/restpos/d/gf;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/aadhk/restpos/d/gf;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/aadhk/restpos/d/gh;-><init>(Lcom/aadhk/restpos/d/gf;)V

    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/aadhk/restpos/d/gh;->a:Lcom/aadhk/restpos/d/gf;

    invoke-static {v0}, Lcom/aadhk/restpos/d/gf;->c(Lcom/aadhk/restpos/d/gf;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lcom/aadhk/restpos/d/gh;->a:Lcom/aadhk/restpos/d/gf;

    invoke-static {v0}, Lcom/aadhk/restpos/d/gf;->c(Lcom/aadhk/restpos/d/gf;)[Ljava/lang/String;

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
    .line 90
    if-nez p2, :cond_0

    .line 91
    iget-object v0, p0, Lcom/aadhk/restpos/d/gh;->a:Lcom/aadhk/restpos/d/gf;

    invoke-virtual {v0}, Lcom/aadhk/restpos/d/gf;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030091

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 92
    new-instance v0, Lcom/aadhk/restpos/d/gi;

    iget-object v1, p0, Lcom/aadhk/restpos/d/gh;->a:Lcom/aadhk/restpos/d/gf;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/aadhk/restpos/d/gi;-><init>(Lcom/aadhk/restpos/d/gf;B)V

    iput-object v0, p0, Lcom/aadhk/restpos/d/gh;->b:Lcom/aadhk/restpos/d/gi;

    .line 93
    iget-object v1, p0, Lcom/aadhk/restpos/d/gh;->b:Lcom/aadhk/restpos/d/gi;

    const v0, 0x7f0b0231

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/aadhk/restpos/d/gi;->a:Landroid/widget/TextView;

    .line 94
    iget-object v1, p0, Lcom/aadhk/restpos/d/gh;->b:Lcom/aadhk/restpos/d/gi;

    const v0, 0x7f0b0230

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v1, Lcom/aadhk/restpos/d/gi;->b:Landroid/widget/LinearLayout;

    .line 95
    iget-object v0, p0, Lcom/aadhk/restpos/d/gh;->b:Lcom/aadhk/restpos/d/gi;

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 99
    :goto_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/gh;->b:Lcom/aadhk/restpos/d/gi;

    iget-object v0, v0, Lcom/aadhk/restpos/d/gi;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/aadhk/restpos/d/gh;->a:Lcom/aadhk/restpos/d/gf;

    invoke-static {v1}, Lcom/aadhk/restpos/d/gf;->c(Lcom/aadhk/restpos/d/gf;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    iget-object v0, p0, Lcom/aadhk/restpos/d/gh;->a:Lcom/aadhk/restpos/d/gf;

    invoke-static {v0}, Lcom/aadhk/restpos/d/gf;->d(Lcom/aadhk/restpos/d/gf;)I

    move-result v0

    if-ne v0, p1, :cond_1

    .line 101
    iget-object v0, p0, Lcom/aadhk/restpos/d/gh;->b:Lcom/aadhk/restpos/d/gi;

    iget-object v0, v0, Lcom/aadhk/restpos/d/gi;->b:Landroid/widget/LinearLayout;

    const v1, 0x7f080062

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 105
    :goto_1
    return-object p2

    .line 97
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/d/gi;

    iput-object v0, p0, Lcom/aadhk/restpos/d/gh;->b:Lcom/aadhk/restpos/d/gi;

    goto :goto_0

    .line 103
    :cond_1
    iget-object v0, p0, Lcom/aadhk/restpos/d/gh;->b:Lcom/aadhk/restpos/d/gi;

    iget-object v0, v0, Lcom/aadhk/restpos/d/gi;->b:Landroid/widget/LinearLayout;

    const v1, 0x7f080039

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_1
.end method
