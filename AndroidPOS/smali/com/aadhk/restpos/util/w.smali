.class public final Lcom/aadhk/restpos/util/w;
.super Ljava/lang/Object;
.source "ProGuard"


# direct methods
.method public static a(Landroid/widget/EditText;)V
    .locals 4
    .parameter

    .prologue
    .line 8
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/aadhk/restpos/util/p;->d(Ljava/lang/String;)D

    move-result-wide v0

    .line 9
    const-wide/high16 v2, 0x3ff0

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Lcom/aadhk/restpos/util/p;->c(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 10
    return-void
.end method

.method public static b(Landroid/widget/EditText;)V
    .locals 7
    .parameter

    .prologue
    const-wide/high16 v5, 0x3ff0

    const-wide/16 v0, 0x0

    .line 13
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/aadhk/restpos/util/p;->d(Ljava/lang/String;)D

    move-result-wide v2

    .line 14
    cmpg-double v4, v2, v0

    if-gtz v4, :cond_0

    .line 19
    :goto_0
    invoke-static {v0, v1}, Lcom/aadhk/restpos/util/p;->c(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 20
    return-void

    .line 16
    :cond_0
    cmpl-double v0, v2, v5

    if-lez v0, :cond_1

    .line 17
    sub-double v0, v2, v5

    goto :goto_0

    :cond_1
    move-wide v0, v2

    goto :goto_0
.end method
