.class Lcom/google/analytics/tracking/android/FutureApis;
.super Ljava/lang/Object;
.source "ProGuard"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method

.method static setOwnerOnlyReadWrite(Ljava/lang/String;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 39
    invoke-static {}, Lcom/google/analytics/tracking/android/FutureApis;->version()I

    move-result v2

    const/16 v3, 0x9

    if-ge v2, v3, :cond_0

    .line 53
    :goto_0
    return v0

    .line 43
    :cond_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 47
    invoke-virtual {v2, v0, v0}, Ljava/io/File;->setReadable(ZZ)Z

    .line 48
    invoke-virtual {v2, v0, v0}, Ljava/io/File;->setWritable(ZZ)Z

    .line 51
    invoke-virtual {v2, v1, v1}, Ljava/io/File;->setReadable(ZZ)Z

    .line 52
    invoke-virtual {v2, v1, v1}, Ljava/io/File;->setWritable(ZZ)Z

    move v0, v1

    .line 53
    goto :goto_0
.end method

.method public static version()I
    .locals 2

    .prologue
    .line 26
    :try_start_0
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 31
    :goto_0
    return v0

    .line 28
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid version number: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/analytics/tracking/android/Log;->e(Ljava/lang/String;)I

    .line 29
    const/4 v0, 0x0

    goto :goto_0
.end method
