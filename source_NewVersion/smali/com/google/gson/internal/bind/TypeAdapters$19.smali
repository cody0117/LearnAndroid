.class Lcom/google/gson/internal/bind/TypeAdapters$19;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/google/gson/internal/bind/TypeAdapter$Factory;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 454
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lcom/google/gson/internal/bind/MiniGson;Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/internal/bind/TypeAdapter;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/gson/internal/bind/MiniGson;",
            "Lcom/google/gson/reflect/TypeToken",
            "<TT;>;)",
            "Lcom/google/gson/internal/bind/TypeAdapter",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 455
    invoke-virtual {p2}, Lcom/google/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/sql/Timestamp;

    if-eq v0, v1, :cond_0

    .line 456
    const/4 v0, 0x0

    .line 460
    :goto_0
    return-object v0

    .line 459
    :cond_0
    const-class v0, Ljava/util/Date;

    invoke-virtual {p1, v0}, Lcom/google/gson/internal/bind/MiniGson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/internal/bind/TypeAdapter;

    move-result-object v1

    .line 460
    new-instance v0, Lcom/google/gson/internal/bind/TypeAdapters$19$1;

    invoke-direct {v0, p0, v1}, Lcom/google/gson/internal/bind/TypeAdapters$19$1;-><init>(Lcom/google/gson/internal/bind/TypeAdapters$19;Lcom/google/gson/internal/bind/TypeAdapter;)V

    goto :goto_0
.end method
