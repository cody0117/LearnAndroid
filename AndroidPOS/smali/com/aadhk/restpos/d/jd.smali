.class final Lcom/aadhk/restpos/d/jd;
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

.field private c:Lcom/aadhk/restpos/bean/Company;

.field private d:I


# direct methods
.method public constructor <init>(Lcom/aadhk/restpos/d/it;Lcom/aadhk/restpos/bean/Company;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 868
    iput-object p1, p0, Lcom/aadhk/restpos/d/jd;->a:Lcom/aadhk/restpos/d/it;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 869
    iput-object p2, p0, Lcom/aadhk/restpos/d/jd;->c:Lcom/aadhk/restpos/bean/Company;

    .line 870
    iput p3, p0, Lcom/aadhk/restpos/d/jd;->d:I

    .line 871
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 875
    iget-object v0, p0, Lcom/aadhk/restpos/d/jd;->a:Lcom/aadhk/restpos/d/it;

    invoke-static {v0}, Lcom/aadhk/restpos/d/it;->a(Lcom/aadhk/restpos/d/it;)Lcom/aadhk/restpos/g/aa;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/d/jd;->c:Lcom/aadhk/restpos/bean/Company;

    iget v2, p0, Lcom/aadhk/restpos/d/jd;->d:I

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/restpos/g/aa;->a(Lcom/aadhk/restpos/bean/Company;I)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/jd;->b:Ljava/util/Map;

    .line 876
    return-void
.end method

.method public final b()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 880
    iget-object v0, p0, Lcom/aadhk/restpos/d/jd;->b:Ljava/util/Map;

    const-string v1, "serviceStatus"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 881
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 882
    iget v0, p0, Lcom/aadhk/restpos/d/jd;->d:I

    if-nez v0, :cond_1

    .line 883
    iget-object v0, p0, Lcom/aadhk/restpos/d/jd;->a:Lcom/aadhk/restpos/d/it;

    invoke-static {v0}, Lcom/aadhk/restpos/d/it;->i(Lcom/aadhk/restpos/d/it;)V

    .line 889
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/jd;->a:Lcom/aadhk/restpos/d/it;

    invoke-static {v0}, Lcom/aadhk/restpos/d/it;->b(Lcom/aadhk/restpos/d/it;)Lcom/aadhk/restpos/SettingActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/SettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/POSApp;

    iget-object v1, p0, Lcom/aadhk/restpos/d/jd;->c:Lcom/aadhk/restpos/bean/Company;

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/POSApp;->a(Lcom/aadhk/restpos/bean/Company;)V

    .line 898
    :goto_1
    return-void

    .line 884
    :cond_1
    iget v0, p0, Lcom/aadhk/restpos/d/jd;->d:I

    if-ne v0, v3, :cond_2

    .line 885
    iget-object v0, p0, Lcom/aadhk/restpos/d/jd;->a:Lcom/aadhk/restpos/d/it;

    invoke-static {v0}, Lcom/aadhk/restpos/d/it;->j(Lcom/aadhk/restpos/d/it;)V

    goto :goto_0

    .line 886
    :cond_2
    iget v0, p0, Lcom/aadhk/restpos/d/jd;->d:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 887
    iget-object v0, p0, Lcom/aadhk/restpos/d/jd;->a:Lcom/aadhk/restpos/d/it;

    invoke-static {v0}, Lcom/aadhk/restpos/d/it;->k(Lcom/aadhk/restpos/d/it;)V

    goto :goto_0

    .line 890
    :cond_3
    const-string v1, "10"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "11"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 891
    :cond_4
    iget-object v0, p0, Lcom/aadhk/restpos/d/jd;->a:Lcom/aadhk/restpos/d/it;

    invoke-static {v0}, Lcom/aadhk/restpos/d/it;->b(Lcom/aadhk/restpos/d/it;)Lcom/aadhk/restpos/SettingActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/aadhk/restpos/util/q;->a(Landroid/content/Context;)V

    .line 892
    iget-object v0, p0, Lcom/aadhk/restpos/d/jd;->a:Lcom/aadhk/restpos/d/it;

    invoke-static {v0}, Lcom/aadhk/restpos/d/it;->b(Lcom/aadhk/restpos/d/it;)Lcom/aadhk/restpos/SettingActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/d/jd;->a:Lcom/aadhk/restpos/d/it;

    invoke-static {v1}, Lcom/aadhk/restpos/d/it;->b(Lcom/aadhk/restpos/d/it;)Lcom/aadhk/restpos/SettingActivity;

    move-result-object v1

    const v2, 0x7f080246

    invoke-virtual {v1, v2}, Lcom/aadhk/restpos/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 893
    :cond_5
    const-string v1, "9"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 894
    iget-object v0, p0, Lcom/aadhk/restpos/d/jd;->a:Lcom/aadhk/restpos/d/it;

    invoke-static {v0}, Lcom/aadhk/restpos/d/it;->b(Lcom/aadhk/restpos/d/it;)Lcom/aadhk/restpos/SettingActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/d/jd;->a:Lcom/aadhk/restpos/d/it;

    invoke-static {v1}, Lcom/aadhk/restpos/d/it;->b(Lcom/aadhk/restpos/d/it;)Lcom/aadhk/restpos/SettingActivity;

    move-result-object v1

    const v2, 0x7f080248

    invoke-virtual {v1, v2}, Lcom/aadhk/restpos/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 896
    :cond_6
    iget-object v0, p0, Lcom/aadhk/restpos/d/jd;->a:Lcom/aadhk/restpos/d/it;

    invoke-static {v0}, Lcom/aadhk/restpos/d/it;->b(Lcom/aadhk/restpos/d/it;)Lcom/aadhk/restpos/SettingActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/d/jd;->a:Lcom/aadhk/restpos/d/it;

    invoke-static {v1}, Lcom/aadhk/restpos/d/it;->b(Lcom/aadhk/restpos/d/it;)Lcom/aadhk/restpos/SettingActivity;

    move-result-object v1

    const v2, 0x7f080247

    invoke-virtual {v1, v2}, Lcom/aadhk/restpos/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1
.end method
