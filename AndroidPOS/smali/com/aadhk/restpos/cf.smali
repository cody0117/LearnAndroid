.class final Lcom/aadhk/restpos/cf;
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
    .line 178
    iput-object p1, p0, Lcom/aadhk/restpos/cf;->a:Lcom/aadhk/restpos/PayInOutActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/aadhk/restpos/PayInOutActivity;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 178
    invoke-direct {p0, p1}, Lcom/aadhk/restpos/cf;-><init>(Lcom/aadhk/restpos/PayInOutActivity;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 182
    iget-object v0, p0, Lcom/aadhk/restpos/cf;->a:Lcom/aadhk/restpos/PayInOutActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/PayInOutActivity;->d(Lcom/aadhk/restpos/PayInOutActivity;)Lcom/aadhk/restpos/g/q;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/cf;->a:Lcom/aadhk/restpos/PayInOutActivity;

    iget-object v2, p0, Lcom/aadhk/restpos/cf;->a:Lcom/aadhk/restpos/PayInOutActivity;

    iget v2, v2, Lcom/aadhk/restpos/PayInOutActivity;->j:I

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/restpos/g/q;->a(Landroid/content/Context;I)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/cf;->b:Ljava/util/Map;

    .line 183
    return-void
.end method

.method public final b()V
    .locals 8

    .prologue
    const/4 v2, 0x1

    .line 186
    iget-object v0, p0, Lcom/aadhk/restpos/cf;->b:Ljava/util/Map;

    const-string v1, "serviceStatus"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 187
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 188
    iget-object v1, p0, Lcom/aadhk/restpos/cf;->a:Lcom/aadhk/restpos/PayInOutActivity;

    iget-object v0, p0, Lcom/aadhk/restpos/cf;->b:Ljava/util/Map;

    const-string v2, "serviceLastTime"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/aadhk/restpos/PayInOutActivity;->b(Lcom/aadhk/restpos/PayInOutActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 189
    iget-object v1, p0, Lcom/aadhk/restpos/cf;->a:Lcom/aadhk/restpos/PayInOutActivity;

    iget-object v0, p0, Lcom/aadhk/restpos/cf;->b:Ljava/util/Map;

    const-string v2, "serviceSencondLastTime"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/aadhk/restpos/PayInOutActivity;->c(Lcom/aadhk/restpos/PayInOutActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 190
    iget-object v1, p0, Lcom/aadhk/restpos/cf;->a:Lcom/aadhk/restpos/PayInOutActivity;

    iget-object v0, p0, Lcom/aadhk/restpos/cf;->b:Ljava/util/Map;

    const-string v2, "serviceData"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v1, v0}, Lcom/aadhk/restpos/PayInOutActivity;->a(Lcom/aadhk/restpos/PayInOutActivity;Ljava/util/List;)Ljava/util/List;

    .line 191
    new-instance v0, Lcom/aadhk/restpos/c/bc;

    iget-object v1, p0, Lcom/aadhk/restpos/cf;->a:Lcom/aadhk/restpos/PayInOutActivity;

    iget-object v2, p0, Lcom/aadhk/restpos/cf;->a:Lcom/aadhk/restpos/PayInOutActivity;

    invoke-static {v2}, Lcom/aadhk/restpos/PayInOutActivity;->e(Lcom/aadhk/restpos/PayInOutActivity;)Lcom/aadhk/restpos/bean/POSPrinterSetting;

    move-result-object v2

    iget-object v3, p0, Lcom/aadhk/restpos/cf;->a:Lcom/aadhk/restpos/PayInOutActivity;

    invoke-static {v3}, Lcom/aadhk/restpos/PayInOutActivity;->f(Lcom/aadhk/restpos/PayInOutActivity;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/aadhk/restpos/cf;->a:Lcom/aadhk/restpos/PayInOutActivity;

    invoke-static {v4}, Lcom/aadhk/restpos/PayInOutActivity;->b(Lcom/aadhk/restpos/PayInOutActivity;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/aadhk/restpos/cf;->a:Lcom/aadhk/restpos/PayInOutActivity;

    invoke-static {v5}, Lcom/aadhk/restpos/PayInOutActivity;->g(Lcom/aadhk/restpos/PayInOutActivity;)Ljava/util/List;

    move-result-object v5

    iget-object v6, p0, Lcom/aadhk/restpos/cf;->a:Lcom/aadhk/restpos/PayInOutActivity;

    iget-object v6, v6, Lcom/aadhk/restpos/PayInOutActivity;->d:Lcom/aadhk/restpos/bean/User;

    invoke-virtual {v6}, Lcom/aadhk/restpos/bean/User;->getAccount()Ljava/lang/String;

    iget-object v6, p0, Lcom/aadhk/restpos/cf;->a:Lcom/aadhk/restpos/PayInOutActivity;

    iget-object v6, v6, Lcom/aadhk/restpos/PayInOutActivity;->e:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v6}, Lcom/aadhk/restpos/bean/Company;->getEmail()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/aadhk/restpos/cf;->a:Lcom/aadhk/restpos/PayInOutActivity;

    iget-object v7, v7, Lcom/aadhk/restpos/PayInOutActivity;->c:Lcom/aadhk/restpos/util/r;

    invoke-direct/range {v0 .. v7}, Lcom/aadhk/restpos/c/bc;-><init>(Landroid/content/Context;Lcom/aadhk/restpos/bean/POSPrinterSetting;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/aadhk/restpos/util/r;)V

    .line 192
    invoke-virtual {v0}, Lcom/aadhk/restpos/c/bc;->show()V

    .line 201
    :goto_0
    return-void

    .line 193
    :cond_0
    const-string v1, "10"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "11"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 194
    :cond_1
    iget-object v0, p0, Lcom/aadhk/restpos/cf;->a:Lcom/aadhk/restpos/PayInOutActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/util/q;->a(Landroid/content/Context;)V

    .line 195
    iget-object v0, p0, Lcom/aadhk/restpos/cf;->a:Lcom/aadhk/restpos/PayInOutActivity;

    const v1, 0x7f080246

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 196
    :cond_2
    const-string v1, "9"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 197
    iget-object v0, p0, Lcom/aadhk/restpos/cf;->a:Lcom/aadhk/restpos/PayInOutActivity;

    const v1, 0x7f080248

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 199
    :cond_3
    iget-object v0, p0, Lcom/aadhk/restpos/cf;->a:Lcom/aadhk/restpos/PayInOutActivity;

    const v1, 0x7f080247

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
