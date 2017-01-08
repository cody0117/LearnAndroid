.class final Lcom/aadhk/restpos/d/kj;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/product/library/a/c;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/d/ke;

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

.field private c:J


# direct methods
.method public constructor <init>(Lcom/aadhk/restpos/d/ke;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 143
    iput-object p1, p0, Lcom/aadhk/restpos/d/kj;->a:Lcom/aadhk/restpos/d/ke;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    iput-wide p2, p0, Lcom/aadhk/restpos/d/kj;->c:J

    .line 145
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 149
    iget-object v0, p0, Lcom/aadhk/restpos/d/kj;->a:Lcom/aadhk/restpos/d/ke;

    invoke-static {v0}, Lcom/aadhk/restpos/d/ke;->b(Lcom/aadhk/restpos/d/ke;)Lcom/aadhk/restpos/g/ac;

    move-result-object v0

    iget-wide v1, p0, Lcom/aadhk/restpos/d/kj;->c:J

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/restpos/g/ac;->a(J)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/kj;->b:Ljava/util/Map;

    .line 150
    return-void
.end method

.method public final b()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 154
    iget-object v0, p0, Lcom/aadhk/restpos/d/kj;->b:Ljava/util/Map;

    const-string v1, "serviceStatus"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 155
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 156
    iget-object v0, p0, Lcom/aadhk/restpos/d/kj;->a:Lcom/aadhk/restpos/d/ke;

    invoke-static {v0}, Lcom/aadhk/restpos/d/ke;->e(Lcom/aadhk/restpos/d/ke;)Lcom/aadhk/restpos/TableListActivity;

    move-result-object v1

    iget-object v0, p0, Lcom/aadhk/restpos/d/kj;->b:Ljava/util/Map;

    const-string v2, "serviceData"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/Order;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lcom/aadhk/restpos/util/q;->a(Landroid/app/Activity;Lcom/aadhk/restpos/bean/Order;Lcom/aadhk/restpos/bean/Customer;Z)V

    .line 165
    :goto_0
    return-void

    .line 157
    :cond_0
    const-string v1, "10"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "11"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 158
    :cond_1
    iget-object v0, p0, Lcom/aadhk/restpos/d/kj;->a:Lcom/aadhk/restpos/d/ke;

    invoke-static {v0}, Lcom/aadhk/restpos/d/ke;->e(Lcom/aadhk/restpos/d/ke;)Lcom/aadhk/restpos/TableListActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/aadhk/restpos/util/q;->a(Landroid/content/Context;)V

    .line 159
    iget-object v0, p0, Lcom/aadhk/restpos/d/kj;->a:Lcom/aadhk/restpos/d/ke;

    invoke-static {v0}, Lcom/aadhk/restpos/d/ke;->e(Lcom/aadhk/restpos/d/ke;)Lcom/aadhk/restpos/TableListActivity;

    move-result-object v0

    const v1, 0x7f080246

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 160
    :cond_2
    const-string v1, "9"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 161
    iget-object v0, p0, Lcom/aadhk/restpos/d/kj;->a:Lcom/aadhk/restpos/d/ke;

    invoke-static {v0}, Lcom/aadhk/restpos/d/ke;->e(Lcom/aadhk/restpos/d/ke;)Lcom/aadhk/restpos/TableListActivity;

    move-result-object v0

    const v1, 0x7f080248

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 163
    :cond_3
    iget-object v0, p0, Lcom/aadhk/restpos/d/kj;->a:Lcom/aadhk/restpos/d/ke;

    invoke-static {v0}, Lcom/aadhk/restpos/d/ke;->e(Lcom/aadhk/restpos/d/ke;)Lcom/aadhk/restpos/TableListActivity;

    move-result-object v0

    const v1, 0x7f080247

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
