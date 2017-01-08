.class public final Lcom/aadhk/restpos/g/u;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/aadhk/restpos/util/r;

.field private c:Lcom/aadhk/restpos/b/t;

.field private d:Lcom/aadhk/restpos/f/bw;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/aadhk/restpos/g/u;->a:Landroid/content/Context;

    .line 31
    new-instance v0, Lcom/aadhk/restpos/util/r;

    invoke-direct {v0, p1}, Lcom/aadhk/restpos/util/r;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/aadhk/restpos/g/u;->b:Lcom/aadhk/restpos/util/r;

    .line 32
    new-instance v0, Lcom/aadhk/restpos/f/bw;

    invoke-direct {v0, p1}, Lcom/aadhk/restpos/f/bw;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/aadhk/restpos/g/u;->d:Lcom/aadhk/restpos/f/bw;

    .line 33
    invoke-static {}, Lcom/aadhk/restpos/b/f;->a()Lcom/aadhk/restpos/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/b/f;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 34
    new-instance v1, Lcom/aadhk/restpos/b/t;

    invoke-direct {v1, v0}, Lcom/aadhk/restpos/b/t;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v1, p0, Lcom/aadhk/restpos/g/u;->c:Lcom/aadhk/restpos/b/t;

    .line 35
    return-void
.end method


# virtual methods
.method public final a()Lcom/aadhk/restpos/bean/POSPrinterSetting;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/aadhk/restpos/g/u;->c:Lcom/aadhk/restpos/b/t;

    invoke-virtual {v0}, Lcom/aadhk/restpos/b/t;->c()Lcom/aadhk/restpos/bean/POSPrinterSetting;

    move-result-object v0

    return-object v0
.end method

.method public final a(I)Ljava/util/Map;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 48
    iget-object v1, p0, Lcom/aadhk/restpos/g/u;->b:Lcom/aadhk/restpos/util/r;

    invoke-virtual {v1}, Lcom/aadhk/restpos/util/r;->v()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 49
    iget-object v0, p0, Lcom/aadhk/restpos/g/u;->d:Lcom/aadhk/restpos/f/bw;

    invoke-virtual {v0, p1}, Lcom/aadhk/restpos/f/bw;->a(I)Ljava/util/Map;

    move-result-object v0

    .line 55
    :goto_0
    return-object v0

    .line 51
    :cond_0
    iget-object v1, p0, Lcom/aadhk/restpos/g/u;->c:Lcom/aadhk/restpos/b/t;

    invoke-virtual {v1, p1}, Lcom/aadhk/restpos/b/t;->a(I)Lcom/aadhk/restpos/bean/POSPrinterSetting;

    move-result-object v1

    .line 52
    const-string v2, "serviceStatus"

    const-string v3, "1"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    const-string v2, "serviceData"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final a(ILjava/lang/String;)Ljava/util/Map;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 61
    iget-object v1, p0, Lcom/aadhk/restpos/g/u;->b:Lcom/aadhk/restpos/util/r;

    invoke-virtual {v1}, Lcom/aadhk/restpos/util/r;->v()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/aadhk/restpos/util/f;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/aadhk/product/library/c/f;->d(Ljava/lang/String;)[B

    move-result-object v0

    .line 63
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    .line 64
    iget-object v1, p0, Lcom/aadhk/restpos/g/u;->d:Lcom/aadhk/restpos/f/bw;

    invoke-virtual {v1, v0}, Lcom/aadhk/restpos/f/bw;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 65
    const-string v0, "serviceStatus"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 66
    const-string v2, "1"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/aadhk/restpos/g/u;->c:Lcom/aadhk/restpos/b/t;

    invoke-virtual {v0, p1, p2}, Lcom/aadhk/restpos/b/t;->a(ILjava/lang/String;)V

    :cond_0
    move-object v0, v1

    .line 73
    :goto_0
    return-object v0

    .line 70
    :cond_1
    iget-object v1, p0, Lcom/aadhk/restpos/g/u;->c:Lcom/aadhk/restpos/b/t;

    invoke-virtual {v1, p1, p2}, Lcom/aadhk/restpos/b/t;->a(ILjava/lang/String;)V

    .line 71
    const-string v1, "serviceStatus"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final a(Lcom/aadhk/restpos/bean/POSPrinterSetting;)Ljava/util/Map;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/aadhk/restpos/bean/POSPrinterSetting;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 77
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 78
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/aadhk/restpos/util/f;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/POSPrinterSetting;->getLogoName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 79
    iget-object v1, p0, Lcom/aadhk/restpos/g/u;->b:Lcom/aadhk/restpos/util/r;

    invoke-virtual {v1}, Lcom/aadhk/restpos/util/r;->v()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 80
    iget-object v0, p0, Lcom/aadhk/restpos/g/u;->d:Lcom/aadhk/restpos/f/bw;

    invoke-virtual {v0}, Lcom/aadhk/restpos/f/bw;->a()Ljava/util/Map;

    move-result-object v1

    .line 81
    const-string v0, "serviceStatus"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 82
    const-string v3, "1"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    const-string v0, "serviceData"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 85
    const/4 v3, 0x0

    :try_start_0
    invoke-static {v0, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 89
    const/4 v3, 0x0

    array-length v4, v0

    invoke-static {v0, v3, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 90
    invoke-static {v0, v2}, Lcom/aadhk/printer/b;->a(Landroid/graphics/Bitmap;Ljava/lang/String;)Ljava/io/File;

    .line 91
    const-string v0, "serviceData"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 100
    :goto_0
    return-object v0

    .line 92
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    move-object v0, v1

    .line 96
    goto :goto_0

    .line 97
    :cond_1
    const-string v1, "serviceData"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    const-string v1, "serviceStatus"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/POSPrinterSetting;",
            ">;"
        }
    .end annotation

    .prologue
    .line 43
    iget-object v0, p0, Lcom/aadhk/restpos/g/u;->c:Lcom/aadhk/restpos/b/t;

    invoke-virtual {v0}, Lcom/aadhk/restpos/b/t;->d()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final b(ILjava/lang/String;)Ljava/util/Map;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 104
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 105
    iget-object v1, p0, Lcom/aadhk/restpos/g/u;->b:Lcom/aadhk/restpos/util/r;

    invoke-virtual {v1}, Lcom/aadhk/restpos/util/r;->v()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 106
    iget-object v0, p0, Lcom/aadhk/restpos/g/u;->d:Lcom/aadhk/restpos/f/bw;

    invoke-virtual {v0}, Lcom/aadhk/restpos/f/bw;->b()Ljava/util/Map;

    move-result-object v1

    .line 107
    const-string v0, "serviceStatus"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 108
    const-string v2, "1"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/aadhk/restpos/g/u;->c:Lcom/aadhk/restpos/b/t;

    invoke-virtual {v0, p1, p2}, Lcom/aadhk/restpos/b/t;->a(ILjava/lang/String;)V

    :cond_0
    move-object v0, v1

    .line 115
    :goto_0
    return-object v0

    .line 112
    :cond_1
    iget-object v1, p0, Lcom/aadhk/restpos/g/u;->c:Lcom/aadhk/restpos/b/t;

    invoke-virtual {v1, p1, p2}, Lcom/aadhk/restpos/b/t;->a(ILjava/lang/String;)V

    .line 113
    const-string v1, "serviceStatus"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final b(Lcom/aadhk/restpos/bean/POSPrinterSetting;)Ljava/util/Map;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/aadhk/restpos/bean/POSPrinterSetting;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 120
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 121
    iget-object v1, p0, Lcom/aadhk/restpos/g/u;->b:Lcom/aadhk/restpos/util/r;

    invoke-virtual {v1}, Lcom/aadhk/restpos/util/r;->v()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 122
    iget-object v0, p0, Lcom/aadhk/restpos/g/u;->d:Lcom/aadhk/restpos/f/bw;

    invoke-virtual {v0, p1}, Lcom/aadhk/restpos/f/bw;->a(Lcom/aadhk/restpos/bean/POSPrinterSetting;)Ljava/util/Map;

    move-result-object v0

    .line 127
    :goto_0
    return-object v0

    .line 124
    :cond_0
    iget-object v1, p0, Lcom/aadhk/restpos/g/u;->c:Lcom/aadhk/restpos/b/t;

    invoke-virtual {v1, p1}, Lcom/aadhk/restpos/b/t;->d(Lcom/aadhk/restpos/bean/POSPrinterSetting;)V

    .line 125
    const-string v1, "serviceStatus"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final c(Lcom/aadhk/restpos/bean/POSPrinterSetting;)Ljava/util/Map;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/aadhk/restpos/bean/POSPrinterSetting;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 132
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 133
    iget-object v1, p0, Lcom/aadhk/restpos/g/u;->b:Lcom/aadhk/restpos/util/r;

    invoke-virtual {v1}, Lcom/aadhk/restpos/util/r;->v()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 134
    iget-object v0, p0, Lcom/aadhk/restpos/g/u;->d:Lcom/aadhk/restpos/f/bw;

    invoke-virtual {v0, p1}, Lcom/aadhk/restpos/f/bw;->a(Lcom/aadhk/restpos/bean/POSPrinterSetting;)Ljava/util/Map;

    move-result-object v0

    .line 139
    :goto_0
    return-object v0

    .line 136
    :cond_0
    iget-object v1, p0, Lcom/aadhk/restpos/g/u;->c:Lcom/aadhk/restpos/b/t;

    invoke-virtual {v1, p1}, Lcom/aadhk/restpos/b/t;->b(Lcom/aadhk/restpos/bean/POSPrinterSetting;)V

    .line 137
    const-string v1, "serviceStatus"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final d(Lcom/aadhk/restpos/bean/POSPrinterSetting;)Ljava/util/Map;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/aadhk/restpos/bean/POSPrinterSetting;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 144
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 145
    iget-object v1, p0, Lcom/aadhk/restpos/g/u;->b:Lcom/aadhk/restpos/util/r;

    invoke-virtual {v1}, Lcom/aadhk/restpos/util/r;->v()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 146
    iget-object v0, p0, Lcom/aadhk/restpos/g/u;->d:Lcom/aadhk/restpos/f/bw;

    invoke-virtual {v0, p1}, Lcom/aadhk/restpos/f/bw;->a(Lcom/aadhk/restpos/bean/POSPrinterSetting;)Ljava/util/Map;

    move-result-object v0

    .line 151
    :goto_0
    return-object v0

    .line 148
    :cond_0
    iget-object v1, p0, Lcom/aadhk/restpos/g/u;->c:Lcom/aadhk/restpos/b/t;

    invoke-virtual {v1, p1}, Lcom/aadhk/restpos/b/t;->c(Lcom/aadhk/restpos/bean/POSPrinterSetting;)V

    .line 149
    const-string v1, "serviceStatus"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final e(Lcom/aadhk/restpos/bean/POSPrinterSetting;)Ljava/util/Map;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/aadhk/restpos/bean/POSPrinterSetting;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 156
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 157
    iget-object v1, p0, Lcom/aadhk/restpos/g/u;->b:Lcom/aadhk/restpos/util/r;

    invoke-virtual {v1}, Lcom/aadhk/restpos/util/r;->v()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 158
    iget-object v0, p0, Lcom/aadhk/restpos/g/u;->d:Lcom/aadhk/restpos/f/bw;

    invoke-virtual {v0, p1}, Lcom/aadhk/restpos/f/bw;->a(Lcom/aadhk/restpos/bean/POSPrinterSetting;)Ljava/util/Map;

    move-result-object v0

    .line 163
    :goto_0
    return-object v0

    .line 160
    :cond_0
    iget-object v1, p0, Lcom/aadhk/restpos/g/u;->c:Lcom/aadhk/restpos/b/t;

    invoke-virtual {v1, p1}, Lcom/aadhk/restpos/b/t;->a(Lcom/aadhk/restpos/bean/POSPrinterSetting;)V

    .line 161
    const-string v1, "serviceStatus"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
