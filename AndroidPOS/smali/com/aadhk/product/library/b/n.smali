.class public final Lcom/aadhk/product/library/b/n;
.super Landroid/app/Dialog;
.source "ProGuard"


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 43
    sget v0, Lcom/aadhk/product/library/e;->a:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 45
    return-void
.end method

.method public static a(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)Lcom/aadhk/product/library/b/n;
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x2

    .line 26
    new-instance v1, Lcom/aadhk/product/library/b/n;

    invoke-direct {v1, p0}, Lcom/aadhk/product/library/b/n;-><init>(Landroid/content/Context;)V

    .line 27
    invoke-virtual {v1, v4}, Lcom/aadhk/product/library/b/n;->setTitle(Ljava/lang/CharSequence;)V

    .line 28
    invoke-virtual {v1, p1}, Lcom/aadhk/product/library/b/n;->setCancelable(Z)V

    .line 29
    invoke-virtual {v1, p2}, Lcom/aadhk/product/library/b/n;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 32
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 33
    sget v2, Lcom/aadhk/product/library/c;->a:I

    invoke-virtual {v0, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    .line 36
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Lcom/aadhk/product/library/b/n;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 37
    invoke-virtual {v1}, Lcom/aadhk/product/library/b/n;->show()V

    .line 39
    return-object v1
.end method
