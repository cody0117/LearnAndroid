.class final Lcom/aadhk/restpos/d/bt;
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
    .line 137
    iput-object p1, p0, Lcom/aadhk/restpos/d/bt;->a:Lcom/aadhk/restpos/d/bq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/aadhk/restpos/d/bq;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 137
    invoke-direct {p0, p1}, Lcom/aadhk/restpos/d/bt;-><init>(Lcom/aadhk/restpos/d/bq;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 142
    iget-object v0, p0, Lcom/aadhk/restpos/d/bt;->a:Lcom/aadhk/restpos/d/bq;

    invoke-static {v0}, Lcom/aadhk/restpos/d/bq;->b(Lcom/aadhk/restpos/d/bq;)Lcom/aadhk/restpos/g/u;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/d/bt;->a:Lcom/aadhk/restpos/d/bq;

    invoke-static {v1}, Lcom/aadhk/restpos/d/bq;->a(Lcom/aadhk/restpos/d/bq;)Lcom/aadhk/restpos/bean/POSPrinterSetting;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/g/u;->a(Lcom/aadhk/restpos/bean/POSPrinterSetting;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/bt;->b:Ljava/util/Map;

    .line 143
    return-void
.end method

.method public final b()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 147
    iget-object v0, p0, Lcom/aadhk/restpos/d/bt;->b:Ljava/util/Map;

    const-string v1, "serviceStatus"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 148
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 149
    iget-object v0, p0, Lcom/aadhk/restpos/d/bt;->b:Ljava/util/Map;

    const-string v1, "serviceData"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 150
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 151
    iget-object v0, p0, Lcom/aadhk/restpos/d/bt;->a:Lcom/aadhk/restpos/d/bq;

    invoke-static {v0}, Lcom/aadhk/restpos/d/bq;->c(Lcom/aadhk/restpos/d/bq;)Landroid/widget/Button;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 152
    iget-object v0, p0, Lcom/aadhk/restpos/d/bt;->a:Lcom/aadhk/restpos/d/bq;

    invoke-static {v0}, Lcom/aadhk/restpos/d/bq;->d(Lcom/aadhk/restpos/d/bq;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f02009e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 165
    :goto_0
    return-void

    .line 154
    :cond_0
    iget-object v1, p0, Lcom/aadhk/restpos/d/bt;->a:Lcom/aadhk/restpos/d/bq;

    invoke-static {v1}, Lcom/aadhk/restpos/d/bq;->d(Lcom/aadhk/restpos/d/bq;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-static {v0}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 155
    iget-object v0, p0, Lcom/aadhk/restpos/d/bt;->a:Lcom/aadhk/restpos/d/bq;

    invoke-static {v0}, Lcom/aadhk/restpos/d/bq;->c(Lcom/aadhk/restpos/d/bq;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

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
    iget-object v0, p0, Lcom/aadhk/restpos/d/bt;->a:Lcom/aadhk/restpos/d/bq;

    invoke-static {v0}, Lcom/aadhk/restpos/d/bq;->e(Lcom/aadhk/restpos/d/bq;)Lcom/aadhk/restpos/PrinterActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/aadhk/restpos/util/q;->a(Landroid/content/Context;)V

    .line 159
    iget-object v0, p0, Lcom/aadhk/restpos/d/bt;->a:Lcom/aadhk/restpos/d/bq;

    invoke-static {v0}, Lcom/aadhk/restpos/d/bq;->e(Lcom/aadhk/restpos/d/bq;)Lcom/aadhk/restpos/PrinterActivity;

    move-result-object v0

    const v1, 0x7f080246

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 160
    :cond_3
    const-string v1, "9"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 161
    iget-object v0, p0, Lcom/aadhk/restpos/d/bt;->a:Lcom/aadhk/restpos/d/bq;

    invoke-static {v0}, Lcom/aadhk/restpos/d/bq;->e(Lcom/aadhk/restpos/d/bq;)Lcom/aadhk/restpos/PrinterActivity;

    move-result-object v0

    const v1, 0x7f080248

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 163
    :cond_4
    iget-object v0, p0, Lcom/aadhk/restpos/d/bt;->a:Lcom/aadhk/restpos/d/bq;

    invoke-static {v0}, Lcom/aadhk/restpos/d/bq;->e(Lcom/aadhk/restpos/d/bq;)Lcom/aadhk/restpos/PrinterActivity;

    move-result-object v0

    const v1, 0x7f080247

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
