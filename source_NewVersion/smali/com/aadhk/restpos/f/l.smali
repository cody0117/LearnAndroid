.class public final Lcom/aadhk/restpos/f/l;
.super Lcom/aadhk/product/library/c/b;
.source "ProGuard"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 10
    invoke-direct {p0, p1}, Lcom/aadhk/product/library/c/b;-><init>(Landroid/content/Context;)V

    .line 11
    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/aadhk/restpos/f/l;->a:Landroid/content/SharedPreferences;

    const-string v1, ""

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c(Ljava/lang/String;)Z
    .locals 2
    .parameter

    .prologue
    .line 82
    iget-object v0, p0, Lcom/aadhk/restpos/f/l;->a:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final h()Z
    .locals 3

    .prologue
    .line 18
    iget-object v0, p0, Lcom/aadhk/restpos/f/l;->a:Landroid/content/SharedPreferences;

    const-string v1, "prefOrderingOption"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final i()Z
    .locals 3

    .prologue
    .line 26
    iget-object v0, p0, Lcom/aadhk/restpos/f/l;->a:Landroid/content/SharedPreferences;

    const-string v1, "showDefaultAccount"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final j()Z
    .locals 3

    .prologue
    .line 30
    iget-object v0, p0, Lcom/aadhk/restpos/f/l;->a:Landroid/content/SharedPreferences;

    const-string v1, "prefPrintVoidOrderItem"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final k()Z
    .locals 3

    .prologue
    .line 34
    iget-object v0, p0, Lcom/aadhk/restpos/f/l;->a:Landroid/content/SharedPreferences;

    const-string v1, "prefShowVoidOrderItem"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final l()Z
    .locals 3

    .prologue
    .line 38
    iget-object v0, p0, Lcom/aadhk/restpos/f/l;->a:Landroid/content/SharedPreferences;

    const-string v1, "prefReceiptItemSort"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final m()Z
    .locals 3

    .prologue
    .line 42
    iget-object v0, p0, Lcom/aadhk/restpos/f/l;->a:Landroid/content/SharedPreferences;

    const-string v1, "prefTakeOutCharge"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final n()I
    .locals 3

    .prologue
    .line 46
    iget-object v0, p0, Lcom/aadhk/restpos/f/l;->a:Landroid/content/SharedPreferences;

    const-string v1, "prefTableDefaultPersonNum"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final o()Ljava/lang/String;
    .locals 3

    .prologue
    .line 54
    iget-object v0, p0, Lcom/aadhk/restpos/f/l;->a:Landroid/content/SharedPreferences;

    const-string v1, "pref_user_account"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final p()Z
    .locals 3

    .prologue
    .line 62
    iget-object v0, p0, Lcom/aadhk/restpos/f/l;->a:Landroid/content/SharedPreferences;

    const-string v1, "prefRememeberPassword"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final q()Ljava/lang/String;
    .locals 3

    .prologue
    .line 66
    iget-object v0, p0, Lcom/aadhk/restpos/f/l;->a:Landroid/content/SharedPreferences;

    const-string v1, "prefOrderNumInitial"

    const-string v2, "A-00001"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final r()Ljava/lang/String;
    .locals 3

    .prologue
    .line 70
    iget-object v0, p0, Lcom/aadhk/restpos/f/l;->a:Landroid/content/SharedPreferences;

    const-string v1, "prefOrderNum"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final s()I
    .locals 3

    .prologue
    .line 74
    iget-object v0, p0, Lcom/aadhk/restpos/f/l;->a:Landroid/content/SharedPreferences;

    const-string v1, "prefSessionPeriod"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final t()Z
    .locals 3

    .prologue
    .line 90
    iget-object v0, p0, Lcom/aadhk/restpos/f/l;->a:Landroid/content/SharedPreferences;

    const-string v1, "requireWifi"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
