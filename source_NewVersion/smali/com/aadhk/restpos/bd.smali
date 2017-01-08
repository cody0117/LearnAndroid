.class final Lcom/aadhk/restpos/bd;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/product/library/b/f;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/aadhk/restpos/PayCloseOutActivity;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/PayCloseOutActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 249
    iput-object p1, p0, Lcom/aadhk/restpos/bd;->b:Lcom/aadhk/restpos/PayCloseOutActivity;

    iput p2, p0, Lcom/aadhk/restpos/bd;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 4
    .parameter

    .prologue
    .line 252
    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 253
    iget v2, p0, Lcom/aadhk/restpos/bd;->a:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 254
    iget-object v2, p0, Lcom/aadhk/restpos/bd;->b:Lcom/aadhk/restpos/PayCloseOutActivity;

    invoke-static {v2}, Lcom/aadhk/restpos/PayCloseOutActivity;->e(Lcom/aadhk/restpos/PayCloseOutActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-static {v0, v1}, Lcom/aadhk/product/library/c/h;->b(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 261
    :cond_0
    :goto_0
    return-void

    .line 255
    :cond_1
    iget v2, p0, Lcom/aadhk/restpos/bd;->a:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 256
    iget-object v2, p0, Lcom/aadhk/restpos/bd;->b:Lcom/aadhk/restpos/PayCloseOutActivity;

    invoke-static {v2}, Lcom/aadhk/restpos/PayCloseOutActivity;->f(Lcom/aadhk/restpos/PayCloseOutActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-static {v0, v1}, Lcom/aadhk/product/library/c/h;->b(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 257
    :cond_2
    iget v2, p0, Lcom/aadhk/restpos/bd;->a:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 258
    iget-object v2, p0, Lcom/aadhk/restpos/bd;->b:Lcom/aadhk/restpos/PayCloseOutActivity;

    invoke-static {v2}, Lcom/aadhk/restpos/PayCloseOutActivity;->g(Lcom/aadhk/restpos/PayCloseOutActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-static {v0, v1}, Lcom/aadhk/product/library/c/h;->b(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 259
    iget-object v0, p0, Lcom/aadhk/restpos/bd;->b:Lcom/aadhk/restpos/PayCloseOutActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/PayCloseOutActivity;->b(Lcom/aadhk/restpos/PayCloseOutActivity;)V

    goto :goto_0
.end method
