.class final Lcom/aadhk/restpos/d/cr;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/product/library/b/f;


# instance fields
.field final synthetic a:[Ljava/lang/String;

.field final synthetic b:Lcom/aadhk/restpos/d/cd;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/d/cd;[Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 743
    iput-object p1, p0, Lcom/aadhk/restpos/d/cr;->b:Lcom/aadhk/restpos/d/cd;

    iput-object p2, p0, Lcom/aadhk/restpos/d/cr;->a:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 11
    .parameter

    .prologue
    const-wide/16 v4, 0x0

    .line 746
    move-object v0, p1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 747
    iget-object v1, p0, Lcom/aadhk/restpos/d/cr;->b:Lcom/aadhk/restpos/d/cd;

    invoke-static {v1}, Lcom/aadhk/restpos/d/cd;->j(Lcom/aadhk/restpos/d/cd;)Landroid/widget/Button;

    move-result-object v1

    iget-object v2, p0, Lcom/aadhk/restpos/d/cr;->a:[Ljava/lang/String;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 748
    if-nez v0, :cond_3

    .line 749
    iget-object v0, p0, Lcom/aadhk/restpos/d/cr;->b:Lcom/aadhk/restpos/d/cd;

    invoke-static {v0, v4, v5}, Lcom/aadhk/restpos/d/cd;->a(Lcom/aadhk/restpos/d/cd;D)D

    .line 750
    iget-object v0, p0, Lcom/aadhk/restpos/d/cr;->b:Lcom/aadhk/restpos/d/cd;

    invoke-static {v0, v4, v5}, Lcom/aadhk/restpos/d/cd;->b(Lcom/aadhk/restpos/d/cd;D)D

    .line 751
    iget-object v0, p0, Lcom/aadhk/restpos/d/cr;->b:Lcom/aadhk/restpos/d/cd;

    invoke-static {v0}, Lcom/aadhk/restpos/d/cd;->j(Lcom/aadhk/restpos/d/cd;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f0902bc

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 766
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/cr;->b:Lcom/aadhk/restpos/d/cd;

    invoke-static {v0}, Lcom/aadhk/restpos/d/cd;->i(Lcom/aadhk/restpos/d/cd;)Lcom/aadhk/restpos/bean/Order;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getDiscountAmt()D

    move-result-wide v0

    cmpl-double v0, v0, v4

    if-lez v0, :cond_1

    .line 767
    iget-object v0, p0, Lcom/aadhk/restpos/d/cr;->b:Lcom/aadhk/restpos/d/cd;

    invoke-static {v0}, Lcom/aadhk/restpos/d/cd;->i(Lcom/aadhk/restpos/d/cd;)Lcom/aadhk/restpos/bean/Order;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getDiscountAmt()D

    move-result-wide v0

    iget-object v2, p0, Lcom/aadhk/restpos/d/cr;->b:Lcom/aadhk/restpos/d/cd;

    invoke-static {v2}, Lcom/aadhk/restpos/d/cd;->i(Lcom/aadhk/restpos/d/cd;)Lcom/aadhk/restpos/bean/Order;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/Order;->getSubTotal()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/aadhk/restpos/f/h;->b(DD)I

    move-result v0

    .line 768
    iget-object v1, p0, Lcom/aadhk/restpos/d/cr;->b:Lcom/aadhk/restpos/d/cd;

    iget-object v2, p0, Lcom/aadhk/restpos/d/cr;->b:Lcom/aadhk/restpos/d/cd;

    invoke-static {v2}, Lcom/aadhk/restpos/d/cd;->n(Lcom/aadhk/restpos/d/cd;)D

    move-result-wide v2

    rsub-int/lit8 v4, v0, 0x64

    iget-object v5, p0, Lcom/aadhk/restpos/d/cr;->b:Lcom/aadhk/restpos/d/cd;

    invoke-static {v5}, Lcom/aadhk/restpos/d/cd;->o(Lcom/aadhk/restpos/d/cd;)I

    move-result v5

    invoke-static {v2, v3, v4, v5}, Lcom/aadhk/restpos/f/h;->a(DII)D

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/aadhk/restpos/d/cd;->a(Lcom/aadhk/restpos/d/cd;D)D

    .line 769
    iget-object v1, p0, Lcom/aadhk/restpos/d/cr;->b:Lcom/aadhk/restpos/d/cd;

    iget-object v2, p0, Lcom/aadhk/restpos/d/cr;->b:Lcom/aadhk/restpos/d/cd;

    invoke-static {v2}, Lcom/aadhk/restpos/d/cd;->p(Lcom/aadhk/restpos/d/cd;)D

    move-result-wide v2

    rsub-int/lit8 v0, v0, 0x64

    iget-object v4, p0, Lcom/aadhk/restpos/d/cr;->b:Lcom/aadhk/restpos/d/cd;

    invoke-static {v4}, Lcom/aadhk/restpos/d/cd;->o(Lcom/aadhk/restpos/d/cd;)I

    move-result v4

    invoke-static {v2, v3, v0, v4}, Lcom/aadhk/restpos/f/h;->a(DII)D

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/aadhk/restpos/d/cd;->b(Lcom/aadhk/restpos/d/cd;D)D

    .line 773
    :cond_1
    iget-object v0, p0, Lcom/aadhk/restpos/d/cr;->b:Lcom/aadhk/restpos/d/cd;

    invoke-static {v0}, Lcom/aadhk/restpos/d/cd;->l(Lcom/aadhk/restpos/d/cd;)Lcom/aadhk/restpos/bean/Company;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Company;->isIncludeService()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 774
    iget-object v0, p0, Lcom/aadhk/restpos/d/cr;->b:Lcom/aadhk/restpos/d/cd;

    invoke-static {v0}, Lcom/aadhk/restpos/d/cd;->q(Lcom/aadhk/restpos/d/cd;)Z

    .line 775
    iget-object v0, p0, Lcom/aadhk/restpos/d/cr;->b:Lcom/aadhk/restpos/d/cd;

    invoke-static {v0}, Lcom/aadhk/restpos/d/cd;->i(Lcom/aadhk/restpos/d/cd;)Lcom/aadhk/restpos/bean/Order;

    move-result-object v10

    iget-object v0, p0, Lcom/aadhk/restpos/d/cr;->b:Lcom/aadhk/restpos/d/cd;

    invoke-static {v0}, Lcom/aadhk/restpos/d/cd;->i(Lcom/aadhk/restpos/d/cd;)Lcom/aadhk/restpos/bean/Order;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/Order;->getSubTotal()D

    move-result-wide v0

    iget-object v2, p0, Lcom/aadhk/restpos/d/cr;->b:Lcom/aadhk/restpos/d/cd;

    invoke-static {v2}, Lcom/aadhk/restpos/d/cd;->i(Lcom/aadhk/restpos/d/cd;)Lcom/aadhk/restpos/bean/Order;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aadhk/restpos/bean/Order;->getDiscountAmt()D

    move-result-wide v2

    iget-object v4, p0, Lcom/aadhk/restpos/d/cr;->b:Lcom/aadhk/restpos/d/cd;

    invoke-static {v4}, Lcom/aadhk/restpos/d/cd;->n(Lcom/aadhk/restpos/d/cd;)D

    move-result-wide v4

    iget-object v6, p0, Lcom/aadhk/restpos/d/cr;->b:Lcom/aadhk/restpos/d/cd;

    invoke-static {v6}, Lcom/aadhk/restpos/d/cd;->p(Lcom/aadhk/restpos/d/cd;)D

    move-result-wide v6

    add-double/2addr v4, v6

    iget-object v6, p0, Lcom/aadhk/restpos/d/cr;->b:Lcom/aadhk/restpos/d/cd;

    invoke-static {v6}, Lcom/aadhk/restpos/d/cd;->l(Lcom/aadhk/restpos/d/cd;)Lcom/aadhk/restpos/bean/Company;

    move-result-object v6

    invoke-virtual {v6}, Lcom/aadhk/restpos/bean/Company;->getServiceFee()I

    move-result v6

    int-to-double v6, v6

    iget-object v8, p0, Lcom/aadhk/restpos/d/cr;->b:Lcom/aadhk/restpos/d/cd;

    invoke-static {v8}, Lcom/aadhk/restpos/d/cd;->o(Lcom/aadhk/restpos/d/cd;)I

    move-result v8

    iget-object v9, p0, Lcom/aadhk/restpos/d/cr;->b:Lcom/aadhk/restpos/d/cd;

    invoke-static {v9}, Lcom/aadhk/restpos/d/cd;->r(Lcom/aadhk/restpos/d/cd;)Z

    move-result v9

    invoke-static/range {v0 .. v9}, Lcom/aadhk/restpos/f/h;->a(DDDDIZ)D

    move-result-wide v0

    invoke-virtual {v10, v0, v1}, Lcom/aadhk/restpos/bean/Order;->setServiceAmt(D)V

    .line 776
    iget-object v0, p0, Lcom/aadhk/restpos/d/cr;->b:Lcom/aadhk/restpos/d/cd;

    invoke-static {v0}, Lcom/aadhk/restpos/d/cd;->s(Lcom/aadhk/restpos/d/cd;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f0902a7

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 778
    :cond_2
    iget-object v0, p0, Lcom/aadhk/restpos/d/cr;->b:Lcom/aadhk/restpos/d/cd;

    invoke-static {v0}, Lcom/aadhk/restpos/d/cd;->t(Lcom/aadhk/restpos/d/cd;)V

    .line 781
    iget-object v0, p0, Lcom/aadhk/restpos/d/cr;->b:Lcom/aadhk/restpos/d/cd;

    invoke-static {v0}, Lcom/aadhk/restpos/d/cd;->g(Lcom/aadhk/restpos/d/cd;)Lcom/aadhk/restpos/PaymentActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/PaymentActivity;->c()V

    .line 782
    return-void

    .line 752
    :cond_3
    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 753
    iget-object v0, p0, Lcom/aadhk/restpos/d/cr;->b:Lcom/aadhk/restpos/d/cd;

    iget-object v1, p0, Lcom/aadhk/restpos/d/cr;->b:Lcom/aadhk/restpos/d/cd;

    invoke-static {v1}, Lcom/aadhk/restpos/d/cd;->k(Lcom/aadhk/restpos/d/cd;)D

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/aadhk/restpos/d/cd;->a(Lcom/aadhk/restpos/d/cd;D)D

    .line 754
    iget-object v0, p0, Lcom/aadhk/restpos/d/cr;->b:Lcom/aadhk/restpos/d/cd;

    invoke-static {v0, v4, v5}, Lcom/aadhk/restpos/d/cd;->b(Lcom/aadhk/restpos/d/cd;D)D

    .line 755
    iget-object v0, p0, Lcom/aadhk/restpos/d/cr;->b:Lcom/aadhk/restpos/d/cd;

    invoke-static {v0}, Lcom/aadhk/restpos/d/cd;->j(Lcom/aadhk/restpos/d/cd;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/d/cr;->b:Lcom/aadhk/restpos/d/cd;

    invoke-static {v1}, Lcom/aadhk/restpos/d/cd;->l(Lcom/aadhk/restpos/d/cd;)Lcom/aadhk/restpos/bean/Company;

    move-result-object v1

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Company;->getTax1Name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 756
    :cond_4
    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    .line 757
    iget-object v0, p0, Lcom/aadhk/restpos/d/cr;->b:Lcom/aadhk/restpos/d/cd;

    invoke-static {v0, v4, v5}, Lcom/aadhk/restpos/d/cd;->a(Lcom/aadhk/restpos/d/cd;D)D

    .line 758
    iget-object v0, p0, Lcom/aadhk/restpos/d/cr;->b:Lcom/aadhk/restpos/d/cd;

    iget-object v1, p0, Lcom/aadhk/restpos/d/cr;->b:Lcom/aadhk/restpos/d/cd;

    invoke-static {v1}, Lcom/aadhk/restpos/d/cd;->m(Lcom/aadhk/restpos/d/cd;)D

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/aadhk/restpos/d/cd;->b(Lcom/aadhk/restpos/d/cd;D)D

    .line 759
    iget-object v0, p0, Lcom/aadhk/restpos/d/cr;->b:Lcom/aadhk/restpos/d/cd;

    invoke-static {v0}, Lcom/aadhk/restpos/d/cd;->j(Lcom/aadhk/restpos/d/cd;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/d/cr;->b:Lcom/aadhk/restpos/d/cd;

    invoke-static {v1}, Lcom/aadhk/restpos/d/cd;->l(Lcom/aadhk/restpos/d/cd;)Lcom/aadhk/restpos/bean/Company;

    move-result-object v1

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Company;->getTax2Name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 760
    :cond_5
    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 761
    iget-object v0, p0, Lcom/aadhk/restpos/d/cr;->b:Lcom/aadhk/restpos/d/cd;

    iget-object v1, p0, Lcom/aadhk/restpos/d/cr;->b:Lcom/aadhk/restpos/d/cd;

    invoke-static {v1}, Lcom/aadhk/restpos/d/cd;->k(Lcom/aadhk/restpos/d/cd;)D

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/aadhk/restpos/d/cd;->a(Lcom/aadhk/restpos/d/cd;D)D

    .line 762
    iget-object v0, p0, Lcom/aadhk/restpos/d/cr;->b:Lcom/aadhk/restpos/d/cd;

    iget-object v1, p0, Lcom/aadhk/restpos/d/cr;->b:Lcom/aadhk/restpos/d/cd;

    invoke-static {v1}, Lcom/aadhk/restpos/d/cd;->m(Lcom/aadhk/restpos/d/cd;)D

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/aadhk/restpos/d/cd;->b(Lcom/aadhk/restpos/d/cd;D)D

    .line 763
    iget-object v0, p0, Lcom/aadhk/restpos/d/cr;->b:Lcom/aadhk/restpos/d/cd;

    invoke-static {v0}, Lcom/aadhk/restpos/d/cd;->j(Lcom/aadhk/restpos/d/cd;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f0902bd

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto/16 :goto_0
.end method
