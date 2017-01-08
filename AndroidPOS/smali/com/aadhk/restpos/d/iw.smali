.class final Lcom/aadhk/restpos/d/iw;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/product/library/b/f;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/d/it;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/d/it;)V
    .locals 0
    .parameter

    .prologue
    .line 381
    iput-object p1, p0, Lcom/aadhk/restpos/d/iw;->a:Lcom/aadhk/restpos/d/it;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 3
    .parameter

    .prologue
    .line 384
    iget-object v0, p0, Lcom/aadhk/restpos/d/iw;->a:Lcom/aadhk/restpos/d/it;

    invoke-static {v0}, Lcom/aadhk/restpos/d/it;->c(Lcom/aadhk/restpos/d/it;)Lcom/aadhk/restpos/util/r;

    move-result-object v1

    const-string v2, "prefTableDefaultPersonNum"

    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v2, v0}, Lcom/aadhk/restpos/util/r;->a(Ljava/lang/String;I)V

    .line 385
    iget-object v0, p0, Lcom/aadhk/restpos/d/iw;->a:Lcom/aadhk/restpos/d/it;

    const v1, 0x7f0802a7

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/d/it;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 386
    iget-object v1, p0, Lcom/aadhk/restpos/d/iw;->a:Lcom/aadhk/restpos/d/it;

    invoke-static {v1}, Lcom/aadhk/restpos/d/it;->d(Lcom/aadhk/restpos/d/it;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 387
    return-void
.end method
