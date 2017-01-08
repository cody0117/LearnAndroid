.class public final Lcom/aadhk/restpos/e/e;
.super Ljava/lang/Object;
.source "ProGuard"


# direct methods
.method public static a(Ljava/lang/Throwable;)I
    .locals 4
    .parameter

    .prologue
    .line 12
    const/4 v0, 0x0

    .line 13
    const v1, 0x7f0901fc

    .line 15
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_7

    const/4 v2, 0x5

    if-ge v0, v2, :cond_7

    .line 16
    add-int/lit8 v0, v0, 0x1

    .line 18
    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    .line 20
    const-string v3, "No route to host"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 21
    const v0, 0x7f0901fd

    .line 56
    :goto_0
    return v0

    .line 25
    :cond_1
    const-string v3, "Network is unreachable"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 26
    const v0, 0x7f0901fe

    .line 27
    goto :goto_0

    .line 30
    :cond_2
    const-string v3, "Connection reset by peer"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 31
    const v0, 0x7f090200

    .line 32
    goto :goto_0

    .line 35
    :cond_3
    const-string v3, "Connection refused"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 36
    const v0, 0x7f0901ff

    .line 37
    goto :goto_0

    .line 40
    :cond_4
    const-string v3, "ConnectTimeoutException"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 41
    const v0, 0x7f090201

    .line 42
    goto :goto_0

    .line 45
    :cond_5
    const-string v3, "SocketTimeoutException"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 46
    const v0, 0x7f090202

    .line 47
    goto :goto_0

    .line 50
    :cond_6
    const-string v3, "SocketTimeoutException"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 51
    const v0, 0x7f09016a

    .line 52
    goto :goto_0

    :cond_7
    move v0, v1

    goto :goto_0
.end method
