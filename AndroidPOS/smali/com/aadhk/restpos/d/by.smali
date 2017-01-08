.class final Lcom/aadhk/restpos/d/by;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lyuku/ambilwarna/e;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/d/bu;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/d/bu;)V
    .locals 0
    .parameter

    .prologue
    .line 424
    iput-object p1, p0, Lcom/aadhk/restpos/d/by;->a:Lcom/aadhk/restpos/d/bu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 432
    invoke-static {p1}, Lcom/aadhk/restpos/util/c;->a(Ljava/lang/String;)I

    move-result v0

    .line 433
    iget-object v1, p0, Lcom/aadhk/restpos/d/by;->a:Lcom/aadhk/restpos/d/bu;

    invoke-static {v1, p1}, Lcom/aadhk/restpos/d/bu;->b(Lcom/aadhk/restpos/d/bu;Ljava/lang/String;)Ljava/lang/String;

    .line 434
    iget-object v1, p0, Lcom/aadhk/restpos/d/by;->a:Lcom/aadhk/restpos/d/bu;

    invoke-static {v1}, Lcom/aadhk/restpos/d/bu;->d(Lcom/aadhk/restpos/d/bu;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 435
    iget-object v1, p0, Lcom/aadhk/restpos/d/by;->a:Lcom/aadhk/restpos/d/bu;

    invoke-static {v1}, Lcom/aadhk/restpos/d/bu;->b(Lcom/aadhk/restpos/d/bu;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setTextColor(I)V

    .line 436
    iget-object v0, p0, Lcom/aadhk/restpos/d/by;->a:Lcom/aadhk/restpos/d/bu;

    invoke-static {v0}, Lcom/aadhk/restpos/d/bu;->e(Lcom/aadhk/restpos/d/bu;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 437
    return-void
.end method
