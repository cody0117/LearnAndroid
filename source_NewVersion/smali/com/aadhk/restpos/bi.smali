.class final Lcom/aadhk/restpos/bi;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/product/library/b/g;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/bean/PaymentMethod;

.field final synthetic b:Lcom/aadhk/restpos/PaymentMethodActivity;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/PaymentMethodActivity;Lcom/aadhk/restpos/bean/PaymentMethod;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 75
    iput-object p1, p0, Lcom/aadhk/restpos/bi;->b:Lcom/aadhk/restpos/PaymentMethodActivity;

    iput-object p2, p0, Lcom/aadhk/restpos/bi;->a:Lcom/aadhk/restpos/bean/PaymentMethod;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .prologue
    .line 78
    new-instance v0, Lcom/aadhk/restpos/c/g;

    iget-object v1, p0, Lcom/aadhk/restpos/bi;->b:Lcom/aadhk/restpos/PaymentMethodActivity;

    invoke-direct {v0, v1}, Lcom/aadhk/restpos/c/g;-><init>(Landroid/content/Context;)V

    .line 79
    iget-object v1, p0, Lcom/aadhk/restpos/bi;->b:Lcom/aadhk/restpos/PaymentMethodActivity;

    iget-object v1, v1, Lcom/aadhk/restpos/PaymentMethodActivity;->b:Landroid/content/res/Resources;

    const v2, 0x7f09027a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/aadhk/restpos/bi;->a:Lcom/aadhk/restpos/bean/PaymentMethod;

    invoke-virtual {v4}, Lcom/aadhk/restpos/bean/PaymentMethod;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 80
    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/g;->setTitle(Ljava/lang/CharSequence;)V

    .line 81
    new-instance v1, Lcom/aadhk/restpos/bj;

    invoke-direct {v1, p0}, Lcom/aadhk/restpos/bj;-><init>(Lcom/aadhk/restpos/bi;)V

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/g;->a(Lcom/aadhk/restpos/c/i;)V

    .line 88
    invoke-virtual {v0}, Lcom/aadhk/restpos/c/g;->show()V

    .line 89
    return-void
.end method