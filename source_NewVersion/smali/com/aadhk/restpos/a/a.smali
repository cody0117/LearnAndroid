.class public final Lcom/aadhk/restpos/a/a;
.super Lcom/aadhk/restpos/a/aa;
.source "ProGuard"


# instance fields
.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/CashRegister;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lcom/aadhk/restpos/PayInOutActivity;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/aadhk/restpos/PayInOutActivity;Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/aadhk/restpos/PayInOutActivity;",
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/CashRegister;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/aadhk/restpos/a/aa;-><init>(Landroid/content/Context;)V

    .line 26
    iput-object p1, p0, Lcom/aadhk/restpos/a/a;->i:Lcom/aadhk/restpos/PayInOutActivity;

    .line 27
    iput-object p2, p0, Lcom/aadhk/restpos/a/a;->h:Ljava/util/List;

    .line 28
    iput-object p3, p0, Lcom/aadhk/restpos/a/a;->k:Ljava/lang/String;

    .line 29
    invoke-virtual {p1}, Lcom/aadhk/restpos/PayInOutActivity;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/a/a;->j:Ljava/lang/String;

    .line 30
    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/aadhk/restpos/a/a;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/aadhk/restpos/a/a;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 44
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 50
    if-nez p2, :cond_2

    .line 51
    iget-object v0, p0, Lcom/aadhk/restpos/a/a;->b:Landroid/view/LayoutInflater;

    const v1, 0x7f03001b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 52
    new-instance v1, Lcom/aadhk/restpos/a/b;

    invoke-direct {v1, p0, v5}, Lcom/aadhk/restpos/a/b;-><init>(Lcom/aadhk/restpos/a/a;B)V

    .line 53
    const v0, 0x7f0b0045

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/aadhk/restpos/a/b;->a:Landroid/widget/TextView;

    .line 54
    const v0, 0x7f0b0046

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/aadhk/restpos/a/b;->b:Landroid/widget/TextView;

    .line 55
    const v0, 0x7f0b0048

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/aadhk/restpos/a/b;->c:Landroid/widget/TextView;

    .line 56
    const v0, 0x7f0b0047

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/aadhk/restpos/a/b;->d:Landroid/widget/TextView;

    .line 57
    const v0, 0x7f0b0049

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/aadhk/restpos/a/b;->e:Landroid/widget/TextView;

    .line 58
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 62
    :goto_0
    invoke-virtual {p0, p1}, Lcom/aadhk/restpos/a/a;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/CashRegister;

    .line 63
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/CashRegister;->getDate()Ljava/lang/String;

    move-result-object v2

    .line 64
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/CashRegister;->getTime()Ljava/lang/String;

    move-result-object v3

    .line 65
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 66
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/aadhk/restpos/a/a;->k:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 67
    iget-object v3, p0, Lcom/aadhk/restpos/a/a;->k:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_3

    .line 68
    invoke-virtual {p2, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 74
    :cond_0
    :goto_1
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/CashRegister;->getNote()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 75
    iget-object v2, v1, Lcom/aadhk/restpos/a/b;->c:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 77
    :cond_1
    iget-object v2, v1, Lcom/aadhk/restpos/a/b;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/CashRegister;->getDate()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/aadhk/restpos/a/a;->j:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/aadhk/restpos/f/i;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    iget-object v2, v1, Lcom/aadhk/restpos/a/b;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/CashRegister;->getTime()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    iget-object v2, v1, Lcom/aadhk/restpos/a/b;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/CashRegister;->getNote()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/CashRegister;->getTranxType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    .line 82
    iget-object v2, p0, Lcom/aadhk/restpos/a/a;->i:Lcom/aadhk/restpos/PayInOutActivity;

    invoke-virtual {v2}, Lcom/aadhk/restpos/PayInOutActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0900d5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 88
    :goto_2
    iget-object v3, v1, Lcom/aadhk/restpos/a/b;->d:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    iget-object v1, v1, Lcom/aadhk/restpos/a/b;->e:Landroid/widget/TextView;

    iget v2, p0, Lcom/aadhk/restpos/a/a;->g:I

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/CashRegister;->getAmount()D

    move-result-wide v3

    iget-object v0, p0, Lcom/aadhk/restpos/a/a;->d:Ljava/lang/String;

    invoke-static {v2, v3, v4, v0}, Lcom/aadhk/restpos/f/j;->a(IDLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    return-object p2

    .line 60
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/a/b;

    move-object v1, v0

    goto/16 :goto_0

    .line 70
    :cond_3
    const v2, 0x7f080041

    invoke-virtual {p2, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    .line 83
    :cond_4
    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/CashRegister;->getTranxType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_5

    .line 84
    iget-object v2, p0, Lcom/aadhk/restpos/a/a;->i:Lcom/aadhk/restpos/PayInOutActivity;

    invoke-virtual {v2}, Lcom/aadhk/restpos/PayInOutActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0900d6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 86
    :cond_5
    iget-object v2, p0, Lcom/aadhk/restpos/a/a;->i:Lcom/aadhk/restpos/PayInOutActivity;

    invoke-virtual {v2}, Lcom/aadhk/restpos/PayInOutActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0900d7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2
.end method
