.class final Lcom/aadhk/restpos/d/ev;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/product/library/a/c;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/d/eq;

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

.field private c:Lcom/aadhk/restpos/bean/CashRegister;


# direct methods
.method public constructor <init>(Lcom/aadhk/restpos/d/eq;Lcom/aadhk/restpos/bean/CashRegister;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 189
    iput-object p1, p0, Lcom/aadhk/restpos/d/ev;->a:Lcom/aadhk/restpos/d/eq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 190
    iput-object p2, p0, Lcom/aadhk/restpos/d/ev;->c:Lcom/aadhk/restpos/bean/CashRegister;

    .line 191
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 195
    iget-object v0, p0, Lcom/aadhk/restpos/d/ev;->a:Lcom/aadhk/restpos/d/eq;

    invoke-static {v0}, Lcom/aadhk/restpos/d/eq;->e(Lcom/aadhk/restpos/d/eq;)Lcom/aadhk/restpos/PayInOutActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/PayInOutActivity;->c()Lcom/aadhk/restpos/g/q;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/d/ev;->c:Lcom/aadhk/restpos/bean/CashRegister;

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/g/q;->b(Lcom/aadhk/restpos/bean/CashRegister;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/ev;->b:Ljava/util/Map;

    .line 196
    return-void
.end method

.method public final b()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 200
    iget-object v0, p0, Lcom/aadhk/restpos/d/ev;->b:Ljava/util/Map;

    const-string v1, "serviceStatus"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 201
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 202
    iget-object v0, p0, Lcom/aadhk/restpos/d/ev;->a:Lcom/aadhk/restpos/d/eq;

    invoke-static {v0}, Lcom/aadhk/restpos/d/eq;->e(Lcom/aadhk/restpos/d/eq;)Lcom/aadhk/restpos/PayInOutActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/PayInOutActivity;->a()V

    .line 211
    :goto_0
    return-void

    .line 203
    :cond_0
    const-string v1, "10"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "11"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 204
    :cond_1
    iget-object v0, p0, Lcom/aadhk/restpos/d/ev;->a:Lcom/aadhk/restpos/d/eq;

    invoke-static {v0}, Lcom/aadhk/restpos/d/eq;->e(Lcom/aadhk/restpos/d/eq;)Lcom/aadhk/restpos/PayInOutActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/aadhk/restpos/util/q;->a(Landroid/content/Context;)V

    .line 205
    iget-object v0, p0, Lcom/aadhk/restpos/d/ev;->a:Lcom/aadhk/restpos/d/eq;

    invoke-static {v0}, Lcom/aadhk/restpos/d/eq;->e(Lcom/aadhk/restpos/d/eq;)Lcom/aadhk/restpos/PayInOutActivity;

    move-result-object v0

    const v1, 0x7f080246

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 206
    :cond_2
    const-string v1, "9"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 207
    iget-object v0, p0, Lcom/aadhk/restpos/d/ev;->a:Lcom/aadhk/restpos/d/eq;

    invoke-static {v0}, Lcom/aadhk/restpos/d/eq;->e(Lcom/aadhk/restpos/d/eq;)Lcom/aadhk/restpos/PayInOutActivity;

    move-result-object v0

    const v1, 0x7f080248

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 209
    :cond_3
    iget-object v0, p0, Lcom/aadhk/restpos/d/ev;->a:Lcom/aadhk/restpos/d/eq;

    invoke-static {v0}, Lcom/aadhk/restpos/d/eq;->e(Lcom/aadhk/restpos/d/eq;)Lcom/aadhk/restpos/PayInOutActivity;

    move-result-object v0

    const v1, 0x7f080247

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
