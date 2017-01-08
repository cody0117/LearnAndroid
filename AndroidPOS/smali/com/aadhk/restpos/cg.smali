.class final Lcom/aadhk/restpos/cg;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/product/library/a/c;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/PayInOutActivity;

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
.method private constructor <init>(Lcom/aadhk/restpos/PayInOutActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 208
    iput-object p1, p0, Lcom/aadhk/restpos/cg;->a:Lcom/aadhk/restpos/PayInOutActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/aadhk/restpos/PayInOutActivity;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 208
    invoke-direct {p0, p1}, Lcom/aadhk/restpos/cg;-><init>(Lcom/aadhk/restpos/PayInOutActivity;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/aadhk/restpos/cg;->a:Lcom/aadhk/restpos/PayInOutActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/PayInOutActivity;->d(Lcom/aadhk/restpos/PayInOutActivity;)Lcom/aadhk/restpos/g/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/g/q;->a()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/cg;->b:Ljava/util/Map;

    .line 213
    return-void
.end method

.method public final b()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 216
    iget-object v0, p0, Lcom/aadhk/restpos/cg;->b:Ljava/util/Map;

    const-string v1, "serviceStatus"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 217
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 218
    iget-object v1, p0, Lcom/aadhk/restpos/cg;->a:Lcom/aadhk/restpos/PayInOutActivity;

    iget-object v0, p0, Lcom/aadhk/restpos/cg;->b:Ljava/util/Map;

    const-string v2, "serviceLastTime"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/aadhk/restpos/PayInOutActivity;->b(Lcom/aadhk/restpos/PayInOutActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 227
    :goto_0
    return-void

    .line 219
    :cond_0
    const-string v1, "10"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "11"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 220
    :cond_1
    iget-object v0, p0, Lcom/aadhk/restpos/cg;->a:Lcom/aadhk/restpos/PayInOutActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/util/q;->a(Landroid/content/Context;)V

    .line 221
    iget-object v0, p0, Lcom/aadhk/restpos/cg;->a:Lcom/aadhk/restpos/PayInOutActivity;

    const v1, 0x7f080246

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 222
    :cond_2
    const-string v1, "9"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 223
    iget-object v0, p0, Lcom/aadhk/restpos/cg;->a:Lcom/aadhk/restpos/PayInOutActivity;

    const v1, 0x7f080248

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 225
    :cond_3
    iget-object v0, p0, Lcom/aadhk/restpos/cg;->a:Lcom/aadhk/restpos/PayInOutActivity;

    const v1, 0x7f080247

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
