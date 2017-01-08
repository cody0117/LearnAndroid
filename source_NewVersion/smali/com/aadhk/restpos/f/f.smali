.class public final Lcom/aadhk/restpos/f/f;
.super Ljava/lang/Object;
.source "ProGuard"


# direct methods
.method public static a(Landroid/content/Context;)Ljava/util/List;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/User;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 149
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 150
    new-instance v1, Lcom/aadhk/restpos/bean/User;

    invoke-direct {v1}, Lcom/aadhk/restpos/bean/User;-><init>()V

    .line 158
    new-instance v1, Lcom/aadhk/restpos/bean/User;

    invoke-direct {v1}, Lcom/aadhk/restpos/bean/User;-><init>()V

    .line 159
    invoke-virtual {v1, v4}, Lcom/aadhk/restpos/bean/User;->setId(I)V

    .line 160
    const v2, 0x7f0902d8

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/aadhk/restpos/bean/User;->setAccount(Ljava/lang/String;)V

    .line 161
    const-string v2, "123456"

    invoke-virtual {v1, v2}, Lcom/aadhk/restpos/bean/User;->setPassword(Ljava/lang/String;)V

    .line 162
    invoke-virtual {v1, v3}, Lcom/aadhk/restpos/bean/User;->setRole(I)V

    .line 163
    invoke-virtual {v1, v3}, Lcom/aadhk/restpos/bean/User;->setEnable(Z)V

    .line 164
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    new-instance v1, Lcom/aadhk/restpos/bean/User;

    invoke-direct {v1}, Lcom/aadhk/restpos/bean/User;-><init>()V

    .line 167
    invoke-virtual {v1, v5}, Lcom/aadhk/restpos/bean/User;->setId(I)V

    .line 168
    const v2, 0x7f0902d9

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/aadhk/restpos/bean/User;->setAccount(Ljava/lang/String;)V

    .line 169
    const-string v2, "123456"

    invoke-virtual {v1, v2}, Lcom/aadhk/restpos/bean/User;->setPassword(Ljava/lang/String;)V

    .line 170
    invoke-virtual {v1, v4}, Lcom/aadhk/restpos/bean/User;->setRole(I)V

    .line 171
    invoke-virtual {v1, v3}, Lcom/aadhk/restpos/bean/User;->setEnable(Z)V

    .line 172
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    new-instance v1, Lcom/aadhk/restpos/bean/User;

    invoke-direct {v1}, Lcom/aadhk/restpos/bean/User;-><init>()V

    .line 175
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/aadhk/restpos/bean/User;->setId(I)V

    .line 176
    const v2, 0x7f0902da

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/aadhk/restpos/bean/User;->setAccount(Ljava/lang/String;)V

    .line 177
    const-string v2, "123456"

    invoke-virtual {v1, v2}, Lcom/aadhk/restpos/bean/User;->setPassword(Ljava/lang/String;)V

    .line 178
    invoke-virtual {v1, v5}, Lcom/aadhk/restpos/bean/User;->setRole(I)V

    .line 179
    invoke-virtual {v1, v3}, Lcom/aadhk/restpos/bean/User;->setEnable(Z)V

    .line 180
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    return-object v0
.end method
