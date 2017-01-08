.class final Lcom/aadhk/restpos/d/ac;
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
    .line 357
    iput-object p1, p0, Lcom/aadhk/restpos/d/ac;->a:Lcom/aadhk/restpos/d/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 365
    invoke-static {p1}, Lcom/aadhk/restpos/f/c;->a(Ljava/lang/String;)I

    move-result v0

    .line 366
    iget-object v1, p0, Lcom/aadhk/restpos/d/ac;->a:Lcom/aadhk/restpos/d/z;

    invoke-static {v1, p1}, Lcom/aadhk/restpos/d/z;->b(Lcom/aadhk/restpos/d/z;Ljava/lang/String;)Ljava/lang/String;

    .line 367
    iget-object v1, p0, Lcom/aadhk/restpos/d/ac;->a:Lcom/aadhk/restpos/d/z;

    invoke-static {v1}, Lcom/aadhk/restpos/d/z;->h(Lcom/aadhk/restpos/d/z;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 368
    iget-object v1, p0, Lcom/aadhk/restpos/d/ac;->a:Lcom/aadhk/restpos/d/z;

    invoke-static {v1}, Lcom/aadhk/restpos/d/z;->f(Lcom/aadhk/restpos/d/z;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setTextColor(I)V

    .line 369
    iget-object v0, p0, Lcom/aadhk/restpos/d/ac;->a:Lcom/aadhk/restpos/d/z;

    invoke-static {v0}, Lcom/aadhk/restpos/d/z;->i(Lcom/aadhk/restpos/d/z;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 370
    return-void
.end method
