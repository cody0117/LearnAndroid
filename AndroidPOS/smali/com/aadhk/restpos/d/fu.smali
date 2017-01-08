.class final Lcom/aadhk/restpos/d/fu;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/product/library/b/f;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/d/fq;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/d/fq;)V
    .locals 0
    .parameter

    .prologue
    .line 335
    iput-object p1, p0, Lcom/aadhk/restpos/d/fu;->a:Lcom/aadhk/restpos/d/fq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 2
    .parameter

    .prologue
    .line 338
    iget-object v0, p0, Lcom/aadhk/restpos/d/fu;->a:Lcom/aadhk/restpos/d/fq;

    invoke-static {v0}, Lcom/aadhk/restpos/d/fq;->j(Lcom/aadhk/restpos/d/fq;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 339
    return-void
.end method
