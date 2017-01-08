.class public final Lcom/aadhk/restpos/util/r;
.super Lcom/aadhk/product/library/c/b;
.source "ProGuard"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/aadhk/product/library/c/b;-><init>(Landroid/content/Context;)V

    .line 13
    return-void
.end method


# virtual methods
.method public final A()Z
    .locals 3

    .prologue
    .line 150
    iget-object v0, p0, Lcom/aadhk/restpos/util/r;->a:Landroid/content/SharedPreferences;

    const-string v1, "prefDisplayWaiterName"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final B()Z
    .locals 3

    .prologue
    .line 154
    iget-object v0, p0, Lcom/aadhk/restpos/util/r;->a:Landroid/content/SharedPreferences;

    const-string v1, "prefDisplayOrderNumber"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final C()Z
    .locals 3

    .prologue
    .line 158
    iget-object v0, p0, Lcom/aadhk/restpos/util/r;->a:Landroid/content/SharedPreferences;

    const-string v1, "prefDisplayTaxNumber"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final D()Z
    .locals 3

    .prologue
    .line 162
    iget-object v0, p0, Lcom/aadhk/restpos/util/r;->a:Landroid/content/SharedPreferences;

    const-string v1, "prefDisplayOrderTime"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final E()Z
    .locals 3

    .prologue
    .line 166
    iget-object v0, p0, Lcom/aadhk/restpos/util/r;->a:Landroid/content/SharedPreferences;

    const-string v1, "prefDisplayEnableTip"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final F()I
    .locals 3

    .prologue
    .line 171
    iget-object v0, p0, Lcom/aadhk/restpos/util/r;->a:Landroid/content/SharedPreferences;

    const-string v1, "redMinutes"

    const/16 v2, 0xf

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final G()I
    .locals 3

    .prologue
    .line 175
    iget-object v0, p0, Lcom/aadhk/restpos/util/r;->a:Landroid/content/SharedPreferences;

    const-string v1, "greenMinutes"

    const/16 v2, 0xa

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final H()I
    .locals 3

    .prologue
    .line 179
    iget-object v0, p0, Lcom/aadhk/restpos/util/r;->a:Landroid/content/SharedPreferences;

    const-string v1, "yellowMinutes"

    const/4 v2, 0x5

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final I()I
    .locals 3

    .prologue
    .line 187
    iget-object v0, p0, Lcom/aadhk/restpos/util/r;->a:Landroid/content/SharedPreferences;

    const-string v1, "fontSize"

    const/16 v2, 0x16

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final J()I
    .locals 3

    .prologue
    .line 191
    iget-object v0, p0, Lcom/aadhk/restpos/util/r;->a:Landroid/content/SharedPreferences;

    const-string v1, "refresh"

    const/16 v2, 0x1388

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final a(Lcom/aadhk/restpos/bean/License;)V
    .locals 3
    .parameter

    .prologue
    .line 119
    iget-object v0, p0, Lcom/aadhk/restpos/util/r;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 120
    const-string v1, "licenseActivationKey"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/License;->getActivationKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 121
    const-string v1, "licenseDeviceNumber"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/License;->getSerialNumber()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 122
    const-string v1, "licenseUserName"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/License;->getUserName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 123
    const-string v1, "licensePhone"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/License;->getPhone()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 124
    const-string v1, "licenseEmail"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/License;->getEmail()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 125
    const-string v1, "licenseItemId"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/License;->getItem()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 126
    const-string v1, "licenseInstalledDate"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/License;->getInstalledDate()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 127
    const-string v1, "licenseDeviceModel"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/License;->getDeviceModel()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 128
    const-string v1, "licenseDeviceLocale"

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/License;->getLocale()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 129
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 130
    return-void
.end method

.method public final b(Ljava/lang/String;)Z
    .locals 2
    .parameter

    .prologue
    .line 92
    iget-object v0, p0, Lcom/aadhk/restpos/util/r;->a:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final d()Ljava/lang/String;
    .locals 3

    .prologue
    .line 207
    iget-object v0, p0, Lcom/aadhk/restpos/util/r;->a:Landroid/content/SharedPreferences;

    const-string v1, "prefTimeFormat24"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    const-string v0, "HH:mm"

    .line 210
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "hh:mm a"

    goto :goto_0
.end method

.method public final i()Z
    .locals 3

    .prologue
    .line 20
    iget-object v0, p0, Lcom/aadhk/restpos/util/r;->a:Landroid/content/SharedPreferences;

    const-string v1, "prefOrderingOption"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final j()Z
    .locals 3

    .prologue
    .line 28
    iget-object v0, p0, Lcom/aadhk/restpos/util/r;->a:Landroid/content/SharedPreferences;

    const-string v1, "showDefaultAccount"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final k()Z
    .locals 3

    .prologue
    .line 32
    iget-object v0, p0, Lcom/aadhk/restpos/util/r;->a:Landroid/content/SharedPreferences;

    const-string v1, "prefPrintVoidOrderItem"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final l()Z
    .locals 3

    .prologue
    .line 36
    iget-object v0, p0, Lcom/aadhk/restpos/util/r;->a:Landroid/content/SharedPreferences;

    const-string v1, "prefShowVoidOrderItem"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final m()Z
    .locals 3

    .prologue
    .line 40
    iget-object v0, p0, Lcom/aadhk/restpos/util/r;->a:Landroid/content/SharedPreferences;

    const-string v1, "prefReceiptItemSort"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final n()I
    .locals 3

    .prologue
    .line 44
    iget-object v0, p0, Lcom/aadhk/restpos/util/r;->a:Landroid/content/SharedPreferences;

    const-string v1, "prefTableDefaultPersonNum"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final o()I
    .locals 3

    .prologue
    .line 48
    iget-object v0, p0, Lcom/aadhk/restpos/util/r;->a:Landroid/content/SharedPreferences;

    const-string v1, "prefItemFontSize"

    const/16 v2, 0x10

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final p()Ljava/lang/String;
    .locals 3

    .prologue
    .line 60
    iget-object v0, p0, Lcom/aadhk/restpos/util/r;->a:Landroid/content/SharedPreferences;

    const-string v1, "pref_user_password"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final q()Z
    .locals 3

    .prologue
    .line 64
    iget-object v0, p0, Lcom/aadhk/restpos/util/r;->a:Landroid/content/SharedPreferences;

    const-string v1, "prefRememeberPassword"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final r()Ljava/lang/String;
    .locals 3

    .prologue
    .line 68
    iget-object v0, p0, Lcom/aadhk/restpos/util/r;->a:Landroid/content/SharedPreferences;

    const-string v1, "prefOrderNumPrefix"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final s()Ljava/lang/String;
    .locals 3

    .prologue
    .line 72
    iget-object v0, p0, Lcom/aadhk/restpos/util/r;->a:Landroid/content/SharedPreferences;

    const-string v1, "prefOrderNumInitial"

    const-string v2, "00001"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final t()Ljava/lang/String;
    .locals 3

    .prologue
    .line 76
    iget-object v0, p0, Lcom/aadhk/restpos/util/r;->a:Landroid/content/SharedPreferences;

    const-string v1, "prefOrderNumSuffix"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final u()Ljava/lang/String;
    .locals 3

    .prologue
    .line 80
    iget-object v0, p0, Lcom/aadhk/restpos/util/r;->a:Landroid/content/SharedPreferences;

    const-string v1, "prefOrderNum"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final v()Z
    .locals 3

    .prologue
    .line 104
    iget-object v0, p0, Lcom/aadhk/restpos/util/r;->a:Landroid/content/SharedPreferences;

    const-string v1, "enableServer"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final w()Ljava/lang/String;
    .locals 3

    .prologue
    .line 108
    iget-object v0, p0, Lcom/aadhk/restpos/util/r;->a:Landroid/content/SharedPreferences;

    const-string v1, "serverIp"

    const-string v2, "192.168.1.220"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final x()Ljava/lang/String;
    .locals 3

    .prologue
    .line 115
    iget-object v0, p0, Lcom/aadhk/restpos/util/r;->a:Landroid/content/SharedPreferences;

    const-string v1, "licenseInstalledDate"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final y()Lcom/aadhk/restpos/bean/License;
    .locals 4

    .prologue
    .line 133
    new-instance v0, Lcom/aadhk/restpos/bean/License;

    invoke-direct {v0}, Lcom/aadhk/restpos/bean/License;-><init>()V

    .line 134
    iget-object v1, p0, Lcom/aadhk/restpos/util/r;->a:Landroid/content/SharedPreferences;

    const-string v2, "licenseActivationKey"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/License;->setActivationKey(Ljava/lang/String;)V

    .line 135
    iget-object v1, p0, Lcom/aadhk/restpos/util/r;->a:Landroid/content/SharedPreferences;

    const-string v2, "licenseDeviceNumber"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/License;->setSerialNumber(Ljava/lang/String;)V

    .line 136
    iget-object v1, p0, Lcom/aadhk/restpos/util/r;->a:Landroid/content/SharedPreferences;

    const-string v2, "licenseUserName"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/License;->setUserName(Ljava/lang/String;)V

    .line 137
    iget-object v1, p0, Lcom/aadhk/restpos/util/r;->a:Landroid/content/SharedPreferences;

    const-string v2, "licensePhone"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/License;->setPhone(Ljava/lang/String;)V

    .line 138
    iget-object v1, p0, Lcom/aadhk/restpos/util/r;->a:Landroid/content/SharedPreferences;

    const-string v2, "licenseEmail"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/License;->setEmail(Ljava/lang/String;)V

    .line 139
    iget-object v1, p0, Lcom/aadhk/restpos/util/r;->a:Landroid/content/SharedPreferences;

    const-string v2, "licenseInstalledDate"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/License;->setInstalledDate(Ljava/lang/String;)V

    .line 140
    iget-object v1, p0, Lcom/aadhk/restpos/util/r;->a:Landroid/content/SharedPreferences;

    const-string v2, "licenseItemId"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/License;->setItem(Ljava/lang/String;)V

    .line 141
    iget-object v1, p0, Lcom/aadhk/restpos/util/r;->a:Landroid/content/SharedPreferences;

    const-string v2, "licenseDeviceModel"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/License;->setDeviceModel(Ljava/lang/String;)V

    .line 142
    iget-object v1, p0, Lcom/aadhk/restpos/util/r;->a:Landroid/content/SharedPreferences;

    const-string v2, "licenseDeviceLocale"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/License;->setLocale(Ljava/lang/String;)V

    .line 143
    return-object v0
.end method

.method public final z()Z
    .locals 3

    .prologue
    .line 147
    iget-object v0, p0, Lcom/aadhk/restpos/util/r;->a:Landroid/content/SharedPreferences;

    const-string v1, "prefDisplayTableName"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
