.class final Lcom/aadhk/restpos/d/ja;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/product/library/a/c;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/d/it;

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
.method private constructor <init>(Lcom/aadhk/restpos/d/it;)V
    .locals 0
    .parameter

    .prologue
    .line 657
    iput-object p1, p0, Lcom/aadhk/restpos/d/ja;->a:Lcom/aadhk/restpos/d/it;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/aadhk/restpos/d/it;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 657
    invoke-direct {p0, p1}, Lcom/aadhk/restpos/d/ja;-><init>(Lcom/aadhk/restpos/d/it;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 662
    iget-object v0, p0, Lcom/aadhk/restpos/d/ja;->a:Lcom/aadhk/restpos/d/it;

    invoke-static {v0}, Lcom/aadhk/restpos/d/it;->a(Lcom/aadhk/restpos/d/it;)Lcom/aadhk/restpos/g/aa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/g/aa;->a()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/ja;->b:Ljava/util/Map;

    .line 663
    return-void
.end method

.method public final b()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 667
    iget-object v0, p0, Lcom/aadhk/restpos/d/ja;->b:Ljava/util/Map;

    const-string v1, "serviceStatus"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 668
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 669
    iget-object v1, p0, Lcom/aadhk/restpos/d/ja;->a:Lcom/aadhk/restpos/d/it;

    iget-object v0, p0, Lcom/aadhk/restpos/d/ja;->b:Ljava/util/Map;

    const-string v2, "prefOrderNum"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/aadhk/restpos/d/it;->a(Lcom/aadhk/restpos/d/it;Ljava/lang/String;)Ljava/lang/String;

    .line 670
    iget-object v1, p0, Lcom/aadhk/restpos/d/ja;->a:Lcom/aadhk/restpos/d/it;

    iget-object v0, p0, Lcom/aadhk/restpos/d/ja;->b:Ljava/util/Map;

    const-string v2, "prefOrderNumPrefix"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/aadhk/restpos/d/it;->b(Lcom/aadhk/restpos/d/it;Ljava/lang/String;)Ljava/lang/String;

    .line 671
    iget-object v1, p0, Lcom/aadhk/restpos/d/ja;->a:Lcom/aadhk/restpos/d/it;

    iget-object v0, p0, Lcom/aadhk/restpos/d/ja;->b:Ljava/util/Map;

    const-string v2, "prefOrderNumInitial"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/aadhk/restpos/d/it;->c(Lcom/aadhk/restpos/d/it;Ljava/lang/String;)Ljava/lang/String;

    .line 672
    iget-object v1, p0, Lcom/aadhk/restpos/d/ja;->a:Lcom/aadhk/restpos/d/it;

    iget-object v0, p0, Lcom/aadhk/restpos/d/ja;->b:Ljava/util/Map;

    const-string v2, "prefOrderNumSuffix"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/aadhk/restpos/d/it;->d(Lcom/aadhk/restpos/d/it;Ljava/lang/String;)Ljava/lang/String;

    .line 673
    iget-object v0, p0, Lcom/aadhk/restpos/d/ja;->a:Lcom/aadhk/restpos/d/it;

    invoke-static {v0}, Lcom/aadhk/restpos/d/it;->f(Lcom/aadhk/restpos/d/it;)V

    .line 682
    :goto_0
    return-void

    .line 674
    :cond_0
    const-string v1, "10"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "11"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 675
    :cond_1
    iget-object v0, p0, Lcom/aadhk/restpos/d/ja;->a:Lcom/aadhk/restpos/d/it;

    invoke-static {v0}, Lcom/aadhk/restpos/d/it;->b(Lcom/aadhk/restpos/d/it;)Lcom/aadhk/restpos/SettingActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/aadhk/restpos/util/q;->a(Landroid/content/Context;)V

    .line 676
    iget-object v0, p0, Lcom/aadhk/restpos/d/ja;->a:Lcom/aadhk/restpos/d/it;

    invoke-static {v0}, Lcom/aadhk/restpos/d/it;->b(Lcom/aadhk/restpos/d/it;)Lcom/aadhk/restpos/SettingActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/d/ja;->a:Lcom/aadhk/restpos/d/it;

    invoke-static {v1}, Lcom/aadhk/restpos/d/it;->b(Lcom/aadhk/restpos/d/it;)Lcom/aadhk/restpos/SettingActivity;

    move-result-object v1

    const v2, 0x7f080246

    invoke-virtual {v1, v2}, Lcom/aadhk/restpos/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 677
    :cond_2
    const-string v1, "9"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 678
    iget-object v0, p0, Lcom/aadhk/restpos/d/ja;->a:Lcom/aadhk/restpos/d/it;

    invoke-static {v0}, Lcom/aadhk/restpos/d/it;->b(Lcom/aadhk/restpos/d/it;)Lcom/aadhk/restpos/SettingActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/d/ja;->a:Lcom/aadhk/restpos/d/it;

    invoke-static {v1}, Lcom/aadhk/restpos/d/it;->b(Lcom/aadhk/restpos/d/it;)Lcom/aadhk/restpos/SettingActivity;

    move-result-object v1

    const v2, 0x7f080248

    invoke-virtual {v1, v2}, Lcom/aadhk/restpos/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 680
    :cond_3
    iget-object v0, p0, Lcom/aadhk/restpos/d/ja;->a:Lcom/aadhk/restpos/d/it;

    invoke-static {v0}, Lcom/aadhk/restpos/d/it;->b(Lcom/aadhk/restpos/d/it;)Lcom/aadhk/restpos/SettingActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/d/ja;->a:Lcom/aadhk/restpos/d/it;

    invoke-static {v1}, Lcom/aadhk/restpos/d/it;->b(Lcom/aadhk/restpos/d/it;)Lcom/aadhk/restpos/SettingActivity;

    move-result-object v1

    const v2, 0x7f080247

    invoke-virtual {v1, v2}, Lcom/aadhk/restpos/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
