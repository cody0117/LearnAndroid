.class final Lcom/aadhk/restpos/d/gu;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/product/library/a/c;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/d/gt;

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
.method private constructor <init>(Lcom/aadhk/restpos/d/gt;)V
    .locals 0
    .parameter

    .prologue
    .line 121
    iput-object p1, p0, Lcom/aadhk/restpos/d/gu;->a:Lcom/aadhk/restpos/d/gt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/aadhk/restpos/d/gt;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 121
    invoke-direct {p0, p1}, Lcom/aadhk/restpos/d/gu;-><init>(Lcom/aadhk/restpos/d/gt;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/aadhk/restpos/d/gu;->a:Lcom/aadhk/restpos/d/gt;

    iget-object v0, v0, Lcom/aadhk/restpos/d/gt;->l:Lcom/aadhk/restpos/g/u;

    iget-object v1, p0, Lcom/aadhk/restpos/d/gu;->a:Lcom/aadhk/restpos/d/gt;

    iget-object v1, v1, Lcom/aadhk/restpos/d/gt;->i:Lcom/aadhk/restpos/bean/POSPrinterSetting;

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/g/u;->e(Lcom/aadhk/restpos/bean/POSPrinterSetting;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/gu;->b:Ljava/util/Map;

    .line 128
    return-void
.end method

.method public final b()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 132
    iget-object v0, p0, Lcom/aadhk/restpos/d/gu;->b:Ljava/util/Map;

    const-string v1, "serviceStatus"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 133
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 134
    const-string v1, "10"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "11"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/gu;->a:Lcom/aadhk/restpos/d/gt;

    iget-object v0, v0, Lcom/aadhk/restpos/d/gt;->h:Lcom/aadhk/restpos/PrinterActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/util/q;->a(Landroid/content/Context;)V

    .line 136
    iget-object v0, p0, Lcom/aadhk/restpos/d/gu;->a:Lcom/aadhk/restpos/d/gt;

    iget-object v0, v0, Lcom/aadhk/restpos/d/gt;->h:Lcom/aadhk/restpos/PrinterActivity;

    const v1, 0x7f080246

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 142
    :cond_1
    :goto_0
    return-void

    .line 137
    :cond_2
    const-string v1, "9"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 138
    iget-object v0, p0, Lcom/aadhk/restpos/d/gu;->a:Lcom/aadhk/restpos/d/gt;

    iget-object v0, v0, Lcom/aadhk/restpos/d/gt;->h:Lcom/aadhk/restpos/PrinterActivity;

    const v1, 0x7f080248

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 140
    :cond_3
    iget-object v0, p0, Lcom/aadhk/restpos/d/gu;->a:Lcom/aadhk/restpos/d/gt;

    iget-object v0, v0, Lcom/aadhk/restpos/d/gt;->h:Lcom/aadhk/restpos/PrinterActivity;

    const v1, 0x7f080247

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
