.class final Lcom/aadhk/restpos/d/jb;
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
    .line 685
    iput-object p1, p0, Lcom/aadhk/restpos/d/jb;->a:Lcom/aadhk/restpos/d/it;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/aadhk/restpos/d/it;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 685
    invoke-direct {p0, p1}, Lcom/aadhk/restpos/d/jb;-><init>(Lcom/aadhk/restpos/d/it;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 690
    iget-object v0, p0, Lcom/aadhk/restpos/d/jb;->a:Lcom/aadhk/restpos/d/it;

    invoke-static {v0}, Lcom/aadhk/restpos/d/it;->g(Lcom/aadhk/restpos/d/it;)Lcom/aadhk/restpos/g/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/g/z;->a()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/jb;->b:Ljava/util/Map;

    .line 691
    return-void
.end method

.method public final b()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 695
    iget-object v0, p0, Lcom/aadhk/restpos/d/jb;->b:Ljava/util/Map;

    const-string v1, "serviceStatus"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 696
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 697
    iget-object v1, p0, Lcom/aadhk/restpos/d/jb;->a:Lcom/aadhk/restpos/d/it;

    iget-object v0, p0, Lcom/aadhk/restpos/d/jb;->b:Ljava/util/Map;

    const-string v2, "serviceData"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v1, v0}, Lcom/aadhk/restpos/d/it;->a(Lcom/aadhk/restpos/d/it;Ljava/util/List;)Ljava/util/List;

    .line 698
    new-instance v0, Lcom/aadhk/restpos/bean/ServiceFee;

    invoke-direct {v0}, Lcom/aadhk/restpos/bean/ServiceFee;-><init>()V

    .line 699
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/ServiceFee;->setId(I)V

    .line 700
    iget-object v1, p0, Lcom/aadhk/restpos/d/jb;->a:Lcom/aadhk/restpos/d/it;

    const v2, 0x7f0800f7

    invoke-virtual {v1, v2}, Lcom/aadhk/restpos/d/it;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/ServiceFee;->setName(Ljava/lang/String;)V

    .line 701
    iget-object v1, p0, Lcom/aadhk/restpos/d/jb;->a:Lcom/aadhk/restpos/d/it;

    invoke-static {v1}, Lcom/aadhk/restpos/d/it;->h(Lcom/aadhk/restpos/d/it;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 702
    iget-object v0, p0, Lcom/aadhk/restpos/d/jb;->a:Lcom/aadhk/restpos/d/it;

    invoke-static {v0}, Lcom/aadhk/restpos/d/it;->i(Lcom/aadhk/restpos/d/it;)V

    .line 703
    iget-object v0, p0, Lcom/aadhk/restpos/d/jb;->a:Lcom/aadhk/restpos/d/it;

    invoke-static {v0}, Lcom/aadhk/restpos/d/it;->j(Lcom/aadhk/restpos/d/it;)V

    .line 704
    iget-object v0, p0, Lcom/aadhk/restpos/d/jb;->a:Lcom/aadhk/restpos/d/it;

    invoke-static {v0}, Lcom/aadhk/restpos/d/it;->k(Lcom/aadhk/restpos/d/it;)V

    .line 713
    :goto_0
    return-void

    .line 705
    :cond_0
    const-string v1, "10"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "11"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 706
    :cond_1
    iget-object v0, p0, Lcom/aadhk/restpos/d/jb;->a:Lcom/aadhk/restpos/d/it;

    invoke-static {v0}, Lcom/aadhk/restpos/d/it;->b(Lcom/aadhk/restpos/d/it;)Lcom/aadhk/restpos/SettingActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/aadhk/restpos/util/q;->a(Landroid/content/Context;)V

    .line 707
    iget-object v0, p0, Lcom/aadhk/restpos/d/jb;->a:Lcom/aadhk/restpos/d/it;

    invoke-static {v0}, Lcom/aadhk/restpos/d/it;->b(Lcom/aadhk/restpos/d/it;)Lcom/aadhk/restpos/SettingActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/d/jb;->a:Lcom/aadhk/restpos/d/it;

    invoke-static {v1}, Lcom/aadhk/restpos/d/it;->b(Lcom/aadhk/restpos/d/it;)Lcom/aadhk/restpos/SettingActivity;

    move-result-object v1

    const v2, 0x7f080246

    invoke-virtual {v1, v2}, Lcom/aadhk/restpos/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 708
    :cond_2
    const-string v1, "9"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 709
    iget-object v0, p0, Lcom/aadhk/restpos/d/jb;->a:Lcom/aadhk/restpos/d/it;

    invoke-static {v0}, Lcom/aadhk/restpos/d/it;->b(Lcom/aadhk/restpos/d/it;)Lcom/aadhk/restpos/SettingActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/d/jb;->a:Lcom/aadhk/restpos/d/it;

    invoke-static {v1}, Lcom/aadhk/restpos/d/it;->b(Lcom/aadhk/restpos/d/it;)Lcom/aadhk/restpos/SettingActivity;

    move-result-object v1

    const v2, 0x7f080248

    invoke-virtual {v1, v2}, Lcom/aadhk/restpos/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 711
    :cond_3
    iget-object v0, p0, Lcom/aadhk/restpos/d/jb;->a:Lcom/aadhk/restpos/d/it;

    invoke-static {v0}, Lcom/aadhk/restpos/d/it;->b(Lcom/aadhk/restpos/d/it;)Lcom/aadhk/restpos/SettingActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/d/jb;->a:Lcom/aadhk/restpos/d/it;

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
