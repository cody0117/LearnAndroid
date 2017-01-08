.class final Lcom/google/android/a/a/k;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/a/a/i;

.field private final synthetic b:I

.field private final synthetic c:Ljava/lang/String;

.field private final synthetic d:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/a/a/i;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/a/a/k;->a:Lcom/google/android/a/a/i;

    iput p2, p0, Lcom/google/android/a/a/k;->b:I

    iput-object p3, p0, Lcom/google/android/a/a/k;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/a/a/k;->d:Ljava/lang/String;

    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 222
    iget-object v0, p0, Lcom/google/android/a/a/k;->a:Lcom/google/android/a/a/i;

    invoke-static {v0}, Lcom/google/android/a/a/i;->c(Lcom/google/android/a/a/i;)Lcom/google/android/a/a/h;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/a/a/h;->b(Lcom/google/android/a/a/h;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/a/a/k;->a:Lcom/google/android/a/a/i;

    invoke-static {v1}, Lcom/google/android/a/a/i;->a(Lcom/google/android/a/a/i;)Lcom/google/android/a/a/m;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/google/android/a/a/k;->a:Lcom/google/android/a/a/i;

    invoke-static {v0}, Lcom/google/android/a/a/i;->b(Lcom/google/android/a/a/i;)V

    .line 226
    iget-object v0, p0, Lcom/google/android/a/a/k;->a:Lcom/google/android/a/a/i;

    invoke-static {v0}, Lcom/google/android/a/a/i;->a(Lcom/google/android/a/a/i;)Lcom/google/android/a/a/m;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/a/a/k;->a:Lcom/google/android/a/a/i;

    invoke-static {v1}, Lcom/google/android/a/a/i;->c(Lcom/google/android/a/a/i;)Lcom/google/android/a/a/h;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/a/a/h;->c(Lcom/google/android/a/a/h;)Ljava/security/PublicKey;

    move-result-object v1

    iget v2, p0, Lcom/google/android/a/a/k;->b:I

    iget-object v3, p0, Lcom/google/android/a/a/k;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/a/a/k;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/a/a/m;->a(Ljava/security/PublicKey;ILjava/lang/String;Ljava/lang/String;)V

    .line 227
    iget-object v0, p0, Lcom/google/android/a/a/k;->a:Lcom/google/android/a/a/i;

    invoke-static {v0}, Lcom/google/android/a/a/i;->c(Lcom/google/android/a/a/i;)Lcom/google/android/a/a/h;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/a/a/k;->a:Lcom/google/android/a/a/i;

    invoke-static {v1}, Lcom/google/android/a/a/i;->a(Lcom/google/android/a/a/i;)Lcom/google/android/a/a/m;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/a/a/h;->b(Lcom/google/android/a/a/h;Lcom/google/android/a/a/m;)V

    .line 259
    :cond_0
    return-void
.end method
