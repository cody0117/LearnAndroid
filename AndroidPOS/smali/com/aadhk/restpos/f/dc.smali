.class final Lcom/aadhk/restpos/f/dc;
.super Lcom/google/gson/reflect/TypeToken;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/reflect/TypeToken",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/aadhk/restpos/bean/SplitBill;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/f/da;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/f/da;)V
    .locals 0
    .parameter

    .prologue
    .line 173
    iput-object p1, p0, Lcom/aadhk/restpos/f/dc;->a:Lcom/aadhk/restpos/f/da;

    invoke-direct {p0}, Lcom/google/gson/reflect/TypeToken;-><init>()V

    return-void
.end method