.class final Lcom/aadhk/restpos/c/bt;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/product/library/b/f;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/c/bq;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/c/bq;)V
    .locals 0
    .parameter

    .prologue
    .line 133
    iput-object p1, p0, Lcom/aadhk/restpos/c/bt;->a:Lcom/aadhk/restpos/c/bq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 2
    .parameter

    .prologue
    .line 136
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 137
    iget-object v1, p0, Lcom/aadhk/restpos/c/bt;->a:Lcom/aadhk/restpos/c/bq;

    invoke-static {v1}, Lcom/aadhk/restpos/c/bq;->c(Lcom/aadhk/restpos/c/bq;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 138
    iget-object v1, p0, Lcom/aadhk/restpos/c/bt;->a:Lcom/aadhk/restpos/c/bq;

    invoke-static {v1, v0}, Lcom/aadhk/restpos/c/bq;->b(Lcom/aadhk/restpos/c/bq;Ljava/lang/String;)Ljava/lang/String;

    .line 139
    return-void
.end method
