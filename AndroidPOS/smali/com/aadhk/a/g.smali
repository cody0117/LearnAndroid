.class final Lcom/aadhk/a/g;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/aadhk/a/f;

.field private final synthetic b:Lcom/aadhk/a/j;

.field private final synthetic c:Lcom/aadhk/a/k;

.field private final synthetic d:Lcom/aadhk/a/l;


# direct methods
.method constructor <init>(Lcom/aadhk/a/f;Lcom/aadhk/a/j;Lcom/aadhk/a/k;Lcom/aadhk/a/l;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/aadhk/a/g;->a:Lcom/aadhk/a/f;

    iput-object p2, p0, Lcom/aadhk/a/g;->b:Lcom/aadhk/a/j;

    iput-object p3, p0, Lcom/aadhk/a/g;->c:Lcom/aadhk/a/k;

    iput-object p4, p0, Lcom/aadhk/a/g;->d:Lcom/aadhk/a/l;

    .line 669
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 672
    iget-object v0, p0, Lcom/aadhk/a/g;->b:Lcom/aadhk/a/j;

    iget-object v1, p0, Lcom/aadhk/a/g;->c:Lcom/aadhk/a/k;

    iget-object v2, p0, Lcom/aadhk/a/g;->d:Lcom/aadhk/a/l;

    invoke-interface {v0, v1, v2}, Lcom/aadhk/a/j;->a(Lcom/aadhk/a/k;Lcom/aadhk/a/l;)V

    .line 673
    return-void
.end method
