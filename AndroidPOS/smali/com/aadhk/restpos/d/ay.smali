.class final Lcom/aadhk/restpos/d/ay;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/product/library/b/f;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/aadhk/restpos/d/av;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/d/av;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 97
    iput-object p1, p0, Lcom/aadhk/restpos/d/ay;->b:Lcom/aadhk/restpos/d/av;

    iput p2, p0, Lcom/aadhk/restpos/d/ay;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 100
    iget v0, p0, Lcom/aadhk/restpos/d/ay;->a:I

    if-ne v0, v3, :cond_1

    .line 101
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 102
    iget-object v1, p0, Lcom/aadhk/restpos/d/ay;->b:Lcom/aadhk/restpos/d/av;

    const v2, 0x7f0803ab

    invoke-virtual {v1, v2}, Lcom/aadhk/restpos/d/av;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 103
    iget-object v2, p0, Lcom/aadhk/restpos/d/ay;->b:Lcom/aadhk/restpos/d/av;

    invoke-static {v2}, Lcom/aadhk/restpos/d/av;->c(Lcom/aadhk/restpos/d/av;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 104
    iget-object v1, p0, Lcom/aadhk/restpos/d/ay;->b:Lcom/aadhk/restpos/d/av;

    invoke-static {v1}, Lcom/aadhk/restpos/d/av;->b(Lcom/aadhk/restpos/d/av;)Lcom/aadhk/restpos/util/r;

    move-result-object v1

    const-string v2, "fontSize"

    invoke-virtual {v1, v2, v0}, Lcom/aadhk/restpos/util/r;->a(Ljava/lang/String;I)V

    .line 111
    :cond_0
    :goto_0
    return-void

    .line 105
    :cond_1
    iget v0, p0, Lcom/aadhk/restpos/d/ay;->a:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 106
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 107
    iget-object v1, p0, Lcom/aadhk/restpos/d/ay;->b:Lcom/aadhk/restpos/d/av;

    const v2, 0x7f0803ad

    invoke-virtual {v1, v2}, Lcom/aadhk/restpos/d/av;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 108
    iget-object v2, p0, Lcom/aadhk/restpos/d/ay;->b:Lcom/aadhk/restpos/d/av;

    invoke-static {v2}, Lcom/aadhk/restpos/d/av;->d(Lcom/aadhk/restpos/d/av;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 109
    iget-object v1, p0, Lcom/aadhk/restpos/d/ay;->b:Lcom/aadhk/restpos/d/av;

    invoke-static {v1}, Lcom/aadhk/restpos/d/av;->b(Lcom/aadhk/restpos/d/av;)Lcom/aadhk/restpos/util/r;

    move-result-object v1

    const-string v2, "refresh"

    invoke-virtual {v1, v2, v0}, Lcom/aadhk/restpos/util/r;->a(Ljava/lang/String;I)V

    goto :goto_0
.end method
