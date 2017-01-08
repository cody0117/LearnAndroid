.class final Lcom/google/android/a/a/j;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/a/a/i;


# direct methods
.method constructor <init>(Lcom/google/android/a/a/i;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/a/a/j;->a:Lcom/google/android/a/a/i;

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 204
    iget-object v0, p0, Lcom/google/android/a/a/j;->a:Lcom/google/android/a/a/i;

    invoke-static {v0}, Lcom/google/android/a/a/i;->c(Lcom/google/android/a/a/i;)Lcom/google/android/a/a/h;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/a/a/j;->a:Lcom/google/android/a/a/i;

    invoke-static {v1}, Lcom/google/android/a/a/i;->a(Lcom/google/android/a/a/i;)Lcom/google/android/a/a/m;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/a/a/h;->a(Lcom/google/android/a/a/h;Lcom/google/android/a/a/m;)V

    .line 206
    iget-object v0, p0, Lcom/google/android/a/a/j;->a:Lcom/google/android/a/a/i;

    invoke-static {v0}, Lcom/google/android/a/a/i;->c(Lcom/google/android/a/a/i;)Lcom/google/android/a/a/h;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/a/a/j;->a:Lcom/google/android/a/a/i;

    invoke-static {v1}, Lcom/google/android/a/a/i;->a(Lcom/google/android/a/a/i;)Lcom/google/android/a/a/m;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/a/a/h;->b(Lcom/google/android/a/a/h;Lcom/google/android/a/a/m;)V

    .line 207
    return-void
.end method
