.class public final Lcom/aadhk/restpos/util/k;
.super Ljava/lang/Object;
.source "ProGuard"


# direct methods
.method public static a(Landroid/graphics/Bitmap;Ljava/lang/String;)Ljava/io/File;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 213
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 215
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 217
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 219
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 220
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 221
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 222
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 223
    return-object v1
.end method
