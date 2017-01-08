.class public final Lcom/aadhk/restpos/e/f;
.super Ljava/lang/Object;
.source "ProGuard"


# direct methods
.method public static a(Ljava/lang/Throwable;)I
    .locals 4
    .parameter

    .prologue
    .line 10
    const/4 v0, 0x0

    .line 11
    const v1, 0x7f08023a

    .line 13
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_7

    const/4 v2, 0x5

    if-ge v0, v2, :cond_7

    .line 14
    add-int/lit8 v0, v0, 0x1

    .line 16
    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    .line 18
    const-string v3, "No route to host"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 19
    const v0, 0x7f08023b

    .line 54
    :goto_0
    return v0

    .line 23
    :cond_1
    const-string v3, "Network is unreachable"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 24
    const v0, 0x7f08023c

    .line 25
    goto :goto_0

    .line 28
    :cond_2
    const-string v3, "Connection reset by peer"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 29
    const v0, 0x7f08023e

    .line 30
    goto :goto_0

    .line 33
    :cond_3
    const-string v3, "Connection refused"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 34
    const v0, 0x7f08023d

    .line 35
    goto :goto_0

    .line 38
    :cond_4
    const-string v3, "ConnectTimeoutException"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 39
    const v0, 0x7f08023f

    .line 40
    goto :goto_0

    .line 43
    :cond_5
    const-string v3, "SocketTimeoutException"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 44
    const v0, 0x7f080240

    .line 45
    goto :goto_0

    .line 48
    :cond_6
    const-string v3, "SocketTimeoutException"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 49
    const v0, 0x7f080199

    .line 50
    goto :goto_0

    :cond_7
    move v0, v1

    goto :goto_0
.end method
