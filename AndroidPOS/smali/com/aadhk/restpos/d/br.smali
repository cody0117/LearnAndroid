.class final Lcom/aadhk/restpos/d/br;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/product/library/a/c;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/d/bq;

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
.method private constructor <init>(Lcom/aadhk/restpos/d/bq;)V
    .locals 0
    .parameter

    .prologue
    .line 168
    iput-object p1, p0, Lcom/aadhk/restpos/d/br;->a:Lcom/aadhk/restpos/d/bq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/aadhk/restpos/d/bq;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 168
    invoke-direct {p0, p1}, Lcom/aadhk/restpos/d/br;-><init>(Lcom/aadhk/restpos/d/bq;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 173
    iget-object v0, p0, Lcom/aadhk/restpos/d/br;->a:Lcom/aadhk/restpos/d/bq;

    invoke-static {v0}, Lcom/aadhk/restpos/d/bq;->a(Lcom/aadhk/restpos/d/bq;)Lcom/aadhk/restpos/bean/POSPrinterSetting;

    move-result-object v0

    const-string v1, "logo.png"

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->setLogoName(Ljava/lang/String;)V

    .line 174
    iget-object v0, p0, Lcom/aadhk/restpos/d/br;->a:Lcom/aadhk/restpos/d/bq;

    invoke-static {v0}, Lcom/aadhk/restpos/d/bq;->b(Lcom/aadhk/restpos/d/bq;)Lcom/aadhk/restpos/g/u;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/d/br;->a:Lcom/aadhk/restpos/d/bq;

    invoke-static {v1}, Lcom/aadhk/restpos/d/bq;->a(Lcom/aadhk/restpos/d/bq;)Lcom/aadhk/restpos/bean/POSPrinterSetting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->getId()I

    move-result v1

    const-string v2, "logo.png"

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/restpos/g/u;->a(ILjava/lang/String;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/br;->b:Ljava/util/Map;

    .line 175
    return-void
.end method

.method public final b()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 179
    iget-object v0, p0, Lcom/aadhk/restpos/d/br;->b:Ljava/util/Map;

    const-string v1, "serviceStatus"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 180
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 181
    iget-object v0, p0, Lcom/aadhk/restpos/d/br;->a:Lcom/aadhk/restpos/d/bq;

    invoke-static {v0}, Lcom/aadhk/restpos/d/bq;->f(Lcom/aadhk/restpos/d/bq;)V

    .line 191
    :goto_0
    return-void

    .line 183
    :cond_0
    const-string v1, "10"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "11"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 184
    :cond_1
    iget-object v0, p0, Lcom/aadhk/restpos/d/br;->a:Lcom/aadhk/restpos/d/bq;

    invoke-static {v0}, Lcom/aadhk/restpos/d/bq;->e(Lcom/aadhk/restpos/d/bq;)Lcom/aadhk/restpos/PrinterActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/aadhk/restpos/util/q;->a(Landroid/content/Context;)V

    .line 185
    iget-object v0, p0, Lcom/aadhk/restpos/d/br;->a:Lcom/aadhk/restpos/d/bq;

    invoke-static {v0}, Lcom/aadhk/restpos/d/bq;->e(Lcom/aadhk/restpos/d/bq;)Lcom/aadhk/restpos/PrinterActivity;

    move-result-object v0

    const v1, 0x7f080246

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 186
    :cond_2
    const-string v1, "9"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 187
    iget-object v0, p0, Lcom/aadhk/restpos/d/br;->a:Lcom/aadhk/restpos/d/bq;

    invoke-static {v0}, Lcom/aadhk/restpos/d/bq;->e(Lcom/aadhk/restpos/d/bq;)Lcom/aadhk/restpos/PrinterActivity;

    move-result-object v0

    const v1, 0x7f080248

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 189
    :cond_3
    iget-object v0, p0, Lcom/aadhk/restpos/d/br;->a:Lcom/aadhk/restpos/d/bq;

    invoke-static {v0}, Lcom/aadhk/restpos/d/bq;->e(Lcom/aadhk/restpos/d/bq;)Lcom/aadhk/restpos/PrinterActivity;

    move-result-object v0

    const v1, 0x7f080247

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
