.class final Lcom/aadhk/restpos/d/hh;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/product/library/a/c;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/d/he;

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
.method private constructor <init>(Lcom/aadhk/restpos/d/he;)V
    .locals 0
    .parameter

    .prologue
    .line 126
    iput-object p1, p0, Lcom/aadhk/restpos/d/hh;->a:Lcom/aadhk/restpos/d/he;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/aadhk/restpos/d/he;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 126
    invoke-direct {p0, p1}, Lcom/aadhk/restpos/d/hh;-><init>(Lcom/aadhk/restpos/d/he;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .prologue
    .line 131
    iget-object v0, p0, Lcom/aadhk/restpos/d/hh;->a:Lcom/aadhk/restpos/d/he;

    invoke-static {v0}, Lcom/aadhk/restpos/d/he;->e(Lcom/aadhk/restpos/d/he;)Lcom/aadhk/restpos/g/v;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/d/hh;->a:Lcom/aadhk/restpos/d/he;

    invoke-static {v1}, Lcom/aadhk/restpos/d/he;->a(Lcom/aadhk/restpos/d/he;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/aadhk/restpos/d/hh;->a:Lcom/aadhk/restpos/d/he;

    invoke-static {v2}, Lcom/aadhk/restpos/d/he;->b(Lcom/aadhk/restpos/d/he;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/aadhk/restpos/d/hh;->a:Lcom/aadhk/restpos/d/he;

    invoke-static {v3}, Lcom/aadhk/restpos/d/he;->c(Lcom/aadhk/restpos/d/he;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/aadhk/restpos/d/hh;->a:Lcom/aadhk/restpos/d/he;

    invoke-static {v4}, Lcom/aadhk/restpos/d/he;->d(Lcom/aadhk/restpos/d/he;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/aadhk/restpos/g/v;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/hh;->b:Ljava/util/Map;

    .line 132
    return-void
.end method

.method public final b()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 136
    iget-object v0, p0, Lcom/aadhk/restpos/d/hh;->b:Ljava/util/Map;

    const-string v1, "serviceStatus"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 137
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 138
    iget-object v1, p0, Lcom/aadhk/restpos/d/hh;->a:Lcom/aadhk/restpos/d/he;

    iget-object v0, p0, Lcom/aadhk/restpos/d/hh;->b:Ljava/util/Map;

    const-string v2, "serviceData"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v1, v0}, Lcom/aadhk/restpos/d/he;->a(Lcom/aadhk/restpos/d/he;Ljava/util/List;)Ljava/util/List;

    .line 139
    iget-object v0, p0, Lcom/aadhk/restpos/d/hh;->a:Lcom/aadhk/restpos/d/he;

    invoke-virtual {v0}, Lcom/aadhk/restpos/d/he;->a()V

    .line 148
    :goto_0
    return-void

    .line 140
    :cond_0
    const-string v1, "10"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "11"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 141
    :cond_1
    iget-object v0, p0, Lcom/aadhk/restpos/d/hh;->a:Lcom/aadhk/restpos/d/he;

    invoke-static {v0}, Lcom/aadhk/restpos/d/he;->f(Lcom/aadhk/restpos/d/he;)Lcom/aadhk/restpos/ReceiptListActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/aadhk/restpos/util/q;->a(Landroid/content/Context;)V

    .line 142
    iget-object v0, p0, Lcom/aadhk/restpos/d/hh;->a:Lcom/aadhk/restpos/d/he;

    invoke-static {v0}, Lcom/aadhk/restpos/d/he;->f(Lcom/aadhk/restpos/d/he;)Lcom/aadhk/restpos/ReceiptListActivity;

    move-result-object v0

    const v1, 0x7f080246

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 143
    :cond_2
    const-string v1, "9"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 144
    iget-object v0, p0, Lcom/aadhk/restpos/d/hh;->a:Lcom/aadhk/restpos/d/he;

    invoke-static {v0}, Lcom/aadhk/restpos/d/he;->f(Lcom/aadhk/restpos/d/he;)Lcom/aadhk/restpos/ReceiptListActivity;

    move-result-object v0

    const v1, 0x7f080248

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 146
    :cond_3
    iget-object v0, p0, Lcom/aadhk/restpos/d/hh;->a:Lcom/aadhk/restpos/d/he;

    invoke-static {v0}, Lcom/aadhk/restpos/d/he;->f(Lcom/aadhk/restpos/d/he;)Lcom/aadhk/restpos/ReceiptListActivity;

    move-result-object v0

    const v1, 0x7f080247

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
