.class final Lcom/aadhk/restpos/c/bq;
.super Landroid/os/Handler;
.source "ProGuard"


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/c/bn;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/c/bn;)V
    .locals 0
    .parameter

    .prologue
    .line 150
    iput-object p1, p0, Lcom/aadhk/restpos/c/bq;->a:Lcom/aadhk/restpos/c/bn;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 153
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 154
    iget-object v0, p0, Lcom/aadhk/restpos/c/bq;->a:Lcom/aadhk/restpos/c/bn;

    invoke-static {v0}, Lcom/aadhk/restpos/c/bn;->e(Lcom/aadhk/restpos/c/bn;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 155
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    .line 156
    iget-object v0, p0, Lcom/aadhk/restpos/c/bq;->a:Lcom/aadhk/restpos/c/bn;

    iget-object v0, v0, Lcom/aadhk/restpos/c/bn;->e:Landroid/content/Context;

    const v2, 0x7f0901ef

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 162
    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 155
    goto :goto_0

    .line 158
    :cond_1
    new-instance v0, Lcom/aadhk/restpos/c/ax;

    iget-object v1, p0, Lcom/aadhk/restpos/c/bq;->a:Lcom/aadhk/restpos/c/bn;

    iget-object v1, v1, Lcom/aadhk/restpos/c/bn;->e:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/aadhk/restpos/c/ax;-><init>(Landroid/content/Context;)V

    .line 159
    const v1, 0x7f0901f2

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/ax;->a(I)V

    .line 160
    invoke-virtual {v0}, Lcom/aadhk/restpos/c/ax;->show()V

    goto :goto_1
.end method
