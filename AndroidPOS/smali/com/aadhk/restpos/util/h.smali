.class public final Lcom/aadhk/restpos/util/h;
.super Ljava/lang/Object;
.source "ProGuard"


# direct methods
.method public static a(Landroid/content/Context;)Ljava/util/List;
    .locals 5
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
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 148
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 149
    new-instance v1, Lcom/aadhk/restpos/bean/User;

    invoke-direct {v1}, Lcom/aadhk/restpos/bean/User;-><init>()V

    .line 157
    new-instance v1, Lcom/aadhk/restpos/bean/User;

    invoke-direct {v1}, Lcom/aadhk/restpos/bean/User;-><init>()V

    .line 158
    invoke-virtual {v1, v4}, Lcom/aadhk/restpos/bean/User;->setId(I)V

    .line 159
    const v2, 0x7f080336

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/aadhk/restpos/bean/User;->setAccount(Ljava/lang/String;)V

    .line 160
    const-string v2, "123456"

    invoke-virtual {v1, v2}, Lcom/aadhk/restpos/bean/User;->setPassword(Ljava/lang/String;)V

    .line 161
    invoke-virtual {v1, v3}, Lcom/aadhk/restpos/bean/User;->setRole(I)V

    .line 162
    invoke-virtual {v1, v3}, Lcom/aadhk/restpos/bean/User;->setEnable(Z)V

    .line 163
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    new-instance v1, Lcom/aadhk/restpos/bean/User;

    invoke-direct {v1}, Lcom/aadhk/restpos/bean/User;-><init>()V

    .line 166
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/aadhk/restpos/bean/User;->setId(I)V

    .line 167
    const v2, 0x7f080337

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/aadhk/restpos/bean/User;->setAccount(Ljava/lang/String;)V

    .line 168
    const-string v2, "234567"

    invoke-virtual {v1, v2}, Lcom/aadhk/restpos/bean/User;->setPassword(Ljava/lang/String;)V

    .line 169
    invoke-virtual {v1, v4}, Lcom/aadhk/restpos/bean/User;->setRole(I)V

    .line 170
    invoke-virtual {v1, v3}, Lcom/aadhk/restpos/bean/User;->setEnable(Z)V

    .line 171
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    return-object v0
.end method
