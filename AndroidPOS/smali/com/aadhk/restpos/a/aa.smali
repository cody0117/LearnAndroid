.class final Lcom/aadhk/restpos/a/aa;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/product/library/b/f;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/a/q;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/a/q;)V
    .locals 0
    .parameter

    .prologue
    .line 357
    iput-object p1, p0, Lcom/aadhk/restpos/a/aa;->a:Lcom/aadhk/restpos/a/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 1
    .parameter

    .prologue
    .line 360
    iget-object v0, p0, Lcom/aadhk/restpos/a/aa;->a:Lcom/aadhk/restpos/a/q;

    invoke-virtual {v0}, Lcom/aadhk/restpos/a/q;->notifyDataSetChanged()V

    .line 361
    return-void
.end method
