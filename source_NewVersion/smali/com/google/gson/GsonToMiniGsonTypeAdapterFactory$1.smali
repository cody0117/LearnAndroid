.class Lcom/google/gson/GsonToMiniGsonTypeAdapterFactory$1;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/google/gson/JsonDeserializationContext;


# instance fields
.field final synthetic this$0:Lcom/google/gson/GsonToMiniGsonTypeAdapterFactory;

.field final synthetic val$gson:Lcom/google/gson/Gson;


# direct methods
.method constructor <init>(Lcom/google/gson/GsonToMiniGsonTypeAdapterFactory;Lcom/google/gson/Gson;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 41
    iput-object p1, p0, Lcom/google/gson/GsonToMiniGsonTypeAdapterFactory$1;->this$0:Lcom/google/gson/GsonToMiniGsonTypeAdapterFactory;

    iput-object p2, p0, Lcom/google/gson/GsonToMiniGsonTypeAdapterFactory$1;->val$gson:Lcom/google/gson/Gson;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/gson/JsonElement;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/gson/GsonToMiniGsonTypeAdapterFactory$1;->val$gson:Lcom/google/gson/Gson;

    invoke-virtual {v0, p1, p2}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
