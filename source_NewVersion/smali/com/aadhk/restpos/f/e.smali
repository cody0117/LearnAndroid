.class public final Lcom/aadhk/restpos/f/e;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/text/InputFilter;


# instance fields
.field private final a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .parameter

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput p1, p0, Lcom/aadhk/restpos/f/e;->a:I

    .line 21
    return-void
.end method


# virtual methods
.method public final filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 26
    const/4 v2, -0x1

    .line 27
    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result v3

    .line 28
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_4

    .line 29
    invoke-interface {p4, v1}, Landroid/text/Spanned;->charAt(I)C

    move-result v4

    .line 30
    const/16 v5, 0x2e

    if-eq v4, v5, :cond_0

    const/16 v5, 0x2c

    if-ne v4, v5, :cond_2

    .line 35
    :cond_0
    :goto_1
    if-lez v1, :cond_1

    .line 37
    if-gt p6, v1, :cond_3

    .line 45
    :cond_1
    :goto_2
    return-object v0

    .line 28
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 40
    :cond_3
    sub-int v1, v3, v1

    iget v2, p0, Lcom/aadhk/restpos/f/e;->a:I

    if-le v1, v2, :cond_1

    .line 41
    const-string v0, ""

    goto :goto_2

    :cond_4
    move v1, v2

    goto :goto_1
.end method
