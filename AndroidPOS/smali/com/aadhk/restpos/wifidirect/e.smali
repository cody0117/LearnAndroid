.class final Lcom/aadhk/restpos/wifidirect/e;
.super Lcom/google/gson/reflect/TypeToken;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/reflect/TypeToken",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/aadhk/restpos/bean/Order;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/wifidirect/d;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/wifidirect/d;)V
    .locals 0
    .parameter

    .prologue
    .line 304
    iput-object p1, p0, Lcom/aadhk/restpos/wifidirect/e;->a:Lcom/aadhk/restpos/wifidirect/d;

    invoke-direct {p0}, Lcom/google/gson/reflect/TypeToken;-><init>()V

    return-void
.end method
