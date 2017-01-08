.class final Lcom/aadhk/restpos/c/bn;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/product/library/a/c;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/c/bl;

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
.method private constructor <init>(Lcom/aadhk/restpos/c/bl;)V
    .locals 0
    .parameter

    .prologue
    .line 54
    iput-object p1, p0, Lcom/aadhk/restpos/c/bn;->a:Lcom/aadhk/restpos/c/bl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/aadhk/restpos/c/bl;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/aadhk/restpos/c/bn;-><init>(Lcom/aadhk/restpos/c/bl;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 59
    new-instance v0, Lcom/aadhk/restpos/g/ae;

    iget-object v1, p0, Lcom/aadhk/restpos/c/bn;->a:Lcom/aadhk/restpos/c/bl;

    invoke-static {v1}, Lcom/aadhk/restpos/c/bl;->a(Lcom/aadhk/restpos/c/bl;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/aadhk/restpos/g/ae;-><init>(Landroid/content/Context;)V

    .line 60
    iget-object v1, p0, Lcom/aadhk/restpos/c/bn;->a:Lcom/aadhk/restpos/c/bl;

    invoke-static {v1}, Lcom/aadhk/restpos/c/bl;->b(Lcom/aadhk/restpos/c/bl;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/g/ae;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/c/bn;->b:Ljava/util/Map;

    .line 61
    invoke-static {}, Lcom/aadhk/restpos/b/f;->a()Lcom/aadhk/restpos/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/b/f;->c()V

    .line 62
    return-void
.end method

.method public final b()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 65
    iget-object v0, p0, Lcom/aadhk/restpos/c/bn;->b:Ljava/util/Map;

    const-string v1, "serviceStatus"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 66
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 67
    iget-object v0, p0, Lcom/aadhk/restpos/c/bn;->b:Ljava/util/Map;

    const-string v1, "serviceData"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 68
    if-eqz v0, :cond_1

    .line 69
    iget-object v0, p0, Lcom/aadhk/restpos/c/bn;->a:Lcom/aadhk/restpos/c/bl;

    invoke-static {v0}, Lcom/aadhk/restpos/c/bl;->c(Lcom/aadhk/restpos/c/bl;)Lcom/aadhk/restpos/c/bm;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/aadhk/restpos/c/bn;->a:Lcom/aadhk/restpos/c/bl;

    invoke-static {v0}, Lcom/aadhk/restpos/c/bl;->c(Lcom/aadhk/restpos/c/bl;)Lcom/aadhk/restpos/c/bm;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/c/bn;->a:Lcom/aadhk/restpos/c/bl;

    invoke-static {v1}, Lcom/aadhk/restpos/c/bl;->d(Lcom/aadhk/restpos/c/bl;)Ljava/lang/String;

    invoke-interface {v0}, Lcom/aadhk/restpos/c/bm;->a()V

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/aadhk/restpos/c/bn;->a:Lcom/aadhk/restpos/c/bl;

    invoke-virtual {v0}, Lcom/aadhk/restpos/c/bl;->dismiss()V

    .line 86
    :goto_0
    return-void

    .line 74
    :cond_1
    iget-object v0, p0, Lcom/aadhk/restpos/c/bn;->a:Lcom/aadhk/restpos/c/bl;

    invoke-static {v0}, Lcom/aadhk/restpos/c/bl;->e(Lcom/aadhk/restpos/c/bl;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/c/bn;->a:Lcom/aadhk/restpos/c/bl;

    iget-object v1, v1, Lcom/aadhk/restpos/c/bl;->a:Landroid/content/res/Resources;

    const v2, 0x7f080257

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 75
    iget-object v0, p0, Lcom/aadhk/restpos/c/bn;->a:Lcom/aadhk/restpos/c/bl;

    invoke-static {v0}, Lcom/aadhk/restpos/c/bl;->e(Lcom/aadhk/restpos/c/bl;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    .line 78
    :cond_2
    const-string v1, "9"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 79
    iget-object v0, p0, Lcom/aadhk/restpos/c/bn;->a:Lcom/aadhk/restpos/c/bl;

    invoke-static {v0}, Lcom/aadhk/restpos/c/bl;->a(Lcom/aadhk/restpos/c/bl;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f080248

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 80
    :cond_3
    const-string v1, "10"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "11"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 81
    :cond_4
    iget-object v0, p0, Lcom/aadhk/restpos/c/bn;->a:Lcom/aadhk/restpos/c/bl;

    invoke-static {v0}, Lcom/aadhk/restpos/c/bl;->a(Lcom/aadhk/restpos/c/bl;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/aadhk/restpos/util/q;->a(Landroid/content/Context;)V

    .line 82
    iget-object v0, p0, Lcom/aadhk/restpos/c/bn;->a:Lcom/aadhk/restpos/c/bl;

    invoke-static {v0}, Lcom/aadhk/restpos/c/bl;->a(Lcom/aadhk/restpos/c/bl;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f080246

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 84
    :cond_5
    iget-object v0, p0, Lcom/aadhk/restpos/c/bn;->a:Lcom/aadhk/restpos/c/bl;

    invoke-static {v0}, Lcom/aadhk/restpos/c/bl;->a(Lcom/aadhk/restpos/c/bl;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f080247

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
