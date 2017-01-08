.class final Lcom/aadhk/restpos/c/bb;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/product/library/b/f;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/c/az;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/c/az;)V
    .locals 0
    .parameter

    .prologue
    .line 125
    iput-object p1, p0, Lcom/aadhk/restpos/c/bb;->a:Lcom/aadhk/restpos/c/az;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 3
    .parameter

    .prologue
    .line 128
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 129
    iget-object v1, p0, Lcom/aadhk/restpos/c/bb;->a:Lcom/aadhk/restpos/c/az;

    invoke-static {v1}, Lcom/aadhk/restpos/c/az;->b(Lcom/aadhk/restpos/c/az;)Landroid/widget/EditText;

    move-result-object v1

    iget-object v2, p0, Lcom/aadhk/restpos/c/bb;->a:Lcom/aadhk/restpos/c/az;

    invoke-static {v2}, Lcom/aadhk/restpos/c/az;->a(Lcom/aadhk/restpos/c/az;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/aadhk/restpos/f/i;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 130
    iget-object v1, p0, Lcom/aadhk/restpos/c/bb;->a:Lcom/aadhk/restpos/c/az;

    invoke-static {v1, v0}, Lcom/aadhk/restpos/c/az;->a(Lcom/aadhk/restpos/c/az;Ljava/lang/String;)Ljava/lang/String;

    .line 131
    return-void
.end method
