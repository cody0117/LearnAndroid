.class final Lcom/aadhk/restpos/c/bg;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/c/be;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/c/be;)V
    .locals 0
    .parameter

    .prologue
    .line 167
    iput-object p1, p0, Lcom/aadhk/restpos/c/bg;->a:Lcom/aadhk/restpos/c/be;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 169
    if-nez p2, :cond_0

    .line 170
    iget-object v0, p0, Lcom/aadhk/restpos/c/bg;->a:Lcom/aadhk/restpos/c/be;

    invoke-static {v0}, Lcom/aadhk/restpos/c/be;->a(Lcom/aadhk/restpos/c/be;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 171
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 172
    iget-object v1, p0, Lcom/aadhk/restpos/c/bg;->a:Lcom/aadhk/restpos/c/be;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/aadhk/restpos/c/be;->a(Lcom/aadhk/restpos/c/be;D)D

    .line 173
    iget-object v0, p0, Lcom/aadhk/restpos/c/bg;->a:Lcom/aadhk/restpos/c/be;

    invoke-static {v0}, Lcom/aadhk/restpos/c/be;->d(Lcom/aadhk/restpos/c/be;)Landroid/widget/EditText;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/aadhk/restpos/c/bg;->a:Lcom/aadhk/restpos/c/be;

    invoke-static {v2}, Lcom/aadhk/restpos/c/be;->b(Lcom/aadhk/restpos/c/be;)D

    move-result-wide v2

    iget-object v4, p0, Lcom/aadhk/restpos/c/bg;->a:Lcom/aadhk/restpos/c/be;

    invoke-static {v4}, Lcom/aadhk/restpos/c/be;->c(Lcom/aadhk/restpos/c/be;)D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lcom/aadhk/restpos/f/h;->b(DD)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 176
    :cond_0
    return-void
.end method
