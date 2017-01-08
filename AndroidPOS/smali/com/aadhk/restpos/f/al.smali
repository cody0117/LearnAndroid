.class final Lcom/aadhk/restpos/f/al;
.super Lcom/google/gson/reflect/TypeToken;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/reflect/TypeToken",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/aadhk/restpos/bean/ModifierGroup;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/f/ai;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/f/ai;)V
    .locals 0
    .parameter

    .prologue
    .line 358
    iput-object p1, p0, Lcom/aadhk/restpos/f/al;->a:Lcom/aadhk/restpos/f/ai;

    invoke-direct {p0}, Lcom/google/gson/reflect/TypeToken;-><init>()V

    return-void
.end method
