.class final Lcom/aadhk/restpos/d/fv;
.super Landroid/widget/BaseAdapter;
.source "ProGuard"


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/d/fq;

.field private b:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/aadhk/restpos/d/fq;[Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 199
    iput-object p1, p0, Lcom/aadhk/restpos/d/fv;->a:Lcom/aadhk/restpos/d/fq;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 200
    iput-object p2, p0, Lcom/aadhk/restpos/d/fv;->b:[Ljava/lang/String;

    .line 201
    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/aadhk/restpos/d/fv;->b:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 210
    iget-object v0, p0, Lcom/aadhk/restpos/d/fv;->b:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 215
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 221
    if-nez p2, :cond_1

    .line 222
    iget-object v0, p0, Lcom/aadhk/restpos/d/fv;->a:Lcom/aadhk/restpos/d/fq;

    invoke-static {v0}, Lcom/aadhk/restpos/d/fq;->a(Lcom/aadhk/restpos/d/fq;)Lcom/aadhk/restpos/PriceScheduleActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/PriceScheduleActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03002d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 223
    new-instance v1, Lcom/aadhk/restpos/d/fx;

    invoke-direct {v1, p0}, Lcom/aadhk/restpos/d/fx;-><init>(Lcom/aadhk/restpos/d/fv;)V

    .line 224
    const v0, 0x7f090099

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/aadhk/restpos/d/fx;->a:Landroid/widget/TextView;

    .line 225
    const v0, 0x7f090098

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, v1, Lcom/aadhk/restpos/d/fx;->b:Landroid/widget/CheckBox;

    .line 226
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v0, v1

    .line 230
    :goto_0
    iget-object v1, v0, Lcom/aadhk/restpos/d/fx;->a:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/aadhk/restpos/d/fv;->b:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 232
    iget-object v1, p0, Lcom/aadhk/restpos/d/fv;->a:Lcom/aadhk/restpos/d/fq;

    invoke-static {v1}, Lcom/aadhk/restpos/d/fq;->b(Lcom/aadhk/restpos/d/fq;)[Ljava/lang/Boolean;

    move-result-object v1

    aget-object v1, v1, p1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 233
    iget-object v1, v0, Lcom/aadhk/restpos/d/fx;->b:Landroid/widget/CheckBox;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 235
    :cond_0
    iget-object v1, v0, Lcom/aadhk/restpos/d/fx;->b:Landroid/widget/CheckBox;

    new-instance v2, Lcom/aadhk/restpos/d/fw;

    invoke-direct {v2, p0, p1, v0}, Lcom/aadhk/restpos/d/fw;-><init>(Lcom/aadhk/restpos/d/fv;ILcom/aadhk/restpos/d/fx;)V

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 242
    return-object p2

    .line 228
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/d/fx;

    goto :goto_0
.end method
