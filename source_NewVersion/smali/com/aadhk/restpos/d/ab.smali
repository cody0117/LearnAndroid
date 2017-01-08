.class final Lcom/aadhk/restpos/d/ab;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lyuku/ambilwarna/e;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/d/z;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/d/z;)V
    .locals 0
    .parameter

    .prologue
    .line 332
    iput-object p1, p0, Lcom/aadhk/restpos/d/ab;->a:Lcom/aadhk/restpos/d/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 340
    invoke-static {p1}, Lcom/aadhk/restpos/f/c;->a(Ljava/lang/String;)I

    move-result v0

    .line 341
    iget-object v1, p0, Lcom/aadhk/restpos/d/ab;->a:Lcom/aadhk/restpos/d/z;

    invoke-static {v1, p1}, Lcom/aadhk/restpos/d/z;->a(Lcom/aadhk/restpos/d/z;Ljava/lang/String;)Ljava/lang/String;

    .line 342
    iget-object v1, p0, Lcom/aadhk/restpos/d/ab;->a:Lcom/aadhk/restpos/d/z;

    invoke-static {v1}, Lcom/aadhk/restpos/d/z;->e(Lcom/aadhk/restpos/d/z;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 343
    iget-object v1, p0, Lcom/aadhk/restpos/d/ab;->a:Lcom/aadhk/restpos/d/z;

    invoke-static {v1}, Lcom/aadhk/restpos/d/z;->f(Lcom/aadhk/restpos/d/z;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 344
    iget-object v0, p0, Lcom/aadhk/restpos/d/ab;->a:Lcom/aadhk/restpos/d/z;

    invoke-static {v0}, Lcom/aadhk/restpos/d/z;->g(Lcom/aadhk/restpos/d/z;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 345
    return-void
.end method
