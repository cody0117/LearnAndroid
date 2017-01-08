.class final Lcom/aadhk/restpos/d/gm;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/product/library/a/c;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/d/gj;

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
.method private constructor <init>(Lcom/aadhk/restpos/d/gj;)V
    .locals 0
    .parameter

    .prologue
    .line 191
    iput-object p1, p0, Lcom/aadhk/restpos/d/gm;->a:Lcom/aadhk/restpos/d/gj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/aadhk/restpos/d/gj;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 191
    invoke-direct {p0, p1}, Lcom/aadhk/restpos/d/gm;-><init>(Lcom/aadhk/restpos/d/gj;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 196
    iget-object v0, p0, Lcom/aadhk/restpos/d/gm;->a:Lcom/aadhk/restpos/d/gj;

    iget-object v0, v0, Lcom/aadhk/restpos/d/gj;->l:Lcom/aadhk/restpos/g/u;

    iget-object v1, p0, Lcom/aadhk/restpos/d/gm;->a:Lcom/aadhk/restpos/d/gj;

    iget-object v1, v1, Lcom/aadhk/restpos/d/gj;->i:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/g/u;->d(Lcom/aadhk/restpos/bean/POSPrinterSetting;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/gm;->b:Ljava/util/Map;

    .line 197
    return-void
.end method

.method public final b()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 201
    iget-object v0, p0, Lcom/aadhk/restpos/d/gm;->b:Ljava/util/Map;

    const-string v1, "serviceStatus"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 202
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 204
    iget-object v0, p0, Lcom/aadhk/restpos/d/gm;->a:Lcom/aadhk/restpos/d/gj;

    iget-object v0, v0, Lcom/aadhk/restpos/d/gj;->i:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->getConnType()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aadhk/restpos/d/gm;->a:Lcom/aadhk/restpos/d/gj;

    iget-object v0, v0, Lcom/aadhk/restpos/d/gj;->i:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->getConnType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/gm;->a:Lcom/aadhk/restpos/d/gj;

    iget-object v0, v0, Lcom/aadhk/restpos/d/gj;->i:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    invoke-virtual {v0}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->isEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 205
    new-instance v0, Lcom/aadhk/restpos/util/r;

    iget-object v1, p0, Lcom/aadhk/restpos/d/gm;->a:Lcom/aadhk/restpos/d/gj;

    iget-object v1, v1, Lcom/aadhk/restpos/d/gj;->h:Lcom/aadhk/restpos/PrinterActivity;

    invoke-direct {v0, v1}, Lcom/aadhk/restpos/util/r;-><init>(Landroid/content/Context;)V

    .line 206
    const-string v1, "requireWifi"

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/restpos/util/r;->a(Ljava/lang/String;Z)V

    .line 219
    :goto_0
    return-void

    .line 208
    :cond_1
    new-instance v0, Lcom/aadhk/restpos/util/r;

    iget-object v1, p0, Lcom/aadhk/restpos/d/gm;->a:Lcom/aadhk/restpos/d/gj;

    iget-object v1, v1, Lcom/aadhk/restpos/d/gj;->h:Lcom/aadhk/restpos/PrinterActivity;

    invoke-direct {v0, v1}, Lcom/aadhk/restpos/util/r;-><init>(Landroid/content/Context;)V

    .line 209
    const-string v1, "requireWifi"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/restpos/util/r;->a(Ljava/lang/String;Z)V

    goto :goto_0

    .line 211
    :cond_2
    const-string v1, "11"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 212
    iget-object v0, p0, Lcom/aadhk/restpos/d/gm;->a:Lcom/aadhk/restpos/d/gj;

    iget-object v0, v0, Lcom/aadhk/restpos/d/gj;->h:Lcom/aadhk/restpos/PrinterActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/util/q;->a(Landroid/content/Context;)V

    .line 213
    iget-object v0, p0, Lcom/aadhk/restpos/d/gm;->a:Lcom/aadhk/restpos/d/gj;

    iget-object v0, v0, Lcom/aadhk/restpos/d/gj;->h:Lcom/aadhk/restpos/PrinterActivity;

    const v1, 0x7f080246

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 214
    :cond_3
    const-string v1, "9"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 215
    iget-object v0, p0, Lcom/aadhk/restpos/d/gm;->a:Lcom/aadhk/restpos/d/gj;

    iget-object v0, v0, Lcom/aadhk/restpos/d/gj;->h:Lcom/aadhk/restpos/PrinterActivity;

    const v1, 0x7f080248

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 217
    :cond_4
    iget-object v0, p0, Lcom/aadhk/restpos/d/gm;->a:Lcom/aadhk/restpos/d/gj;

    iget-object v0, v0, Lcom/aadhk/restpos/d/gj;->h:Lcom/aadhk/restpos/PrinterActivity;

    const v1, 0x7f080247

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
