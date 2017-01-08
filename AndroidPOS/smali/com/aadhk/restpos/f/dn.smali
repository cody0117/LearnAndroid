.class final Lcom/aadhk/restpos/f/dn;
.super Lcom/google/gson/reflect/TypeToken;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/reflect/TypeToken",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/aadhk/restpos/bean/Note;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/f/dl;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/f/dl;)V
    .locals 0
    .parameter

    .prologue
    .line 85
    iput-object p1, p0, Lcom/aadhk/restpos/f/dn;->a:Lcom/aadhk/restpos/f/dl;

    invoke-direct {p0}, Lcom/google/gson/reflect/TypeToken;-><init>()V

    return-void
.end method
