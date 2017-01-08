.class public final Lcom/aadhk/b/a/b;
.super Lcom/aadhk/b/a/a;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public c:Lcom/aadhk/b/a/c;

.field private final d:Landroid/widget/Button;

.field private e:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 17
    sget v0, Lcom/aadhk/b/g;->a:I

    invoke-direct {p0, p1, v0}, Lcom/aadhk/b/a/a;-><init>(Landroid/content/Context;I)V

    .line 18
    sget v0, Lcom/aadhk/b/f;->c:I

    invoke-virtual {p0, v0}, Lcom/aadhk/b/a/b;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aadhk/b/a/b;->e:Landroid/widget/TextView;

    .line 19
    iget-object v0, p0, Lcom/aadhk/b/a/b;->e:Landroid/widget/TextView;

    sget v1, Lcom/aadhk/b/h;->a:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 24
    sget v0, Lcom/aadhk/b/f;->a:I

    invoke-virtual {p0, v0}, Lcom/aadhk/b/a/b;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aadhk/b/a/b;->d:Landroid/widget/Button;

    .line 25
    iget-object v0, p0, Lcom/aadhk/b/a/b;->d:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 27
    return-void
.end method


# virtual methods
.method public final a(Lcom/aadhk/b/a/c;)V
    .locals 0
    .parameter

    .prologue
    .line 50
    iput-object p1, p0, Lcom/aadhk/b/a/b;->c:Lcom/aadhk/b/a/c;

    .line 51
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/aadhk/b/a/b;->d:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/aadhk/b/a/b;->c:Lcom/aadhk/b/a/c;

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/aadhk/b/a/b;->c:Lcom/aadhk/b/a/c;

    invoke-interface {v0}, Lcom/aadhk/b/a/c;->a()V

    .line 46
    :cond_0
    invoke-virtual {p0}, Lcom/aadhk/b/a/b;->dismiss()V

    .line 47
    return-void
.end method
