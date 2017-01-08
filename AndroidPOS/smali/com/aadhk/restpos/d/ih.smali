.class final Lcom/aadhk/restpos/d/ih;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/product/library/a/c;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/d/ia;

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

.field private c:I


# direct methods
.method public constructor <init>(Lcom/aadhk/restpos/d/ia;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 221
    iput-object p1, p0, Lcom/aadhk/restpos/d/ih;->a:Lcom/aadhk/restpos/d/ia;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 222
    iput p2, p0, Lcom/aadhk/restpos/d/ih;->c:I

    .line 223
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 227
    iget-object v0, p0, Lcom/aadhk/restpos/d/ih;->a:Lcom/aadhk/restpos/d/ia;

    invoke-static {v0}, Lcom/aadhk/restpos/d/ia;->c(Lcom/aadhk/restpos/d/ia;)Lcom/aadhk/restpos/ReservationActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/ReservationActivity;->a()Lcom/aadhk/restpos/g/x;

    move-result-object v0

    iget v1, p0, Lcom/aadhk/restpos/d/ih;->c:I

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/g/x;->a(I)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/ih;->b:Ljava/util/Map;

    .line 228
    return-void
.end method

.method public final b()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 232
    iget-object v0, p0, Lcom/aadhk/restpos/d/ih;->b:Ljava/util/Map;

    const-string v1, "serviceStatus"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 233
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 234
    const-string v1, "10"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "11"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 235
    :cond_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/ih;->a:Lcom/aadhk/restpos/d/ia;

    invoke-static {v0}, Lcom/aadhk/restpos/d/ia;->c(Lcom/aadhk/restpos/d/ia;)Lcom/aadhk/restpos/ReservationActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/aadhk/restpos/util/q;->a(Landroid/content/Context;)V

    .line 236
    iget-object v0, p0, Lcom/aadhk/restpos/d/ih;->a:Lcom/aadhk/restpos/d/ia;

    invoke-static {v0}, Lcom/aadhk/restpos/d/ia;->c(Lcom/aadhk/restpos/d/ia;)Lcom/aadhk/restpos/ReservationActivity;

    move-result-object v0

    const v1, 0x7f080246

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 242
    :cond_1
    :goto_0
    return-void

    .line 237
    :cond_2
    const-string v1, "9"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 238
    iget-object v0, p0, Lcom/aadhk/restpos/d/ih;->a:Lcom/aadhk/restpos/d/ia;

    invoke-static {v0}, Lcom/aadhk/restpos/d/ia;->c(Lcom/aadhk/restpos/d/ia;)Lcom/aadhk/restpos/ReservationActivity;

    move-result-object v0

    const v1, 0x7f080248

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 240
    :cond_3
    iget-object v0, p0, Lcom/aadhk/restpos/d/ih;->a:Lcom/aadhk/restpos/d/ia;

    invoke-static {v0}, Lcom/aadhk/restpos/d/ia;->c(Lcom/aadhk/restpos/d/ia;)Lcom/aadhk/restpos/ReservationActivity;

    move-result-object v0

    const v1, 0x7f080247

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
