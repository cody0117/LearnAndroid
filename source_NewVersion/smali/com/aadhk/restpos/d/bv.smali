.class public final Lcom/aadhk/restpos/d/bv;
.super Landroid/support/v4/app/Fragment;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Lcom/aadhk/restpos/TakeOrderActivity;

.field private b:Landroid/widget/Button;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:Lcom/aadhk/restpos/bean/Order;

.field private f:Lcom/aadhk/restpos/b/n;

.field private g:Lcom/aadhk/restpos/b/w;

.field private h:Lcom/aadhk/restpos/b/i;

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/OrderItem;",
            ">;"
        }
    .end annotation
.end field

.field private j:Landroid/view/View;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/database/sqlite/SQLiteDatabase;

.field private p:Lcom/aadhk/restpos/f/l;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 245
    return-void
.end method

.method static synthetic a(Lcom/aadhk/restpos/d/bv;)Lcom/aadhk/restpos/bean/Order;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/aadhk/restpos/d/bv;->e:Lcom/aadhk/restpos/bean/Order;

    return-object v0
.end method

.method static synthetic b(Lcom/aadhk/restpos/d/bv;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/aadhk/restpos/d/bv;->i:Ljava/util/List;

    return-object v0
.end method

.method static synthetic c(Lcom/aadhk/restpos/d/bv;)Lcom/aadhk/restpos/TakeOrderActivity;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/aadhk/restpos/d/bv;->a:Lcom/aadhk/restpos/TakeOrderActivity;

    return-object v0
.end method

.method static synthetic d(Lcom/aadhk/restpos/d/bv;)Lcom/aadhk/restpos/b/w;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/aadhk/restpos/d/bv;->g:Lcom/aadhk/restpos/b/w;

    return-object v0
.end method

.method static synthetic e(Lcom/aadhk/restpos/d/bv;)Lcom/aadhk/restpos/f/l;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/aadhk/restpos/d/bv;->p:Lcom/aadhk/restpos/f/l;

    return-object v0
.end method

.method static synthetic f(Lcom/aadhk/restpos/d/bv;)Lcom/aadhk/restpos/b/n;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/aadhk/restpos/d/bv;->f:Lcom/aadhk/restpos/b/n;

    return-object v0
.end method

.method static synthetic g(Lcom/aadhk/restpos/d/bv;)Lcom/aadhk/restpos/b/i;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/aadhk/restpos/d/bv;->h:Lcom/aadhk/restpos/b/i;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 9

    .prologue
    .line 147
    const-wide/16 v0, 0x0

    .line 150
    iget-object v2, p0, Lcom/aadhk/restpos/d/bv;->i:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-wide v1, v0

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/OrderItem;

    .line 151
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/OrderItem;->getItemPrice()D

    move-result-wide v4

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/OrderItem;->getNum()I

    move-result v6

    int-to-double v6, v6

    mul-double/2addr v4, v6

    add-double/2addr v1, v4

    .line 153
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/OrderItem;->getOrderModifiers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/OrderModifier;

    .line 154
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/OrderModifier;->getType()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 155
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/OrderModifier;->getModifierPrice()D

    move-result-wide v5

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/OrderModifier;->getQty()I

    move-result v0

    int-to-double v7, v0

    mul-double/2addr v5, v7

    add-double/2addr v1, v5

    goto :goto_0

    .line 157
    :cond_1
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/OrderModifier;->getModifierPrice()D

    move-result-wide v5

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/OrderModifier;->getQty()I

    move-result v0

    int-to-double v7, v0

    mul-double/2addr v5, v7

    sub-double/2addr v1, v5

    goto :goto_0

    .line 161
    :cond_2
    iget-object v0, p0, Lcom/aadhk/restpos/d/bv;->m:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/aadhk/restpos/d/bv;->e:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v4}, Lcom/aadhk/restpos/bean/Order;->getOrderNum()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    iget-object v0, p0, Lcom/aadhk/restpos/d/bv;->k:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/aadhk/restpos/d/bv;->e:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v3}, Lcom/aadhk/restpos/bean/Order;->getStartTime()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/aadhk/restpos/f/i;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    iget-object v0, p0, Lcom/aadhk/restpos/d/bv;->l:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/aadhk/restpos/d/bv;->e:Lcom/aadhk/restpos/bean/Order;

    invoke-virtual {v4}, Lcom/aadhk/restpos/bean/Order;->getPersonNum()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    iget-object v0, p0, Lcom/aadhk/restpos/d/bv;->n:Landroid/widget/TextView;

    iget v3, p0, Lcom/aadhk/restpos/d/bv;->d:I

    iget-object v4, p0, Lcom/aadhk/restpos/d/bv;->c:Ljava/lang/String;

    invoke-static {v3, v1, v2, v4}, Lcom/aadhk/restpos/f/j;->a(IDLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    return-void
.end method

.method public final a(I)V
    .locals 2
    .parameter

    .prologue
    .line 242
    iget-object v0, p0, Lcom/aadhk/restpos/d/bv;->l:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 243
    return-void
.end method

.method public final onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 85
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 87
    iget-object v0, p0, Lcom/aadhk/restpos/d/bv;->a:Lcom/aadhk/restpos/TakeOrderActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/TakeOrderActivity;->n()Lcom/aadhk/restpos/bean/Company;

    move-result-object v0

    .line 88
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Company;->getCurrencySign()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/aadhk/restpos/d/bv;->c:Ljava/lang/String;

    .line 89
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Company;->getDecimalPlace()I

    move-result v0

    iput v0, p0, Lcom/aadhk/restpos/d/bv;->d:I

    .line 91
    iget-object v0, p0, Lcom/aadhk/restpos/d/bv;->a:Lcom/aadhk/restpos/TakeOrderActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/TakeOrderActivity;->p()Lcom/aadhk/restpos/bean/Order;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/bv;->e:Lcom/aadhk/restpos/bean/Order;

    .line 92
    iget-object v0, p0, Lcom/aadhk/restpos/d/bv;->a:Lcom/aadhk/restpos/TakeOrderActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/TakeOrderActivity;->q()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/bv;->i:Ljava/util/List;

    .line 94
    iget-object v0, p0, Lcom/aadhk/restpos/d/bv;->a:Lcom/aadhk/restpos/TakeOrderActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/TakeOrderActivity;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/bv;->o:Landroid/database/sqlite/SQLiteDatabase;

    .line 95
    new-instance v0, Lcom/aadhk/restpos/b/i;

    iget-object v1, p0, Lcom/aadhk/restpos/d/bv;->o:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {v0, v1}, Lcom/aadhk/restpos/b/i;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v0, p0, Lcom/aadhk/restpos/d/bv;->h:Lcom/aadhk/restpos/b/i;

    .line 96
    new-instance v0, Lcom/aadhk/restpos/b/n;

    iget-object v1, p0, Lcom/aadhk/restpos/d/bv;->o:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {v0, v1}, Lcom/aadhk/restpos/b/n;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v0, p0, Lcom/aadhk/restpos/d/bv;->f:Lcom/aadhk/restpos/b/n;

    .line 97
    new-instance v0, Lcom/aadhk/restpos/b/w;

    iget-object v1, p0, Lcom/aadhk/restpos/d/bv;->o:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {v0, v1}, Lcom/aadhk/restpos/b/w;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v0, p0, Lcom/aadhk/restpos/d/bv;->g:Lcom/aadhk/restpos/b/w;

    .line 98
    iget-object v0, p0, Lcom/aadhk/restpos/d/bv;->j:Landroid/view/View;

    const v1, 0x7f0b013f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/restpos/d/bv;->b:Landroid/widget/Button;

    iget-object v0, p0, Lcom/aadhk/restpos/d/bv;->b:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    return-void
.end method

.method public final onAttach(Landroid/app/Activity;)V
    .locals 0
    .parameter

    .prologue
    .line 103
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 104
    check-cast p1, Lcom/aadhk/restpos/TakeOrderActivity;

    iput-object p1, p0, Lcom/aadhk/restpos/d/bv;->a:Lcom/aadhk/restpos/TakeOrderActivity;

    .line 105
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 177
    iget-object v0, p0, Lcom/aadhk/restpos/d/bv;->b:Landroid/widget/Button;

    if-ne p1, v0, :cond_2

    move v1, v2

    .line 178
    :goto_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/bv;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lcom/aadhk/restpos/d/bv;->i:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/OrderItem;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/OrderItem;->getNum()I

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/aadhk/restpos/d/bv;->i:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 179
    :cond_1
    iget-object v0, p0, Lcom/aadhk/restpos/d/bv;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 180
    iget-object v0, p0, Lcom/aadhk/restpos/d/bv;->a:Lcom/aadhk/restpos/TakeOrderActivity;

    iget-object v1, p0, Lcom/aadhk/restpos/d/bv;->i:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/restpos/TakeOrderActivity;->a(Ljava/util/List;Z)V

    .line 182
    new-instance v0, Lcom/aadhk/product/library/a/a;

    iget-object v1, p0, Lcom/aadhk/restpos/d/bv;->a:Lcom/aadhk/restpos/TakeOrderActivity;

    new-instance v2, Lcom/aadhk/restpos/d/bx;

    invoke-direct {v2, p0}, Lcom/aadhk/restpos/d/bx;-><init>(Lcom/aadhk/restpos/d/bv;)V

    invoke-virtual {p0}, Lcom/aadhk/restpos/d/bv;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0901f1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/aadhk/product/library/a/a;-><init>(Landroid/content/Context;Lcom/aadhk/product/library/a/b;Ljava/lang/String;)V

    .line 225
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_3

    .line 226
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1, v5}, Lcom/aadhk/product/library/a/a;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 235
    :cond_2
    :goto_1
    return-void

    .line 228
    :cond_3
    invoke-virtual {v0, v5}, Lcom/aadhk/product/library/a/a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1

    .line 232
    :cond_4
    iget-object v0, p0, Lcom/aadhk/restpos/d/bv;->a:Lcom/aadhk/restpos/TakeOrderActivity;

    const v1, 0x7f0901f3

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 69
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 70
    new-instance v0, Lcom/aadhk/restpos/f/l;

    iget-object v1, p0, Lcom/aadhk/restpos/d/bv;->a:Lcom/aadhk/restpos/TakeOrderActivity;

    invoke-direct {v0, v1}, Lcom/aadhk/restpos/f/l;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/aadhk/restpos/d/bv;->p:Lcom/aadhk/restpos/f/l;

    .line 71
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 75
    const v0, 0x7f030074

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/bv;->j:Landroid/view/View;

    .line 76
    iget-object v0, p0, Lcom/aadhk/restpos/d/bv;->j:Landroid/view/View;

    const v1, 0x7f0b016e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/bv;->m:Landroid/widget/TextView;

    .line 77
    iget-object v0, p0, Lcom/aadhk/restpos/d/bv;->j:Landroid/view/View;

    const v1, 0x7f0b0170

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/bv;->k:Landroid/widget/TextView;

    .line 78
    iget-object v0, p0, Lcom/aadhk/restpos/d/bv;->j:Landroid/view/View;

    const v1, 0x7f0b0171

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/bv;->l:Landroid/widget/TextView;

    .line 79
    iget-object v0, p0, Lcom/aadhk/restpos/d/bv;->j:Landroid/view/View;

    const v1, 0x7f0b016f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/restpos/d/bv;->n:Landroid/widget/TextView;

    .line 80
    iget-object v0, p0, Lcom/aadhk/restpos/d/bv;->j:Landroid/view/View;

    return-object v0
.end method

.method public final onResume()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 109
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 110
    iget-object v0, p0, Lcom/aadhk/restpos/d/bv;->j:Landroid/view/View;

    const v2, 0x7f0b011b

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/aadhk/restpos/d/bv;->i:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/bv;->j:Landroid/view/View;

    const v2, 0x102000a

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ExpandableListView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ExpandableListView;->setGroupIndicator(Landroid/graphics/drawable/Drawable;)V

    new-instance v2, Lcom/aadhk/restpos/a/m;

    iget-object v3, p0, Lcom/aadhk/restpos/d/bv;->a:Lcom/aadhk/restpos/TakeOrderActivity;

    iget-object v4, p0, Lcom/aadhk/restpos/d/bv;->i:Ljava/util/List;

    iget-object v5, p0, Lcom/aadhk/restpos/d/bv;->o:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {v2, v3, p0, v4, v5}, Lcom/aadhk/restpos/a/m;-><init>(Landroid/content/Context;Lcom/aadhk/restpos/d/bv;Ljava/util/List;Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-virtual {v0, v2}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    new-instance v2, Lcom/aadhk/restpos/d/bw;

    invoke-direct {v2, p0}, Lcom/aadhk/restpos/d/bw;-><init>(Lcom/aadhk/restpos/d/bv;)V

    invoke-virtual {v0, v2}, Landroid/widget/ExpandableListView;->setOnGroupClickListener(Landroid/widget/ExpandableListView$OnGroupClickListener;)V

    :goto_1
    iget-object v2, p0, Lcom/aadhk/restpos/d/bv;->i:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/aadhk/restpos/d/bv;->a()V

    .line 111
    return-void
.end method
