.class final Lcom/google/gson/UpperCaseNamingPolicy;
.super Lcom/google/gson/RecursiveFieldNamingPolicy;
.source "ProGuard"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/google/gson/RecursiveFieldNamingPolicy;-><init>()V

    return-void
.end method


# virtual methods
.method protected final translateName(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/util/Collection;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/annotation/Annotation;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 46
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
