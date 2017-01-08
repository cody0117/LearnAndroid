.class final Lcom/aadhk/product/library/a/b;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Lcom/aadhk/product/library/a/a;


# direct methods
.method constructor <init>(Lcom/aadhk/product/library/a/a;)V
    .locals 0
    .parameter

    .prologue
    .line 36
    iput-object p1, p0, Lcom/aadhk/product/library/a/b;->a:Lcom/aadhk/product/library/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/aadhk/product/library/a/b;->a:Lcom/aadhk/product/library/a/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/aadhk/product/library/a/a;->cancel(Z)Z

    .line 40
    return-void
.end method
