.class Lcom/google/gson/internal/bind/MiniGson$FutureTypeAdapter;
.super Lcom/google/gson/internal/bind/TypeAdapter;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/gson/internal/bind/TypeAdapter",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private delegate:Lcom/google/gson/internal/bind/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/internal/bind/TypeAdapter",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/google/gson/internal/bind/TypeAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/stream/JsonReader;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 142
    iget-object v0, p0, Lcom/google/gson/internal/bind/MiniGson$FutureTypeAdapter;->delegate:Lcom/google/gson/internal/bind/TypeAdapter;

    if-nez v0, :cond_0

    .line 143
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/google/gson/internal/bind/MiniGson$FutureTypeAdapter;->delegate:Lcom/google/gson/internal/bind/TypeAdapter;

    invoke-virtual {v0, p1}, Lcom/google/gson/internal/bind/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public setDelegate(Lcom/google/gson/internal/bind/TypeAdapter;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/internal/bind/TypeAdapter",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 135
    iget-object v0, p0, Lcom/google/gson/internal/bind/MiniGson$FutureTypeAdapter;->delegate:Lcom/google/gson/internal/bind/TypeAdapter;

    if-eqz v0, :cond_0

    .line 136
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 138
    :cond_0
    iput-object p1, p0, Lcom/google/gson/internal/bind/MiniGson$FutureTypeAdapter;->delegate:Lcom/google/gson/internal/bind/TypeAdapter;

    .line 139
    return-void
.end method

.method public write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/stream/JsonWriter;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 149
    iget-object v0, p0, Lcom/google/gson/internal/bind/MiniGson$FutureTypeAdapter;->delegate:Lcom/google/gson/internal/bind/TypeAdapter;

    if-nez v0, :cond_0

    .line 150
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/google/gson/internal/bind/MiniGson$FutureTypeAdapter;->delegate:Lcom/google/gson/internal/bind/TypeAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/google/gson/internal/bind/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    .line 153
    return-void
.end method
