.class final Lcom/aadhk/restpos/f/bt;
.super Lcom/google/gson/reflect/TypeToken;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/reflect/TypeToken",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/aadhk/restpos/bean/OrderItem;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/f/br;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/f/br;)V
    .locals 0
    .parameter

    .prologue
    .line 145
    iput-object p1, p0, Lcom/aadhk/restpos/f/bt;->a:Lcom/aadhk/restpos/f/br;

    invoke-direct {p0}, Lcom/google/gson/reflect/TypeToken;-><init>()V

    return-void
.end method
