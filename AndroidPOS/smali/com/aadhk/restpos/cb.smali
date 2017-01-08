.class final Lcom/aadhk/restpos/cb;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/product/library/a/c;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/PayCloseOutActivity;

.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/aadhk/restpos/PayCloseOutActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 63
    iput-object p1, p0, Lcom/aadhk/restpos/cb;->a:Lcom/aadhk/restpos/PayCloseOutActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/aadhk/restpos/PayCloseOutActivity;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/aadhk/restpos/cb;-><init>(Lcom/aadhk/restpos/PayCloseOutActivity;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 67
    iget-object v0, p0, Lcom/aadhk/restpos/cb;->a:Lcom/aadhk/restpos/PayCloseOutActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/aadhk/restpos/cb;->a:Lcom/aadhk/restpos/PayCloseOutActivity;

    invoke-static {v2}, Lcom/aadhk/restpos/PayCloseOutActivity;->a(Lcom/aadhk/restpos/PayCloseOutActivity;)Lcom/aadhk/restpos/bean/CloseOutCashRegister;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/CloseOutCashRegister;->getDate()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/aadhk/restpos/cb;->a:Lcom/aadhk/restpos/PayCloseOutActivity;

    invoke-static {v2}, Lcom/aadhk/restpos/PayCloseOutActivity;->a(Lcom/aadhk/restpos/PayCloseOutActivity;)Lcom/aadhk/restpos/bean/CloseOutCashRegister;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/CloseOutCashRegister;->getTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/aadhk/restpos/PayCloseOutActivity;->a(Lcom/aadhk/restpos/PayCloseOutActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 68
    iget-object v0, p0, Lcom/aadhk/restpos/cb;->a:Lcom/aadhk/restpos/PayCloseOutActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/PayCloseOutActivity;->c(Lcom/aadhk/restpos/PayCloseOutActivity;)Lcom/aadhk/restpos/g/p;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/cb;->a:Lcom/aadhk/restpos/PayCloseOutActivity;

    invoke-static {v1}, Lcom/aadhk/restpos/PayCloseOutActivity;->b(Lcom/aadhk/restpos/PayCloseOutActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/g/p;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/cb;->b:Ljava/util/Map;

    .line 69
    return-void
.end method

.method public final b()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 72
    iget-object v0, p0, Lcom/aadhk/restpos/cb;->b:Ljava/util/Map;

    const-string v1, "serviceStatus"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 73
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 74
    iget-object v1, p0, Lcom/aadhk/restpos/cb;->a:Lcom/aadhk/restpos/PayCloseOutActivity;

    iget-object v0, p0, Lcom/aadhk/restpos/cb;->b:Ljava/util/Map;

    const-string v2, "serviceLastTime"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/aadhk/restpos/PayCloseOutActivity;->b(Lcom/aadhk/restpos/PayCloseOutActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 75
    iget-object v1, p0, Lcom/aadhk/restpos/cb;->a:Lcom/aadhk/restpos/PayCloseOutActivity;

    iget-object v0, p0, Lcom/aadhk/restpos/cb;->b:Ljava/util/Map;

    const-string v2, "serviceStartAmount"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/aadhk/restpos/PayCloseOutActivity;->a(Lcom/aadhk/restpos/PayCloseOutActivity;D)D

    .line 76
    iget-object v1, p0, Lcom/aadhk/restpos/cb;->a:Lcom/aadhk/restpos/PayCloseOutActivity;

    iget-object v0, p0, Lcom/aadhk/restpos/cb;->b:Ljava/util/Map;

    const-string v2, "servicePayingAmount"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/aadhk/restpos/PayCloseOutActivity;->b(Lcom/aadhk/restpos/PayCloseOutActivity;D)D

    .line 77
    iget-object v1, p0, Lcom/aadhk/restpos/cb;->a:Lcom/aadhk/restpos/PayCloseOutActivity;

    iget-object v0, p0, Lcom/aadhk/restpos/cb;->b:Ljava/util/Map;

    const-string v2, "servicePayoutAmount"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/aadhk/restpos/PayCloseOutActivity;->c(Lcom/aadhk/restpos/PayCloseOutActivity;D)D

    .line 78
    iget-object v1, p0, Lcom/aadhk/restpos/cb;->a:Lcom/aadhk/restpos/PayCloseOutActivity;

    iget-object v0, p0, Lcom/aadhk/restpos/cb;->b:Ljava/util/Map;

    const-string v2, "serviceOrdersTotalAmount"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/aadhk/restpos/PayCloseOutActivity;->d(Lcom/aadhk/restpos/PayCloseOutActivity;D)D

    .line 79
    iget-object v0, p0, Lcom/aadhk/restpos/cb;->a:Lcom/aadhk/restpos/PayCloseOutActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/PayCloseOutActivity;->d(Lcom/aadhk/restpos/PayCloseOutActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/aadhk/restpos/cb;->a:Lcom/aadhk/restpos/PayCloseOutActivity;

    iget-object v1, p0, Lcom/aadhk/restpos/cb;->a:Lcom/aadhk/restpos/PayCloseOutActivity;

    invoke-static {v1}, Lcom/aadhk/restpos/PayCloseOutActivity;->d(Lcom/aadhk/restpos/PayCloseOutActivity;)Ljava/lang/String;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/aadhk/restpos/PayCloseOutActivity;->a(Lcom/aadhk/restpos/PayCloseOutActivity;[Ljava/lang/String;)[Ljava/lang/String;

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/aadhk/restpos/cb;->a:Lcom/aadhk/restpos/PayCloseOutActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/PayCloseOutActivity;->d(Lcom/aadhk/restpos/PayCloseOutActivity;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 84
    iget-object v0, p0, Lcom/aadhk/restpos/cb;->a:Lcom/aadhk/restpos/PayCloseOutActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/PayCloseOutActivity;->f(Lcom/aadhk/restpos/PayCloseOutActivity;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/aadhk/restpos/cb;->a:Lcom/aadhk/restpos/PayCloseOutActivity;

    invoke-static {v2}, Lcom/aadhk/restpos/PayCloseOutActivity;->e(Lcom/aadhk/restpos/PayCloseOutActivity;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    iget-object v3, p0, Lcom/aadhk/restpos/cb;->a:Lcom/aadhk/restpos/PayCloseOutActivity;

    iget-object v3, v3, Lcom/aadhk/restpos/PayCloseOutActivity;->k:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/aadhk/restpos/util/o;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/aadhk/restpos/cb;->a:Lcom/aadhk/restpos/PayCloseOutActivity;

    invoke-static {v2}, Lcom/aadhk/restpos/PayCloseOutActivity;->e(Lcom/aadhk/restpos/PayCloseOutActivity;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    :goto_0
    iget-object v0, p0, Lcom/aadhk/restpos/cb;->a:Lcom/aadhk/restpos/PayCloseOutActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/PayCloseOutActivity;->g(Lcom/aadhk/restpos/PayCloseOutActivity;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/cb;->a:Lcom/aadhk/restpos/PayCloseOutActivity;

    invoke-static {v1}, Lcom/aadhk/restpos/PayCloseOutActivity;->a(Lcom/aadhk/restpos/PayCloseOutActivity;)Lcom/aadhk/restpos/bean/CloseOutCashRegister;

    move-result-object v1

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/CloseOutCashRegister;->getDate()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/aadhk/restpos/cb;->a:Lcom/aadhk/restpos/PayCloseOutActivity;

    iget-object v2, v2, Lcom/aadhk/restpos/PayCloseOutActivity;->k:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/aadhk/restpos/util/o;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 89
    iget-object v0, p0, Lcom/aadhk/restpos/cb;->a:Lcom/aadhk/restpos/PayCloseOutActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/PayCloseOutActivity;->h(Lcom/aadhk/restpos/PayCloseOutActivity;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/cb;->a:Lcom/aadhk/restpos/PayCloseOutActivity;

    invoke-static {v1}, Lcom/aadhk/restpos/PayCloseOutActivity;->a(Lcom/aadhk/restpos/PayCloseOutActivity;)Lcom/aadhk/restpos/bean/CloseOutCashRegister;

    move-result-object v1

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/CloseOutCashRegister;->getTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 90
    iget-object v0, p0, Lcom/aadhk/restpos/cb;->a:Lcom/aadhk/restpos/PayCloseOutActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/PayCloseOutActivity;->j(Lcom/aadhk/restpos/PayCloseOutActivity;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/cb;->a:Lcom/aadhk/restpos/PayCloseOutActivity;

    invoke-static {v1}, Lcom/aadhk/restpos/PayCloseOutActivity;->i(Lcom/aadhk/restpos/PayCloseOutActivity;)D

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/aadhk/product/library/c/h;->b(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 91
    iget-object v0, p0, Lcom/aadhk/restpos/cb;->a:Lcom/aadhk/restpos/PayCloseOutActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/PayCloseOutActivity;->l(Lcom/aadhk/restpos/PayCloseOutActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/cb;->a:Lcom/aadhk/restpos/PayCloseOutActivity;

    iget v1, v1, Lcom/aadhk/restpos/PayCloseOutActivity;->j:I

    iget-object v2, p0, Lcom/aadhk/restpos/cb;->a:Lcom/aadhk/restpos/PayCloseOutActivity;

    invoke-static {v2}, Lcom/aadhk/restpos/PayCloseOutActivity;->k(Lcom/aadhk/restpos/PayCloseOutActivity;)D

    move-result-wide v2

    iget-object v4, p0, Lcom/aadhk/restpos/cb;->a:Lcom/aadhk/restpos/PayCloseOutActivity;

    iget-object v4, v4, Lcom/aadhk/restpos/PayCloseOutActivity;->i:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4}, Lcom/aadhk/restpos/util/p;->a(IDLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    iget-object v0, p0, Lcom/aadhk/restpos/cb;->a:Lcom/aadhk/restpos/PayCloseOutActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/PayCloseOutActivity;->n(Lcom/aadhk/restpos/PayCloseOutActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/cb;->a:Lcom/aadhk/restpos/PayCloseOutActivity;

    iget v1, v1, Lcom/aadhk/restpos/PayCloseOutActivity;->j:I

    iget-object v2, p0, Lcom/aadhk/restpos/cb;->a:Lcom/aadhk/restpos/PayCloseOutActivity;

    invoke-static {v2}, Lcom/aadhk/restpos/PayCloseOutActivity;->m(Lcom/aadhk/restpos/PayCloseOutActivity;)D

    move-result-wide v2

    iget-object v4, p0, Lcom/aadhk/restpos/cb;->a:Lcom/aadhk/restpos/PayCloseOutActivity;

    iget-object v4, v4, Lcom/aadhk/restpos/PayCloseOutActivity;->i:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4}, Lcom/aadhk/restpos/util/p;->a(IDLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    iget-object v0, p0, Lcom/aadhk/restpos/cb;->a:Lcom/aadhk/restpos/PayCloseOutActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/PayCloseOutActivity;->p(Lcom/aadhk/restpos/PayCloseOutActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/cb;->a:Lcom/aadhk/restpos/PayCloseOutActivity;

    iget v1, v1, Lcom/aadhk/restpos/PayCloseOutActivity;->j:I

    iget-object v2, p0, Lcom/aadhk/restpos/cb;->a:Lcom/aadhk/restpos/PayCloseOutActivity;

    invoke-static {v2}, Lcom/aadhk/restpos/PayCloseOutActivity;->o(Lcom/aadhk/restpos/PayCloseOutActivity;)D

    move-result-wide v2

    iget-object v4, p0, Lcom/aadhk/restpos/cb;->a:Lcom/aadhk/restpos/PayCloseOutActivity;

    iget-object v4, v4, Lcom/aadhk/restpos/PayCloseOutActivity;->i:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4}, Lcom/aadhk/restpos/util/p;->a(IDLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    iget-object v0, p0, Lcom/aadhk/restpos/cb;->a:Lcom/aadhk/restpos/PayCloseOutActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/PayCloseOutActivity;->q(Lcom/aadhk/restpos/PayCloseOutActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/cb;->a:Lcom/aadhk/restpos/PayCloseOutActivity;

    iget v1, v1, Lcom/aadhk/restpos/PayCloseOutActivity;->j:I

    const-wide/16 v2, 0x0

    iget-object v4, p0, Lcom/aadhk/restpos/cb;->a:Lcom/aadhk/restpos/PayCloseOutActivity;

    iget-object v4, v4, Lcom/aadhk/restpos/PayCloseOutActivity;->i:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4}, Lcom/aadhk/restpos/util/p;->a(IDLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    iget-object v0, p0, Lcom/aadhk/restpos/cb;->a:Lcom/aadhk/restpos/PayCloseOutActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/PayCloseOutActivity;->r(Lcom/aadhk/restpos/PayCloseOutActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/cb;->a:Lcom/aadhk/restpos/PayCloseOutActivity;

    iget-object v1, v1, Lcom/aadhk/restpos/PayCloseOutActivity;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    iget-object v0, p0, Lcom/aadhk/restpos/cb;->a:Lcom/aadhk/restpos/PayCloseOutActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/PayCloseOutActivity;->s(Lcom/aadhk/restpos/PayCloseOutActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/cb;->a:Lcom/aadhk/restpos/PayCloseOutActivity;

    iget-object v1, v1, Lcom/aadhk/restpos/PayCloseOutActivity;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    iget-object v0, p0, Lcom/aadhk/restpos/cb;->a:Lcom/aadhk/restpos/PayCloseOutActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/PayCloseOutActivity;->t(Lcom/aadhk/restpos/PayCloseOutActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/cb;->a:Lcom/aadhk/restpos/PayCloseOutActivity;

    iget-object v1, v1, Lcom/aadhk/restpos/PayCloseOutActivity;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    iget-object v0, p0, Lcom/aadhk/restpos/cb;->a:Lcom/aadhk/restpos/PayCloseOutActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/PayCloseOutActivity;->u(Lcom/aadhk/restpos/PayCloseOutActivity;)V

    .line 100
    iget-object v0, p0, Lcom/aadhk/restpos/cb;->a:Lcom/aadhk/restpos/PayCloseOutActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/PayCloseOutActivity;->v(Lcom/aadhk/restpos/PayCloseOutActivity;)V

    .line 109
    :goto_1
    return-void

    .line 86
    :cond_1
    iget-object v0, p0, Lcom/aadhk/restpos/cb;->a:Lcom/aadhk/restpos/PayCloseOutActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/PayCloseOutActivity;->f(Lcom/aadhk/restpos/PayCloseOutActivity;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f08010f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 101
    :cond_2
    const-string v1, "10"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "11"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 102
    :cond_3
    iget-object v0, p0, Lcom/aadhk/restpos/cb;->a:Lcom/aadhk/restpos/PayCloseOutActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/util/q;->a(Landroid/content/Context;)V

    .line 103
    iget-object v0, p0, Lcom/aadhk/restpos/cb;->a:Lcom/aadhk/restpos/PayCloseOutActivity;

    const v1, 0x7f080246

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 104
    :cond_4
    const-string v1, "9"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 105
    iget-object v0, p0, Lcom/aadhk/restpos/cb;->a:Lcom/aadhk/restpos/PayCloseOutActivity;

    const v1, 0x7f080248

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 107
    :cond_5
    iget-object v0, p0, Lcom/aadhk/restpos/cb;->a:Lcom/aadhk/restpos/PayCloseOutActivity;

    const v1, 0x7f080247

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method
