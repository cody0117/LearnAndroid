.class public final Lcom/aadhk/product/library/c/d;
.super Ljava/lang/Object;
.source "ProGuard"


# direct methods
.method public static a(Ljava/lang/String;[Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<[",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 15
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 16
    const/16 v1, 0xef

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write(I)V

    .line 17
    const/16 v1, 0xbb

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write(I)V

    .line 18
    const/16 v1, 0xbf

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write(I)V

    .line 19
    new-instance v1, Lau/com/bytecode/opencsv/CSVWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    invoke-direct {v2, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v1, v2}, Lau/com/bytecode/opencsv/CSVWriter;-><init>(Ljava/io/Writer;)V

    .line 22
    invoke-virtual {v1, p1}, Lau/com/bytecode/opencsv/CSVWriter;->writeNext([Ljava/lang/String;)V

    .line 23
    invoke-virtual {v1, p2}, Lau/com/bytecode/opencsv/CSVWriter;->writeAll(Ljava/util/List;)V

    .line 24
    invoke-virtual {v1}, Lau/com/bytecode/opencsv/CSVWriter;->close()V

    .line 25
    return-void
.end method
