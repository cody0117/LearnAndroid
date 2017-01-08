.class final Lcom/aadhk/restpos/wifidirect/f;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/product/library/a/c;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/wifidirect/DeviceDetailFragment;

.field private b:Ljava/util/Map;


# direct methods
.method private constructor <init>(Lcom/aadhk/restpos/wifidirect/DeviceDetailFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 148
    iput-object p1, p0, Lcom/aadhk/restpos/wifidirect/f;->a:Lcom/aadhk/restpos/wifidirect/DeviceDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/aadhk/restpos/wifidirect/DeviceDetailFragment;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 148
    invoke-direct {p0, p1}, Lcom/aadhk/restpos/wifidirect/f;-><init>(Lcom/aadhk/restpos/wifidirect/DeviceDetailFragment;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/aadhk/restpos/wifidirect/f;->a:Lcom/aadhk/restpos/wifidirect/DeviceDetailFragment;

    invoke-static {v0}, Lcom/aadhk/restpos/wifidirect/DeviceDetailFragment;->c(Lcom/aadhk/restpos/wifidirect/DeviceDetailFragment;)Lcom/aadhk/restpos/g/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/g/h;->a()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/wifidirect/f;->b:Ljava/util/Map;

    .line 167
    return-void
.end method

.method public final b()V
    .locals 3

    .prologue
    .line 153
    iget-object v0, p0, Lcom/aadhk/restpos/wifidirect/f;->b:Ljava/util/Map;

    const-string v1, "serviceStatus"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 154
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 155
    iget-object v1, p0, Lcom/aadhk/restpos/wifidirect/f;->a:Lcom/aadhk/restpos/wifidirect/DeviceDetailFragment;

    iget-object v0, p0, Lcom/aadhk/restpos/wifidirect/f;->b:Ljava/util/Map;

    const-string v2, "serviceData"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v1, v0}, Lcom/aadhk/restpos/wifidirect/DeviceDetailFragment;->a(Lcom/aadhk/restpos/wifidirect/DeviceDetailFragment;Ljava/util/List;)Ljava/util/List;

    .line 156
    iget-object v0, p0, Lcom/aadhk/restpos/wifidirect/f;->a:Lcom/aadhk/restpos/wifidirect/DeviceDetailFragment;

    iget-object v1, p0, Lcom/aadhk/restpos/wifidirect/f;->a:Lcom/aadhk/restpos/wifidirect/DeviceDetailFragment;

    invoke-static {v1}, Lcom/aadhk/restpos/wifidirect/DeviceDetailFragment;->b(Lcom/aadhk/restpos/wifidirect/DeviceDetailFragment;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/wifidirect/DeviceDetailFragment;->a(Ljava/util/List;)V

    .line 162
    :cond_0
    :goto_0
    return-void

    .line 157
    :cond_1
    const-string v1, "10"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "11"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 158
    :cond_2
    invoke-static {}, Lcom/aadhk/restpos/wifidirect/DeviceDetailFragment;->b()Lcom/aadhk/restpos/WiFiDirectActivity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/aadhk/restpos/util/q;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 159
    :cond_3
    const-string v1, "9"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    invoke-static {}, Lcom/aadhk/restpos/wifidirect/DeviceDetailFragment;->b()Lcom/aadhk/restpos/WiFiDirectActivity;

    move-result-object v0

    const v1, 0x7f0803a3

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
