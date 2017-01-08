.class public final Lcom/aadhk/restpos/util/l;
.super Ljava/lang/Object;
.source "ProGuard"


# direct methods
.method public static a(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 69
    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 70
    const-string v0, "zh_TW"

    .line 96
    :goto_0
    return-object v0

    .line 71
    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    .line 72
    const-string v0, "es_ES"

    goto :goto_0

    .line 73
    :cond_1
    const/4 v0, 0x3

    if-ne p0, v0, :cond_2

    .line 74
    const-string v0, "it_IT"

    goto :goto_0

    .line 75
    :cond_2
    const/4 v0, 0x4

    if-ne p0, v0, :cond_3

    .line 76
    const-string v0, "de_DE"

    goto :goto_0

    .line 77
    :cond_3
    const/4 v0, 0x5

    if-ne p0, v0, :cond_4

    .line 78
    const-string v0, "el_GR"

    goto :goto_0

    .line 79
    :cond_4
    const/16 v0, 0xa

    if-ne p0, v0, :cond_5

    .line 80
    const-string v0, "hu_HU"

    goto :goto_0

    .line 81
    :cond_5
    const/4 v0, 0x7

    if-ne p0, v0, :cond_6

    .line 82
    const-string v0, "fr_FR"

    goto :goto_0

    .line 83
    :cond_6
    const/16 v0, 0x9

    if-ne p0, v0, :cond_7

    .line 84
    const-string v0, "nl_NL"

    goto :goto_0

    .line 85
    :cond_7
    const/4 v0, 0x6

    if-ne p0, v0, :cond_8

    .line 86
    const-string v0, "zh_CN"

    goto :goto_0

    .line 87
    :cond_8
    const/16 v0, 0x8

    if-ne p0, v0, :cond_9

    .line 88
    const-string v0, "pt_BR"

    goto :goto_0

    .line 89
    :cond_9
    const/16 v0, 0xb

    if-ne p0, v0, :cond_a

    .line 90
    const-string v0, "in_IN"

    goto :goto_0

    .line 91
    :cond_a
    const/16 v0, 0xc

    if-ne p0, v0, :cond_b

    .line 92
    const-string v0, "ru_RU"

    goto :goto_0

    .line 96
    :cond_b
    const-string v0, "en_US"

    goto :goto_0
.end method
