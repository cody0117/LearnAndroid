.class final Lcom/aadhk/restpos/d/fr;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/product/library/b/f;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/d/fq;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/d/fq;)V
    .locals 0
    .parameter

    .prologue
    .line 303
    iput-object p1, p0, Lcom/aadhk/restpos/d/fr;->a:Lcom/aadhk/restpos/d/fq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 3
    .parameter

    .prologue
    .line 306
    iget-object v0, p0, Lcom/aadhk/restpos/d/fr;->a:Lcom/aadhk/restpos/d/fq;

    invoke-static {v0}, Lcom/aadhk/restpos/d/fq;->f(Lcom/aadhk/restpos/d/fq;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/aadhk/restpos/d/fr;->a:Lcom/aadhk/restpos/d/fq;

    invoke-static {v2}, Lcom/aadhk/restpos/d/fq;->e(Lcom/aadhk/restpos/d/fq;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/aadhk/restpos/util/o;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 307
    iget-object v0, p0, Lcom/aadhk/restpos/d/fr;->a:Lcom/aadhk/restpos/d/fq;

    invoke-static {v0}, Lcom/aadhk/restpos/d/fq;->g(Lcom/aadhk/restpos/d/fq;)Lcom/aadhk/restpos/bean/PriceSchedule;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/PriceSchedule;->setStartDate(Ljava/lang/String;)V

    .line 308
    return-void
.end method
