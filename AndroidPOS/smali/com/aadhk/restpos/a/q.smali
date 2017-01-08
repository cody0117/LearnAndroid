.class public final Lcom/aadhk/restpos/a/q;
.super Landroid/widget/BaseExpandableListAdapter;
.source "ProGuard"


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/OrderItem;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/aadhk/restpos/TakeOrderActivity;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:Landroid/view/LayoutInflater;

.field private f:Lcom/aadhk/restpos/d/en;

.field private g:[Ljava/lang/String;

.field private h:[Ljava/lang/String;

.field private i:[Ljava/lang/String;

.field private j:Landroid/content/res/Resources;

.field private k:Lcom/aadhk/restpos/bean/Company;

.field private l:Lcom/aadhk/restpos/g/ad;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    move-object v0, p1

    .line 53
    check-cast v0, Lcom/aadhk/restpos/TakeOrderActivity;

    iput-object v0, p0, Lcom/aadhk/restpos/a/q;->b:Lcom/aadhk/restpos/TakeOrderActivity;

    .line 54
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/a/q;->j:Landroid/content/res/Resources;

    .line 55
    iget-object v0, p0, Lcom/aadhk/restpos/a/q;->j:Landroid/content/res/Resources;

    const v1, 0x7f0e0013

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/a/q;->g:[Ljava/lang/String;

    .line 56
    iget-object v0, p0, Lcom/aadhk/restpos/a/q;->j:Landroid/content/res/Resources;

    const v1, 0x7f0e0014

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/a/q;->h:[Ljava/lang/String;

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/aadhk/restpos/d/en;Ljava/util/List;Lcom/aadhk/restpos/g/ad;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/aadhk/restpos/d/en;",
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/OrderItem;",
            ">;",
            "Lcom/aadhk/restpos/g/ad;",
            ")V"
        }
    .end annotation

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/aadhk/restpos/a/q;-><init>(Landroid/content/Context;)V

    .line 61
    iput-object p3, p0, Lcom/aadhk/restpos/a/q;->a:Ljava/util/List;

    .line 62
    iput-object p2, p0, Lcom/aadhk/restpos/a/q;->f:Lcom/aadhk/restpos/d/en;

    .line 63
    iput-object p4, p0, Lcom/aadhk/restpos/a/q;->l:Lcom/aadhk/restpos/g/ad;

    .line 64
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/a/q;->e:Landroid/view/LayoutInflater;

    .line 65
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/POSApp;

    invoke-virtual {v0}, Lcom/aadhk/restpos/POSApp;->b()Lcom/aadhk/restpos/bean/Company;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/a/q;->k:Lcom/aadhk/restpos/bean/Company;

    .line 66
    iget-object v0, p0, Lcom/aadhk/restpos/a/q;->k:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Company;->getCurrencySign()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/a/q;->c:Ljava/lang/String;

    .line 67
    iget-object v0, p0, Lcom/aadhk/restpos/a/q;->k:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Company;->getDecimalPlace()I

    move-result v0

    iput v0, p0, Lcom/aadhk/restpos/a/q;->d:I

    .line 68
    return-void
.end method

.method static synthetic a(Lcom/aadhk/restpos/a/q;)Lcom/aadhk/restpos/d/en;
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/aadhk/restpos/a/q;->f:Lcom/aadhk/restpos/d/en;

    return-object v0
.end method

.method static synthetic a(Lcom/aadhk/restpos/a/q;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/aadhk/restpos/a/q;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method static synthetic a(Lcom/aadhk/restpos/a/q;II)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/aadhk/restpos/a/q;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/OrderItem;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/OrderItem;->getOrderModifiers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method static synthetic a(Lcom/aadhk/restpos/a/q;Lcom/aadhk/restpos/bean/OrderItem;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 37
    new-instance v0, Lcom/aadhk/restpos/c/ay;

    iget-object v1, p0, Lcom/aadhk/restpos/a/q;->b:Lcom/aadhk/restpos/TakeOrderActivity;

    iget-object v2, p0, Lcom/aadhk/restpos/a/q;->l:Lcom/aadhk/restpos/g/ad;

    invoke-direct {v0, v1, p1, v2}, Lcom/aadhk/restpos/c/ay;-><init>(Landroid/content/Context;Lcom/aadhk/restpos/bean/OrderItem;Lcom/aadhk/restpos/g/ad;)V

    const v1, 0x7f0802e8

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/ay;->setTitle(I)V

    new-instance v1, Lcom/aadhk/restpos/a/z;

    invoke-direct {v1, p0, p1}, Lcom/aadhk/restpos/a/z;-><init>(Lcom/aadhk/restpos/a/q;Lcom/aadhk/restpos/bean/OrderItem;)V

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/ay;->a(Lcom/aadhk/restpos/c/bb;)V

    invoke-virtual {v0}, Lcom/aadhk/restpos/c/ay;->show()V

    return-void
.end method

.method static synthetic a(Lcom/aadhk/restpos/a/q;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 37
    iput-object p1, p0, Lcom/aadhk/restpos/a/q;->i:[Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/aadhk/restpos/a/q;)Lcom/aadhk/restpos/TakeOrderActivity;
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/aadhk/restpos/a/q;->b:Lcom/aadhk/restpos/TakeOrderActivity;

    return-object v0
.end method

.method static synthetic b(Lcom/aadhk/restpos/a/q;Lcom/aadhk/restpos/bean/OrderItem;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 37
    new-instance v0, Lcom/aadhk/restpos/c/v;

    iget-object v1, p0, Lcom/aadhk/restpos/a/q;->b:Lcom/aadhk/restpos/TakeOrderActivity;

    iget v2, p0, Lcom/aadhk/restpos/a/q;->d:I

    invoke-direct {v0, v1, p1}, Lcom/aadhk/restpos/c/v;-><init>(Landroid/content/Context;Lcom/aadhk/restpos/bean/OrderItem;)V

    new-instance v1, Lcom/aadhk/restpos/a/ab;

    invoke-direct {v1, p0}, Lcom/aadhk/restpos/a/ab;-><init>(Lcom/aadhk/restpos/a/q;)V

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/v;->a(Lcom/aadhk/restpos/c/x;)V

    invoke-virtual {v0}, Lcom/aadhk/restpos/c/v;->show()V

    return-void
.end method

.method static synthetic c(Lcom/aadhk/restpos/a/q;Lcom/aadhk/restpos/bean/OrderItem;)V
    .locals 13
    .parameter
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/aadhk/restpos/a/q;->l:Lcom/aadhk/restpos/g/ad;

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/OrderItem;->getModifierGroupId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/OrderItem;->getTax1Id()I

    move-result v2

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/OrderItem;->getTax2Id()I

    move-result v3

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/OrderItem;->getTax3Id()I

    move-result v4

    iget-object v5, p0, Lcom/aadhk/restpos/a/q;->k:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v5}, Lcom/aadhk/restpos/bean/Company;->isItemPriceIncludeTax()Z

    move-result v5

    iget-object v6, p0, Lcom/aadhk/restpos/a/q;->k:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v6}, Lcom/aadhk/restpos/bean/Company;->getTax1()D

    move-result-wide v6

    iget-object v8, p0, Lcom/aadhk/restpos/a/q;->k:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v8}, Lcom/aadhk/restpos/bean/Company;->getTax2()D

    move-result-wide v8

    iget-object v10, p0, Lcom/aadhk/restpos/a/q;->k:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v10}, Lcom/aadhk/restpos/bean/Company;->getTax3()D

    move-result-wide v10

    iget-object v12, p0, Lcom/aadhk/restpos/a/q;->k:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v12}, Lcom/aadhk/restpos/bean/Company;->getDecimalPlace()I

    move-result v12

    invoke-virtual/range {v0 .. v12}, Lcom/aadhk/restpos/g/ad;->a(Ljava/lang/String;IIIZDDDI)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/aadhk/restpos/c/bf;

    iget-object v2, p0, Lcom/aadhk/restpos/a/q;->b:Lcom/aadhk/restpos/TakeOrderActivity;

    invoke-direct {v1, v2, p1, v0}, Lcom/aadhk/restpos/c/bf;-><init>(Landroid/content/Context;Lcom/aadhk/restpos/bean/OrderItem;Ljava/util/List;)V

    new-instance v0, Lcom/aadhk/restpos/a/aa;

    invoke-direct {v0, p0}, Lcom/aadhk/restpos/a/aa;-><init>(Lcom/aadhk/restpos/a/q;)V

    invoke-virtual {v1, v0}, Lcom/aadhk/restpos/c/bf;->a(Lcom/aadhk/product/library/b/f;)V

    invoke-virtual {v1}, Lcom/aadhk/restpos/c/bf;->show()V

    return-void
.end method

.method static synthetic c(Lcom/aadhk/restpos/a/q;)[Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/aadhk/restpos/a/q;->h:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/aadhk/restpos/a/q;)[Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/aadhk/restpos/a/q;->i:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/aadhk/restpos/a/q;)[Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/aadhk/restpos/a/q;->g:[Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final getChild(II)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 72
    iget-object v0, p0, Lcom/aadhk/restpos/a/q;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/OrderItem;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/OrderItem;->getOrderModifiers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getChildId(II)J
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 81
    int-to-long v0, p2

    return-wide v0
.end method

.method public final getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 87
    if-nez p4, :cond_0

    .line 91
    iget-object v0, p0, Lcom/aadhk/restpos/a/q;->e:Landroid/view/LayoutInflater;

    const v1, 0x7f030089

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p4

    .line 92
    new-instance v1, Lcom/aadhk/restpos/a/ad;

    const/4 v0, 0x0

    invoke-direct {v1, p0, v0}, Lcom/aadhk/restpos/a/ad;-><init>(Lcom/aadhk/restpos/a/q;B)V

    .line 93
    const v0, 0x7f09018a

    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/aadhk/restpos/a/ad;->c:Landroid/widget/TextView;

    .line 94
    const v0, 0x7f090171

    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/aadhk/restpos/a/ad;->a:Landroid/widget/TextView;

    .line 95
    const v0, 0x7f0900f3

    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/aadhk/restpos/a/ad;->b:Landroid/widget/TextView;

    .line 96
    const v0, 0x7f0901ba

    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v1, Lcom/aadhk/restpos/a/ad;->e:Landroid/widget/LinearLayout;

    .line 97
    const v0, 0x7f0901b9

    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v1, Lcom/aadhk/restpos/a/ad;->d:Landroid/widget/LinearLayout;

    .line 98
    invoke-virtual {p4, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 103
    :goto_0
    iget-object v0, v1, Lcom/aadhk/restpos/a/ad;->e:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/aadhk/restpos/a/r;

    invoke-direct {v2, p0, p1, p2, v1}, Lcom/aadhk/restpos/a/r;-><init>(Lcom/aadhk/restpos/a/q;IILcom/aadhk/restpos/a/ad;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    iget-object v0, v1, Lcom/aadhk/restpos/a/ad;->d:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/aadhk/restpos/a/s;

    invoke-direct {v2, p0, p1, p2, v1}, Lcom/aadhk/restpos/a/s;-><init>(Lcom/aadhk/restpos/a/q;IILcom/aadhk/restpos/a/ad;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    invoke-virtual {p4, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 138
    invoke-virtual {p0, p1, p2}, Lcom/aadhk/restpos/a/q;->getChild(II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/OrderModifier;

    .line 139
    iget-object v2, v1, Lcom/aadhk/restpos/a/ad;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/OrderModifier;->getModifierName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    iget-object v2, v1, Lcom/aadhk/restpos/a/ad;->b:Landroid/widget/TextView;

    iget v3, p0, Lcom/aadhk/restpos/a/q;->d:I

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/OrderModifier;->getModifierPrice()D

    move-result-wide v4

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/OrderModifier;->getQty()I

    move-result v6

    int-to-double v6, v6

    mul-double/2addr v4, v6

    iget-object v6, p0, Lcom/aadhk/restpos/a/q;->c:Ljava/lang/String;

    invoke-static {v3, v4, v5, v6}, Lcom/aadhk/restpos/util/p;->a(IDLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/OrderModifier;->getType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 142
    iget-object v1, v1, Lcom/aadhk/restpos/a/ad;->c:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "-"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/OrderModifier;->getQty()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    :goto_1
    return-object p4

    .line 100
    :cond_0
    invoke-virtual {p4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/a/ad;

    move-object v1, v0

    goto :goto_0

    .line 144
    :cond_1
    iget-object v1, v1, Lcom/aadhk/restpos/a/ad;->c:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "+"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/OrderModifier;->getQty()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public final getChildrenCount(I)I
    .locals 1
    .parameter

    .prologue
    .line 151
    iget-object v0, p0, Lcom/aadhk/restpos/a/q;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/OrderItem;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/OrderItem;->getOrderModifiers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getGroup(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 156
    iget-object v0, p0, Lcom/aadhk/restpos/a/q;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getGroupCount()I
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/aadhk/restpos/a/q;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getGroupId(I)J
    .locals 2
    .parameter

    .prologue
    .line 170
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x0

    .line 176
    if-nez p3, :cond_4

    .line 177
    iget-object v0, p0, Lcom/aadhk/restpos/a/q;->e:Landroid/view/LayoutInflater;

    const v1, 0x7f030088

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    .line 178
    new-instance v1, Lcom/aadhk/restpos/a/ac;

    invoke-direct {v1, p0, v7}, Lcom/aadhk/restpos/a/ac;-><init>(Lcom/aadhk/restpos/a/q;B)V

    .line 179
    const v0, 0x7f090171

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/aadhk/restpos/a/ac;->a:Landroid/widget/TextView;

    .line 180
    const v0, 0x7f0900f3

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/aadhk/restpos/a/ac;->b:Landroid/widget/TextView;

    .line 181
    const v0, 0x7f0901b2

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v1, Lcom/aadhk/restpos/a/ac;->f:Landroid/widget/LinearLayout;

    .line 182
    const v0, 0x7f0901b6

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v1, Lcom/aadhk/restpos/a/ac;->g:Landroid/widget/LinearLayout;

    .line 183
    const v0, 0x7f09018a

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/aadhk/restpos/a/ac;->c:Landroid/widget/TextView;

    .line 184
    const v0, 0x7f0901b7

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/aadhk/restpos/a/ac;->d:Landroid/widget/TextView;

    .line 185
    const v0, 0x7f0901b5

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/aadhk/restpos/a/ac;->e:Landroid/widget/TextView;

    .line 186
    const v0, 0x7f0901b4

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v1, Lcom/aadhk/restpos/a/ac;->h:Landroid/widget/LinearLayout;

    .line 187
    invoke-virtual {p3, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 192
    :goto_0
    invoke-virtual {p0, p1}, Lcom/aadhk/restpos/a/q;->getGroup(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/OrderItem;

    .line 193
    const-string v2, ""

    .line 194
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/OrderItem;->getDiscountAmt()D

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmpl-double v3, v3, v5

    if-eqz v3, :cond_0

    .line 195
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "-"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/aadhk/restpos/a/q;->d:I

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/OrderItem;->getDiscountAmt()D

    move-result-wide v4

    iget-object v6, p0, Lcom/aadhk/restpos/a/q;->c:Ljava/lang/String;

    invoke-static {v3, v4, v5, v6}, Lcom/aadhk/restpos/util/p;->a(IDLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/OrderItem;->getDiscountName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 197
    :cond_0
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/OrderItem;->getStatus()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 198
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/aadhk/restpos/a/q;->j:Landroid/content/res/Resources;

    const v4, 0x7f0802d2

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 200
    :cond_1
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/OrderItem;->getRemark()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    const-string v3, ""

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/OrderItem;->getRemark()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 201
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/OrderItem;->getRemark()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 204
    :cond_2
    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 205
    iget-object v3, v1, Lcom/aadhk/restpos/a/ac;->e:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 206
    invoke-virtual {v2, v7}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 207
    const/16 v4, 0x2c

    if-ne v3, v4, :cond_3

    .line 208
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 210
    :cond_3
    iget-object v3, v1, Lcom/aadhk/restpos/a/ac;->e:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 215
    :goto_1
    iget-object v2, v1, Lcom/aadhk/restpos/a/ac;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/OrderItem;->getItemName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 216
    iget-object v2, v1, Lcom/aadhk/restpos/a/ac;->b:Landroid/widget/TextView;

    iget v3, p0, Lcom/aadhk/restpos/a/q;->d:I

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/OrderItem;->getItemPrice()D

    move-result-wide v4

    iget-object v6, p0, Lcom/aadhk/restpos/a/q;->c:Ljava/lang/String;

    invoke-static {v3, v4, v5, v6}, Lcom/aadhk/restpos/util/p;->a(IDLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 217
    iget-object v2, v1, Lcom/aadhk/restpos/a/ac;->d:Landroid/widget/TextView;

    iget v3, p0, Lcom/aadhk/restpos/a/q;->d:I

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/OrderItem;->getQty()I

    move-result v4

    int-to-double v4, v4

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/OrderItem;->getItemPrice()D

    move-result-wide v6

    mul-double/2addr v4, v6

    iget-object v6, p0, Lcom/aadhk/restpos/a/q;->c:Ljava/lang/String;

    invoke-static {v3, v4, v5, v6}, Lcom/aadhk/restpos/util/p;->a(IDLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 218
    iget-object v2, v1, Lcom/aadhk/restpos/a/ac;->c:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "x"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/OrderItem;->getQty()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 219
    iget-object v2, v1, Lcom/aadhk/restpos/a/ac;->g:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/aadhk/restpos/a/t;

    invoke-direct {v3, p0, v0, p1}, Lcom/aadhk/restpos/a/t;-><init>(Lcom/aadhk/restpos/a/q;Lcom/aadhk/restpos/bean/OrderItem;I)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 236
    iget-object v2, v1, Lcom/aadhk/restpos/a/ac;->f:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/aadhk/restpos/a/u;

    invoke-direct {v3, p0, v0}, Lcom/aadhk/restpos/a/u;-><init>(Lcom/aadhk/restpos/a/q;Lcom/aadhk/restpos/bean/OrderItem;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 254
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/OrderItem;->getModifierGroupId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 255
    iget-object v1, v1, Lcom/aadhk/restpos/a/ac;->h:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/aadhk/restpos/a/v;

    invoke-direct {v2, p0, v0}, Lcom/aadhk/restpos/a/v;-><init>(Lcom/aadhk/restpos/a/q;Lcom/aadhk/restpos/bean/OrderItem;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 338
    :goto_2
    return-object p3

    .line 189
    :cond_4
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/a/ac;

    move-object v1, v0

    goto/16 :goto_0

    .line 212
    :cond_5
    iget-object v2, v1, Lcom/aadhk/restpos/a/ac;->e:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 311
    :cond_6
    iget-object v1, v1, Lcom/aadhk/restpos/a/ac;->h:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/aadhk/restpos/a/x;

    invoke-direct {v2, p0, v0}, Lcom/aadhk/restpos/a/x;-><init>(Lcom/aadhk/restpos/a/q;Lcom/aadhk/restpos/bean/OrderItem;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2
.end method

.method public final hasStableIds()Z
    .locals 1

    .prologue
    .line 386
    const/4 v0, 0x0

    return v0
.end method

.method public final isChildSelectable(II)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 391
    const/4 v0, 0x1

    return v0
.end method
