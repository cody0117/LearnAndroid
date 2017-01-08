.class final Lcom/aadhk/restpos/ek;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/restpos/c/f;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/ej;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/ej;)V
    .locals 0
    .parameter

    .prologue
    .line 82
    iput-object p1, p0, Lcom/aadhk/restpos/ek;->a:Lcom/aadhk/restpos/ej;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 85
    new-instance v0, Lcom/aadhk/product/library/a/d;

    new-instance v1, Lcom/aadhk/restpos/en;

    iget-object v2, p0, Lcom/aadhk/restpos/ek;->a:Lcom/aadhk/restpos/ej;

    iget-object v2, v2, Lcom/aadhk/restpos/ej;->b:Lcom/aadhk/restpos/VoidReasonActivity;

    iget-object v3, p0, Lcom/aadhk/restpos/ek;->a:Lcom/aadhk/restpos/ej;

    iget-object v3, v3, Lcom/aadhk/restpos/ej;->a:Lcom/aadhk/restpos/bean/Note;

    invoke-virtual {v3}, Lcom/aadhk/restpos/bean/Note;->getId()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/aadhk/restpos/en;-><init>(Lcom/aadhk/restpos/VoidReasonActivity;I)V

    iget-object v2, p0, Lcom/aadhk/restpos/ek;->a:Lcom/aadhk/restpos/ej;

    iget-object v2, v2, Lcom/aadhk/restpos/ej;->b:Lcom/aadhk/restpos/VoidReasonActivity;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/aadhk/product/library/a/d;-><init>(Lcom/aadhk/product/library/a/c;Landroid/content/Context;B)V

    .line 86
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/product/library/a/d;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 87
    return-void
.end method
