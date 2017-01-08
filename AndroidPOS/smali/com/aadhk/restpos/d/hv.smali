.class final Lcom/aadhk/restpos/d/hv;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/product/library/b/f;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/d/hu;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/d/hu;)V
    .locals 0
    .parameter

    .prologue
    .line 292
    iput-object p1, p0, Lcom/aadhk/restpos/d/hv;->a:Lcom/aadhk/restpos/d/hu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 3
    .parameter

    .prologue
    .line 295
    check-cast p1, Lcom/aadhk/restpos/bean/Table;

    .line 296
    iget-object v0, p0, Lcom/aadhk/restpos/d/hv;->a:Lcom/aadhk/restpos/d/hu;

    invoke-static {v0}, Lcom/aadhk/restpos/d/hu;->a(Lcom/aadhk/restpos/d/hu;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/Table;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 297
    iget-object v0, p0, Lcom/aadhk/restpos/d/hv;->a:Lcom/aadhk/restpos/d/hu;

    invoke-static {v0}, Lcom/aadhk/restpos/d/hu;->b(Lcom/aadhk/restpos/d/hu;)Lcom/aadhk/restpos/bean/Reservation;

    move-result-object v0

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/Table;->getId()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/Reservation;->setTableId(I)V

    .line 298
    iget-object v0, p0, Lcom/aadhk/restpos/d/hv;->a:Lcom/aadhk/restpos/d/hu;

    invoke-static {v0}, Lcom/aadhk/restpos/d/hu;->b(Lcom/aadhk/restpos/d/hu;)Lcom/aadhk/restpos/bean/Reservation;

    move-result-object v0

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/Table;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/Reservation;->setTableName(Ljava/lang/String;)V

    .line 299
    return-void
.end method
