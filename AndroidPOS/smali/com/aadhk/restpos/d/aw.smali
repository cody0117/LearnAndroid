.class final Lcom/aadhk/restpos/d/aw;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/product/library/b/f;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/d/av;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/d/av;)V
    .locals 0
    .parameter

    .prologue
    .line 68
    iput-object p1, p0, Lcom/aadhk/restpos/d/aw;->a:Lcom/aadhk/restpos/d/av;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 9
    .parameter

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 71
    check-cast p1, Ljava/lang/String;

    .line 72
    const-string v0, "\\,"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 73
    aget-object v1, v0, v6

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 74
    aget-object v2, v0, v7

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 75
    aget-object v0, v0, v8

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 76
    iget-object v3, p0, Lcom/aadhk/restpos/d/aw;->a:Lcom/aadhk/restpos/d/av;

    const v4, 0x7f0803a9

    invoke-virtual {v3, v4}, Lcom/aadhk/restpos/d/av;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 77
    iget-object v4, p0, Lcom/aadhk/restpos/d/aw;->a:Lcom/aadhk/restpos/d/av;

    invoke-static {v4}, Lcom/aadhk/restpos/d/av;->a(Lcom/aadhk/restpos/d/av;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 78
    iget-object v3, p0, Lcom/aadhk/restpos/d/aw;->a:Lcom/aadhk/restpos/d/av;

    invoke-static {v3}, Lcom/aadhk/restpos/d/av;->b(Lcom/aadhk/restpos/d/av;)Lcom/aadhk/restpos/util/r;

    move-result-object v3

    const-string v4, "redMinutes"

    invoke-virtual {v3, v4, v1}, Lcom/aadhk/restpos/util/r;->a(Ljava/lang/String;I)V

    .line 79
    iget-object v1, p0, Lcom/aadhk/restpos/d/aw;->a:Lcom/aadhk/restpos/d/av;

    invoke-static {v1}, Lcom/aadhk/restpos/d/av;->b(Lcom/aadhk/restpos/d/av;)Lcom/aadhk/restpos/util/r;

    move-result-object v1

    const-string v3, "greenMinutes"

    invoke-virtual {v1, v3, v2}, Lcom/aadhk/restpos/util/r;->a(Ljava/lang/String;I)V

    .line 80
    iget-object v1, p0, Lcom/aadhk/restpos/d/aw;->a:Lcom/aadhk/restpos/d/av;

    invoke-static {v1}, Lcom/aadhk/restpos/d/av;->b(Lcom/aadhk/restpos/d/av;)Lcom/aadhk/restpos/util/r;

    move-result-object v1

    const-string v2, "yellowMinutes"

    invoke-virtual {v1, v2, v0}, Lcom/aadhk/restpos/util/r;->a(Ljava/lang/String;I)V

    .line 81
    return-void
.end method
