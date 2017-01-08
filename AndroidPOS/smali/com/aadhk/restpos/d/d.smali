.class final Lcom/aadhk/restpos/d/d;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/product/library/a/c;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/d/a;

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
.method private constructor <init>(Lcom/aadhk/restpos/d/a;)V
    .locals 0
    .parameter

    .prologue
    .line 157
    iput-object p1, p0, Lcom/aadhk/restpos/d/d;->a:Lcom/aadhk/restpos/d/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/aadhk/restpos/d/a;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 157
    invoke-direct {p0, p1}, Lcom/aadhk/restpos/d/d;-><init>(Lcom/aadhk/restpos/d/a;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 162
    iget-object v0, p0, Lcom/aadhk/restpos/d/d;->a:Lcom/aadhk/restpos/d/a;

    invoke-static {v0}, Lcom/aadhk/restpos/d/a;->b(Lcom/aadhk/restpos/d/a;)Lcom/aadhk/restpos/g/a;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/d/d;->a:Lcom/aadhk/restpos/d/a;

    invoke-static {v1}, Lcom/aadhk/restpos/d/a;->a(Lcom/aadhk/restpos/d/a;)Lcom/aadhk/restpos/bean/Company;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/g/a;->b(Lcom/aadhk/restpos/bean/Company;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/d;->b:Ljava/util/Map;

    .line 163
    return-void
.end method

.method public final b()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 167
    iget-object v0, p0, Lcom/aadhk/restpos/d/d;->b:Ljava/util/Map;

    const-string v1, "serviceStatus"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 168
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 169
    iget-object v0, p0, Lcom/aadhk/restpos/d/d;->a:Lcom/aadhk/restpos/d/a;

    invoke-static {v0}, Lcom/aadhk/restpos/d/a;->c(Lcom/aadhk/restpos/d/a;)Lcom/aadhk/restpos/CompanyActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/CompanyActivity;->finish()V

    .line 178
    :goto_0
    return-void

    .line 170
    :cond_0
    const-string v1, "10"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "11"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 171
    :cond_1
    iget-object v0, p0, Lcom/aadhk/restpos/d/d;->a:Lcom/aadhk/restpos/d/a;

    invoke-static {v0}, Lcom/aadhk/restpos/d/a;->c(Lcom/aadhk/restpos/d/a;)Lcom/aadhk/restpos/CompanyActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/aadhk/restpos/util/q;->a(Landroid/content/Context;)V

    .line 172
    iget-object v0, p0, Lcom/aadhk/restpos/d/d;->a:Lcom/aadhk/restpos/d/a;

    invoke-static {v0}, Lcom/aadhk/restpos/d/a;->c(Lcom/aadhk/restpos/d/a;)Lcom/aadhk/restpos/CompanyActivity;

    move-result-object v0

    const v1, 0x7f080246

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 173
    :cond_2
    const-string v1, "9"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 174
    iget-object v0, p0, Lcom/aadhk/restpos/d/d;->a:Lcom/aadhk/restpos/d/a;

    invoke-static {v0}, Lcom/aadhk/restpos/d/a;->c(Lcom/aadhk/restpos/d/a;)Lcom/aadhk/restpos/CompanyActivity;

    move-result-object v0

    const v1, 0x7f080248

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 176
    :cond_3
    iget-object v0, p0, Lcom/aadhk/restpos/d/d;->a:Lcom/aadhk/restpos/d/a;

    invoke-static {v0}, Lcom/aadhk/restpos/d/a;->c(Lcom/aadhk/restpos/d/a;)Lcom/aadhk/restpos/CompanyActivity;

    move-result-object v0

    const v1, 0x7f080247

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
