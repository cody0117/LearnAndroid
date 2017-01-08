.class public final Lcom/aadhk/restpos/a/m;
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

.field private f:Lcom/aadhk/restpos/d/bv;

.field private g:[Ljava/lang/String;

.field private h:[Ljava/lang/String;

.field private i:Landroid/content/res/Resources;

.field private j:Lcom/aadhk/restpos/bean/Company;

.field private k:Lcom/aadhk/restpos/b/j;

.field private l:Lcom/aadhk/restpos/b/l;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 61
    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    move-object v0, p1

    .line 62
    check-cast v0, Lcom/aadhk/restpos/TakeOrderActivity;

    iput-object v0, p0, Lcom/aadhk/restpos/a/m;->b:Lcom/aadhk/restpos/TakeOrderActivity;

    .line 63
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/a/m;->i:Landroid/content/res/Resources;

    .line 64
    iget-object v0, p0, Lcom/aadhk/restpos/a/m;->i:Landroid/content/res/Resources;

    const v1, 0x7f070013

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/a/m;->g:[Ljava/lang/String;

    .line 65
    iget-object v0, p0, Lcom/aadhk/restpos/a/m;->i:Landroid/content/res/Resources;

    const v1, 0x7f070014

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/a/m;->h:[Ljava/lang/String;

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/aadhk/restpos/d/bv;Ljava/util/List;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/aadhk/restpos/d/bv;",
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/OrderItem;",
            ">;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ")V"
        }
    .end annotation

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/aadhk/restpos/a/m;-><init>(Landroid/content/Context;)V

    .line 70
    iput-object p3, p0, Lcom/aadhk/restpos/a/m;->a:Ljava/util/List;

    .line 71
    iput-object p2, p0, Lcom/aadhk/restpos/a/m;->f:Lcom/aadhk/restpos/d/bv;

    .line 72
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/a/m;->e:Landroid/view/LayoutInflater;

    .line 73
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/POSApp;

    invoke-virtual {v0}, Lcom/aadhk/restpos/POSApp;->b()Lcom/aadhk/restpos/bean/Company;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/a/m;->j:Lcom/aadhk/restpos/bean/Company;

    .line 74
    iget-object v0, p0, Lcom/aadhk/restpos/a/m;->j:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Company;->getCurrencySign()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/a/m;->c:Ljava/lang/String;

    .line 75
    iget-object v0, p0, Lcom/aadhk/restpos/a/m;->j:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Company;->getDecimalPlace()I

    move-result v0

    iput v0, p0, Lcom/aadhk/restpos/a/m;->d:I

    .line 76
    new-instance v0, Lcom/aadhk/restpos/b/j;

    invoke-direct {v0, p4}, Lcom/aadhk/restpos/b/j;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v0, p0, Lcom/aadhk/restpos/a/m;->k:Lcom/aadhk/restpos/b/j;

    .line 77
    new-instance v0, Lcom/aadhk/restpos/b/l;

    invoke-direct {v0, p4}, Lcom/aadhk/restpos/b/l;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v0, p0, Lcom/aadhk/restpos/a/m;->l:Lcom/aadhk/restpos/b/l;

    .line 78
    return-void
.end method

.method static synthetic a(Lcom/aadhk/restpos/a/m;)Lcom/aadhk/restpos/d/bv;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/aadhk/restpos/a/m;->f:Lcom/aadhk/restpos/d/bv;

    return-object v0
.end method

.method static synthetic a(Lcom/aadhk/restpos/a/m;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/aadhk/restpos/a/m;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method static synthetic a(Lcom/aadhk/restpos/a/m;II)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/aadhk/restpos/a/m;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/OrderItem;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/OrderItem;->getOrderModifiers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method static synthetic a(Lcom/aadhk/restpos/a/m;Lcom/aadhk/restpos/bean/OrderItem;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/aadhk/restpos/a/m;->l:Lcom/aadhk/restpos/b/l;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/b/l;->b(I)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/aadhk/restpos/c/bz;

    iget-object v2, p0, Lcom/aadhk/restpos/a/m;->b:Lcom/aadhk/restpos/TakeOrderActivity;

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/OrderItem;->getRemark()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/aadhk/restpos/c/bz;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V

    const v0, 0x7f090289

    invoke-virtual {v1, v0}, Lcom/aadhk/restpos/c/bz;->setTitle(I)V

    new-instance v0, Lcom/aadhk/restpos/a/v;

    invoke-direct {v0, p0, p1}, Lcom/aadhk/restpos/a/v;-><init>(Lcom/aadhk/restpos/a/m;Lcom/aadhk/restpos/bean/OrderItem;)V

    invoke-virtual {v1, v0}, Lcom/aadhk/restpos/c/bz;->a(Lcom/aadhk/restpos/c/ca;)V

    invoke-virtual {v1}, Lcom/aadhk/restpos/c/bz;->show()V

    return-void
.end method

.method static synthetic b(Lcom/aadhk/restpos/a/m;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/aadhk/restpos/a/m;->a:Ljava/util/List;

    return-object v0
.end method

.method static synthetic b(Lcom/aadhk/restpos/a/m;Lcom/aadhk/restpos/bean/OrderItem;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 45
    new-instance v0, Lcom/aadhk/restpos/c/v;

    iget-object v1, p0, Lcom/aadhk/restpos/a/m;->b:Lcom/aadhk/restpos/TakeOrderActivity;

    iget v2, p0, Lcom/aadhk/restpos/a/m;->d:I

    invoke-direct {v0, v1, p1, v2}, Lcom/aadhk/restpos/c/v;-><init>(Landroid/content/Context;Lcom/aadhk/restpos/bean/OrderItem;I)V

    new-instance v1, Lcom/aadhk/restpos/a/x;

    invoke-direct {v1, p0, p1}, Lcom/aadhk/restpos/a/x;-><init>(Lcom/aadhk/restpos/a/m;Lcom/aadhk/restpos/bean/OrderItem;)V

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/v;->a(Lcom/aadhk/restpos/c/x;)V

    invoke-virtual {v0}, Lcom/aadhk/restpos/c/v;->show()V

    return-void
.end method

.method static synthetic c(Lcom/aadhk/restpos/a/m;)Lcom/aadhk/restpos/TakeOrderActivity;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/aadhk/restpos/a/m;->b:Lcom/aadhk/restpos/TakeOrderActivity;

    return-object v0
.end method

.method static synthetic c(Lcom/aadhk/restpos/a/m;Lcom/aadhk/restpos/bean/OrderItem;)V
    .locals 10
    .parameter
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/aadhk/restpos/a/m;->k:Lcom/aadhk/restpos/b/j;

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/OrderItem;->getModifierGroupId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/OrderItem;->getTax1Id()I

    move-result v2

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/OrderItem;->getTax2Id()I

    move-result v3

    iget-object v4, p0, Lcom/aadhk/restpos/a/m;->j:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v4}, Lcom/aadhk/restpos/bean/Company;->isIncludeTax()Z

    move-result v4

    iget-object v5, p0, Lcom/aadhk/restpos/a/m;->j:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v5}, Lcom/aadhk/restpos/bean/Company;->getTax1()D

    move-result-wide v5

    iget-object v7, p0, Lcom/aadhk/restpos/a/m;->j:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v7}, Lcom/aadhk/restpos/bean/Company;->getTax2()D

    move-result-wide v7

    iget-object v9, p0, Lcom/aadhk/restpos/a/m;->j:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v9}, Lcom/aadhk/restpos/bean/Company;->getDecimalPlace()I

    move-result v9

    invoke-virtual/range {v0 .. v9}, Lcom/aadhk/restpos/b/j;->a(Ljava/lang/String;IIZDDI)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/aadhk/restpos/c/ap;

    iget-object v2, p0, Lcom/aadhk/restpos/a/m;->b:Lcom/aadhk/restpos/TakeOrderActivity;

    invoke-direct {v1, v2, p1, v0}, Lcom/aadhk/restpos/c/ap;-><init>(Landroid/content/Context;Lcom/aadhk/restpos/bean/OrderItem;Ljava/util/List;)V

    new-instance v0, Lcom/aadhk/restpos/a/w;

    invoke-direct {v0, p0}, Lcom/aadhk/restpos/a/w;-><init>(Lcom/aadhk/restpos/a/m;)V

    invoke-virtual {v1, v0}, Lcom/aadhk/restpos/c/ap;->a(Lcom/aadhk/product/library/b/f;)V

    invoke-virtual {v1}, Lcom/aadhk/restpos/c/ap;->show()V

    return-void
.end method

.method static synthetic d(Lcom/aadhk/restpos/a/m;)[Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/aadhk/restpos/a/m;->h:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/aadhk/restpos/a/m;)[Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/aadhk/restpos/a/m;->g:[Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final getChild(II)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 82
    iget-object v0, p0, Lcom/aadhk/restpos/a/m;->a:Ljava/util/List;

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
    .line 91
    int-to-long v0, p2

    return-wide v0
.end method

.method public final getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 97
    if-nez p4, :cond_0

    .line 101
    iget-object v0, p0, Lcom/aadhk/restpos/a/m;->e:Landroid/view/LayoutInflater;

    const v1, 0x7f030072

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p4

    .line 102
    new-instance v1, Lcom/aadhk/restpos/a/z;

    const/4 v0, 0x0

    invoke-direct {v1, p0, v0}, Lcom/aadhk/restpos/a/z;-><init>(Lcom/aadhk/restpos/a/m;B)V

    .line 103
    const v0, 0x7f0b0144

    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/aadhk/restpos/a/z;->c:Landroid/widget/TextView;

    .line 104
    const v0, 0x7f0b012c

    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/aadhk/restpos/a/z;->a:Landroid/widget/TextView;

    .line 105
    const v0, 0x7f0b00d3

    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/aadhk/restpos/a/z;->b:Landroid/widget/TextView;

    .line 106
    const v0, 0x7f0b016b

    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v1, Lcom/aadhk/restpos/a/z;->e:Landroid/widget/LinearLayout;

    .line 107
    const v0, 0x7f0b016a

    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v1, Lcom/aadhk/restpos/a/z;->d:Landroid/widget/LinearLayout;

    .line 108
    invoke-virtual {p4, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 113
    :goto_0
    iget-object v0, v1, Lcom/aadhk/restpos/a/z;->e:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/aadhk/restpos/a/n;

    invoke-direct {v2, p0, p1, p2, v1}, Lcom/aadhk/restpos/a/n;-><init>(Lcom/aadhk/restpos/a/m;IILcom/aadhk/restpos/a/z;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    iget-object v0, v1, Lcom/aadhk/restpos/a/z;->d:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/aadhk/restpos/a/o;

    invoke-direct {v2, p0, p1, p2, v1}, Lcom/aadhk/restpos/a/o;-><init>(Lcom/aadhk/restpos/a/m;IILcom/aadhk/restpos/a/z;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    invoke-virtual {p4, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 148
    invoke-virtual {p0, p1, p2}, Lcom/aadhk/restpos/a/m;->getChild(II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/OrderModifier;

    .line 149
    iget-object v2, v1, Lcom/aadhk/restpos/a/z;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/OrderModifier;->getModifierName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    iget-object v2, v1, Lcom/aadhk/restpos/a/z;->b:Landroid/widget/TextView;

    iget v3, p0, Lcom/aadhk/restpos/a/m;->d:I

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/OrderModifier;->getModifierPrice()D

    move-result-wide v4

    iget-object v6, p0, Lcom/aadhk/restpos/a/m;->c:Ljava/lang/String;

    invoke-static {v3, v4, v5, v6}, Lcom/aadhk/restpos/f/j;->a(IDLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/OrderModifier;->getType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 152
    iget-object v1, v1, Lcom/aadhk/restpos/a/z;->c:Landroid/widget/TextView;

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

    .line 156
    :goto_1
    return-object p4

    .line 110
    :cond_0
    invoke-virtual {p4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/a/z;

    move-object v1, v0

    goto :goto_0

    .line 154
    :cond_1
    iget-object v1, v1, Lcom/aadhk/restpos/a/z;->c:Landroid/widget/TextView;

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
    .line 161
    iget-object v0, p0, Lcom/aadhk/restpos/a/m;->a:Ljava/util/List;

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
    .line 166
    iget-object v0, p0, Lcom/aadhk/restpos/a/m;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getGroupCount()I
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/aadhk/restpos/a/m;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getGroupId(I)J
    .locals 2
    .parameter

    .prologue
    .line 180
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

    .line 186
    if-nez p3, :cond_4

    .line 187
    iget-object v0, p0, Lcom/aadhk/restpos/a/m;->e:Landroid/view/LayoutInflater;

    const v1, 0x7f030071

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    .line 188
    new-instance v1, Lcom/aadhk/restpos/a/y;

    invoke-direct {v1, p0, v7}, Lcom/aadhk/restpos/a/y;-><init>(Lcom/aadhk/restpos/a/m;B)V

    .line 189
    const v0, 0x7f0b012c

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/aadhk/restpos/a/y;->a:Landroid/widget/TextView;

    .line 190
    const v0, 0x7f0b00d3

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/aadhk/restpos/a/y;->b:Landroid/widget/TextView;

    .line 191
    const v0, 0x7f0b0164

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v1, Lcom/aadhk/restpos/a/y;->f:Landroid/widget/LinearLayout;

    .line 192
    const v0, 0x7f0b0167

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v1, Lcom/aadhk/restpos/a/y;->g:Landroid/widget/LinearLayout;

    .line 193
    const v0, 0x7f0b0144

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/aadhk/restpos/a/y;->c:Landroid/widget/TextView;

    .line 194
    const v0, 0x7f0b0168

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/aadhk/restpos/a/y;->d:Landroid/widget/TextView;

    .line 195
    const v0, 0x7f0b010e

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/aadhk/restpos/a/y;->e:Landroid/widget/TextView;

    .line 196
    const v0, 0x7f0b0166

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v1, Lcom/aadhk/restpos/a/y;->h:Landroid/widget/LinearLayout;

    .line 197
    invoke-virtual {p3, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 202
    :goto_0
    invoke-virtual {p0, p1}, Lcom/aadhk/restpos/a/m;->getGroup(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/OrderItem;

    .line 203
    const-string v2, ""

    .line 204
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/OrderItem;->getDisAmt()D

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmpl-double v3, v3, v5

    if-eqz v3, :cond_0

    .line 205
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "-"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/aadhk/restpos/a/m;->d:I

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/OrderItem;->getDisAmt()D

    move-result-wide v4

    iget-object v6, p0, Lcom/aadhk/restpos/a/m;->c:Ljava/lang/String;

    invoke-static {v3, v4, v5, v6}, Lcom/aadhk/restpos/f/j;->a(IDLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/OrderItem;->getDisName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 207
    :cond_0
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/OrderItem;->getStatus()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 208
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/aadhk/restpos/a/m;->i:Landroid/content/res/Resources;

    const v4, 0x7f090274

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 210
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

    .line 211
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

    .line 214
    :cond_2
    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 215
    iget-object v3, v1, Lcom/aadhk/restpos/a/y;->e:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 216
    invoke-virtual {v2, v7}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 217
    const/16 v4, 0x2c

    if-ne v3, v4, :cond_3

    .line 218
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 220
    :cond_3
    iget-object v3, v1, Lcom/aadhk/restpos/a/y;->e:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 225
    :goto_1
    iget-object v2, v1, Lcom/aadhk/restpos/a/y;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/OrderItem;->getItemName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 226
    iget-object v2, v1, Lcom/aadhk/restpos/a/y;->b:Landroid/widget/TextView;

    iget v3, p0, Lcom/aadhk/restpos/a/m;->d:I

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/OrderItem;->getItemPrice()D

    move-result-wide v4

    iget-object v6, p0, Lcom/aadhk/restpos/a/m;->c:Ljava/lang/String;

    invoke-static {v3, v4, v5, v6}, Lcom/aadhk/restpos/f/j;->a(IDLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 227
    iget-object v2, v1, Lcom/aadhk/restpos/a/y;->d:Landroid/widget/TextView;

    iget v3, p0, Lcom/aadhk/restpos/a/m;->d:I

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/OrderItem;->getNum()I

    move-result v4

    int-to-double v4, v4

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/OrderItem;->getItemPrice()D

    move-result-wide v6

    mul-double/2addr v4, v6

    iget-object v6, p0, Lcom/aadhk/restpos/a/m;->c:Ljava/lang/String;

    invoke-static {v3, v4, v5, v6}, Lcom/aadhk/restpos/f/j;->a(IDLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 228
    iget-object v2, v1, Lcom/aadhk/restpos/a/y;->c:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "x"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/OrderItem;->getNum()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 229
    iget-object v2, v1, Lcom/aadhk/restpos/a/y;->g:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/aadhk/restpos/a/p;

    invoke-direct {v3, p0, v0, p1}, Lcom/aadhk/restpos/a/p;-><init>(Lcom/aadhk/restpos/a/m;Lcom/aadhk/restpos/bean/OrderItem;I)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 249
    iget-object v2, v1, Lcom/aadhk/restpos/a/y;->f:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/aadhk/restpos/a/q;

    invoke-direct {v3, p0, v0}, Lcom/aadhk/restpos/a/q;-><init>(Lcom/aadhk/restpos/a/m;Lcom/aadhk/restpos/bean/OrderItem;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 262
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/OrderItem;->getModifierGroupId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 263
    iget-object v1, v1, Lcom/aadhk/restpos/a/y;->h:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/aadhk/restpos/a/r;

    invoke-direct {v2, p0, v0}, Lcom/aadhk/restpos/a/r;-><init>(Lcom/aadhk/restpos/a/m;Lcom/aadhk/restpos/bean/OrderItem;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 320
    :goto_2
    return-object p3

    .line 199
    :cond_4
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/a/y;

    move-object v1, v0

    goto/16 :goto_0

    .line 222
    :cond_5
    iget-object v2, v1, Lcom/aadhk/restpos/a/y;->e:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 293
    :cond_6
    iget-object v1, v1, Lcom/aadhk/restpos/a/y;->h:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/aadhk/restpos/a/t;

    invoke-direct {v2, p0, v0}, Lcom/aadhk/restpos/a/t;-><init>(Lcom/aadhk/restpos/a/m;Lcom/aadhk/restpos/bean/OrderItem;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2
.end method

.method public final hasStableIds()Z
    .locals 1

    .prologue
    .line 371
    const/4 v0, 0x0

    return v0
.end method

.method public final isChildSelectable(II)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 376
    const/4 v0, 0x1

    return v0
.end method
