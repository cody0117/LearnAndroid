.class final Lcom/aadhk/restpos/d/s;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/product/library/b/f;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/d/q;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/d/q;)V
    .locals 0
    .parameter

    .prologue
    .line 581
    iput-object p1, p0, Lcom/aadhk/restpos/d/s;->a:Lcom/aadhk/restpos/d/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 4
    .parameter

    .prologue
    .line 584
    iget-object v0, p0, Lcom/aadhk/restpos/d/s;->a:Lcom/aadhk/restpos/d/q;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/aadhk/restpos/d/q;->b(Lcom/aadhk/restpos/d/q;I)I

    .line 585
    iget-object v0, p0, Lcom/aadhk/restpos/d/s;->a:Lcom/aadhk/restpos/d/q;

    invoke-static {v0}, Lcom/aadhk/restpos/d/q;->d(Lcom/aadhk/restpos/d/q;)I

    move-result v0

    if-nez v0, :cond_2

    .line 586
    sget-object v0, Lcom/aadhk/restpos/util/f;->e:Ljava/lang/String;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    array-length v0, v1

    new-array v2, v0, [Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    const/4 v0, 0x0

    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_0

    aget-object v3, v1, v0

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 587
    :cond_0
    array-length v0, v2

    if-lez v0, :cond_1

    .line 588
    new-instance v0, Lcom/aadhk/product/library/b/k;

    iget-object v1, p0, Lcom/aadhk/restpos/d/s;->a:Lcom/aadhk/restpos/d/q;

    invoke-static {v1}, Lcom/aadhk/restpos/d/q;->a(Lcom/aadhk/restpos/d/q;)Lcom/aadhk/restpos/DatabaseActivity;

    move-result-object v1

    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/aadhk/product/library/b/k;-><init>(Landroid/content/Context;[Ljava/lang/String;I)V

    .line 589
    iget-object v1, p0, Lcom/aadhk/restpos/d/s;->a:Lcom/aadhk/restpos/d/q;

    invoke-static {v1}, Lcom/aadhk/restpos/d/q;->a(Lcom/aadhk/restpos/d/q;)Lcom/aadhk/restpos/DatabaseActivity;

    move-result-object v1

    const v3, 0x7f080067

    invoke-virtual {v1, v3}, Lcom/aadhk/restpos/DatabaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/product/library/b/k;->setTitle(Ljava/lang/CharSequence;)V

    .line 590
    new-instance v1, Lcom/aadhk/restpos/d/t;

    invoke-direct {v1, p0, v2}, Lcom/aadhk/restpos/d/t;-><init>(Lcom/aadhk/restpos/d/s;[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/aadhk/product/library/b/k;->a(Lcom/aadhk/product/library/b/f;)V

    .line 597
    invoke-virtual {v0}, Lcom/aadhk/product/library/b/k;->show()V

    .line 617
    :goto_1
    return-void

    .line 599
    :cond_1
    iget-object v0, p0, Lcom/aadhk/restpos/d/s;->a:Lcom/aadhk/restpos/d/q;

    invoke-static {v0}, Lcom/aadhk/restpos/d/q;->a(Lcom/aadhk/restpos/d/q;)Lcom/aadhk/restpos/DatabaseActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/d/s;->a:Lcom/aadhk/restpos/d/q;

    invoke-static {v1}, Lcom/aadhk/restpos/d/q;->a(Lcom/aadhk/restpos/d/q;)Lcom/aadhk/restpos/DatabaseActivity;

    move-result-object v1

    const v2, 0x7f080068

    invoke-virtual {v1, v2}, Lcom/aadhk/restpos/DatabaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 602
    :cond_2
    new-instance v0, Lcom/aadhk/restpos/c/d;

    iget-object v1, p0, Lcom/aadhk/restpos/d/s;->a:Lcom/aadhk/restpos/d/q;

    invoke-static {v1}, Lcom/aadhk/restpos/d/q;->a(Lcom/aadhk/restpos/d/q;)Lcom/aadhk/restpos/DatabaseActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/aadhk/restpos/c/d;-><init>(Landroid/content/Context;)V

    .line 603
    iget-object v1, p0, Lcom/aadhk/restpos/d/s;->a:Lcom/aadhk/restpos/d/q;

    invoke-static {v1}, Lcom/aadhk/restpos/d/q;->a(Lcom/aadhk/restpos/d/q;)Lcom/aadhk/restpos/DatabaseActivity;

    move-result-object v1

    const v2, 0x7f08007d

    invoke-virtual {v1, v2}, Lcom/aadhk/restpos/DatabaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/d;->setTitle(Ljava/lang/CharSequence;)V

    .line 604
    new-instance v1, Lcom/aadhk/restpos/d/u;

    invoke-direct {v1, p0, v0}, Lcom/aadhk/restpos/d/u;-><init>(Lcom/aadhk/restpos/d/s;Lcom/aadhk/restpos/c/d;)V

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/d;->a(Lcom/aadhk/restpos/c/f;)V

    .line 615
    invoke-virtual {v0}, Lcom/aadhk/restpos/c/d;->show()V

    goto :goto_1
.end method
