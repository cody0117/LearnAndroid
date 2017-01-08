.class final Lcom/aadhk/restpos/d/jf;
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

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/aadhk/restpos/d/it;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 828
    iput-object p1, p0, Lcom/aadhk/restpos/d/jf;->a:Lcom/aadhk/restpos/d/it;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 829
    iput-object p2, p0, Lcom/aadhk/restpos/d/jf;->c:Ljava/lang/String;

    .line 830
    iput-object p3, p0, Lcom/aadhk/restpos/d/jf;->d:Ljava/lang/String;

    .line 831
    iput-object p4, p0, Lcom/aadhk/restpos/d/jf;->e:Ljava/lang/String;

    .line 832
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 836
    iget-object v0, p0, Lcom/aadhk/restpos/d/jf;->a:Lcom/aadhk/restpos/d/it;

    invoke-static {v0}, Lcom/aadhk/restpos/d/it;->a(Lcom/aadhk/restpos/d/it;)Lcom/aadhk/restpos/g/aa;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/d/jf;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/aadhk/restpos/d/jf;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/aadhk/restpos/d/jf;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/aadhk/restpos/g/aa;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/jf;->b:Ljava/util/Map;

    .line 837
    return-void
.end method

.method public final b()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 841
    iget-object v0, p0, Lcom/aadhk/restpos/d/jf;->b:Ljava/util/Map;

    const-string v1, "serviceStatus"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 842
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 843
    iget-object v0, p0, Lcom/aadhk/restpos/d/jf;->a:Lcom/aadhk/restpos/d/it;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/aadhk/restpos/d/it;->a(Lcom/aadhk/restpos/d/it;Ljava/lang/String;)Ljava/lang/String;

    .line 844
    iget-object v0, p0, Lcom/aadhk/restpos/d/jf;->a:Lcom/aadhk/restpos/d/it;

    iget-object v1, p0, Lcom/aadhk/restpos/d/jf;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/aadhk/restpos/d/it;->b(Lcom/aadhk/restpos/d/it;Ljava/lang/String;)Ljava/lang/String;

    .line 845
    iget-object v0, p0, Lcom/aadhk/restpos/d/jf;->a:Lcom/aadhk/restpos/d/it;

    iget-object v1, p0, Lcom/aadhk/restpos/d/jf;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/aadhk/restpos/d/it;->c(Lcom/aadhk/restpos/d/it;Ljava/lang/String;)Ljava/lang/String;

    .line 846
    iget-object v0, p0, Lcom/aadhk/restpos/d/jf;->a:Lcom/aadhk/restpos/d/it;

    iget-object v1, p0, Lcom/aadhk/restpos/d/jf;->e:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/aadhk/restpos/d/it;->d(Lcom/aadhk/restpos/d/it;Ljava/lang/String;)Ljava/lang/String;

    .line 847
    iget-object v0, p0, Lcom/aadhk/restpos/d/jf;->a:Lcom/aadhk/restpos/d/it;

    invoke-static {v0}, Lcom/aadhk/restpos/d/it;->f(Lcom/aadhk/restpos/d/it;)V

    .line 848
    iget-object v0, p0, Lcom/aadhk/restpos/d/jf;->a:Lcom/aadhk/restpos/d/it;

    invoke-static {v0}, Lcom/aadhk/restpos/d/it;->c(Lcom/aadhk/restpos/d/it;)Lcom/aadhk/restpos/util/r;

    move-result-object v0

    const-string v1, "prefOrderNum"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/restpos/util/r;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 849
    iget-object v0, p0, Lcom/aadhk/restpos/d/jf;->a:Lcom/aadhk/restpos/d/it;

    invoke-static {v0}, Lcom/aadhk/restpos/d/it;->c(Lcom/aadhk/restpos/d/it;)Lcom/aadhk/restpos/util/r;

    move-result-object v0

    const-string v1, "prefOrderNumPrefix"

    iget-object v2, p0, Lcom/aadhk/restpos/d/jf;->a:Lcom/aadhk/restpos/d/it;

    invoke-static {v2}, Lcom/aadhk/restpos/d/it;->l(Lcom/aadhk/restpos/d/it;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/restpos/util/r;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 850
    iget-object v0, p0, Lcom/aadhk/restpos/d/jf;->a:Lcom/aadhk/restpos/d/it;

    invoke-static {v0}, Lcom/aadhk/restpos/d/it;->c(Lcom/aadhk/restpos/d/it;)Lcom/aadhk/restpos/util/r;

    move-result-object v0

    const-string v1, "prefOrderNumInitial"

    iget-object v2, p0, Lcom/aadhk/restpos/d/jf;->a:Lcom/aadhk/restpos/d/it;

    invoke-static {v2}, Lcom/aadhk/restpos/d/it;->m(Lcom/aadhk/restpos/d/it;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/restpos/util/r;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 851
    iget-object v0, p0, Lcom/aadhk/restpos/d/jf;->a:Lcom/aadhk/restpos/d/it;

    invoke-static {v0}, Lcom/aadhk/restpos/d/it;->c(Lcom/aadhk/restpos/d/it;)Lcom/aadhk/restpos/util/r;

    move-result-object v0

    const-string v1, "prefOrderNumSuffix"

    iget-object v2, p0, Lcom/aadhk/restpos/d/jf;->a:Lcom/aadhk/restpos/d/it;

    invoke-static {v2}, Lcom/aadhk/restpos/d/it;->n(Lcom/aadhk/restpos/d/it;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/restpos/util/r;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 860
    :goto_0
    return-void

    .line 852
    :cond_0
    const-string v1, "10"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "11"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 853
    :cond_1
    iget-object v0, p0, Lcom/aadhk/restpos/d/jf;->a:Lcom/aadhk/restpos/d/it;

    invoke-static {v0}, Lcom/aadhk/restpos/d/it;->b(Lcom/aadhk/restpos/d/it;)Lcom/aadhk/restpos/SettingActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/aadhk/restpos/util/q;->a(Landroid/content/Context;)V

    .line 854
    iget-object v0, p0, Lcom/aadhk/restpos/d/jf;->a:Lcom/aadhk/restpos/d/it;

    invoke-static {v0}, Lcom/aadhk/restpos/d/it;->b(Lcom/aadhk/restpos/d/it;)Lcom/aadhk/restpos/SettingActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/d/jf;->a:Lcom/aadhk/restpos/d/it;

    invoke-static {v1}, Lcom/aadhk/restpos/d/it;->b(Lcom/aadhk/restpos/d/it;)Lcom/aadhk/restpos/SettingActivity;

    move-result-object v1

    const v2, 0x7f080246

    invoke-virtual {v1, v2}, Lcom/aadhk/restpos/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 855
    :cond_2
    const-string v1, "9"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 856
    iget-object v0, p0, Lcom/aadhk/restpos/d/jf;->a:Lcom/aadhk/restpos/d/it;

    invoke-static {v0}, Lcom/aadhk/restpos/d/it;->b(Lcom/aadhk/restpos/d/it;)Lcom/aadhk/restpos/SettingActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/d/jf;->a:Lcom/aadhk/restpos/d/it;

    invoke-static {v1}, Lcom/aadhk/restpos/d/it;->b(Lcom/aadhk/restpos/d/it;)Lcom/aadhk/restpos/SettingActivity;

    move-result-object v1

    const v2, 0x7f080248

    invoke-virtual {v1, v2}, Lcom/aadhk/restpos/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 858
    :cond_3
    iget-object v0, p0, Lcom/aadhk/restpos/d/jf;->a:Lcom/aadhk/restpos/d/it;

    invoke-static {v0}, Lcom/aadhk/restpos/d/it;->b(Lcom/aadhk/restpos/d/it;)Lcom/aadhk/restpos/SettingActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/d/jf;->a:Lcom/aadhk/restpos/d/it;

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
