.class final Lcom/aadhk/restpos/d/gy;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/product/library/a/c;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/d/gw;

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
.method private constructor <init>(Lcom/aadhk/restpos/d/gw;)V
    .locals 0
    .parameter

    .prologue
    .line 130
    iput-object p1, p0, Lcom/aadhk/restpos/d/gy;->a:Lcom/aadhk/restpos/d/gw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/aadhk/restpos/d/gw;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 130
    invoke-direct {p0, p1}, Lcom/aadhk/restpos/d/gy;-><init>(Lcom/aadhk/restpos/d/gw;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 135
    iget-object v0, p0, Lcom/aadhk/restpos/d/gy;->a:Lcom/aadhk/restpos/d/gw;

    iget-object v0, v0, Lcom/aadhk/restpos/d/gw;->l:Lcom/aadhk/restpos/g/u;

    iget-object v1, p0, Lcom/aadhk/restpos/d/gy;->a:Lcom/aadhk/restpos/d/gw;

    iget-object v1, v1, Lcom/aadhk/restpos/d/gw;->i:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/g/u;->b(Lcom/aadhk/restpos/bean/POSPrinterSetting;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/gy;->b:Ljava/util/Map;

    .line 136
    return-void
.end method

.method public final b()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 140
    iget-object v0, p0, Lcom/aadhk/restpos/d/gy;->b:Ljava/util/Map;

    const-string v1, "serviceStatus"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 141
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 142
    const-string v1, "10"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "11"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/gy;->a:Lcom/aadhk/restpos/d/gw;

    iget-object v0, v0, Lcom/aadhk/restpos/d/gw;->h:Lcom/aadhk/restpos/PrinterActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/util/q;->a(Landroid/content/Context;)V

    .line 144
    iget-object v0, p0, Lcom/aadhk/restpos/d/gy;->a:Lcom/aadhk/restpos/d/gw;

    iget-object v0, v0, Lcom/aadhk/restpos/d/gw;->h:Lcom/aadhk/restpos/PrinterActivity;

    const v1, 0x7f080246

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 150
    :cond_1
    :goto_0
    return-void

    .line 145
    :cond_2
    const-string v1, "9"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 146
    iget-object v0, p0, Lcom/aadhk/restpos/d/gy;->a:Lcom/aadhk/restpos/d/gw;

    iget-object v0, v0, Lcom/aadhk/restpos/d/gw;->h:Lcom/aadhk/restpos/PrinterActivity;

    const v1, 0x7f080248

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 148
    :cond_3
    iget-object v0, p0, Lcom/aadhk/restpos/d/gy;->a:Lcom/aadhk/restpos/d/gw;

    iget-object v0, v0, Lcom/aadhk/restpos/d/gw;->h:Lcom/aadhk/restpos/PrinterActivity;

    const v1, 0x7f080247

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
