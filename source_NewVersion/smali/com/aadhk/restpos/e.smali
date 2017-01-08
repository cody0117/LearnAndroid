.class final Lcom/aadhk/restpos/e;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/product/library/b/f;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/DatabaseActivity;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/DatabaseActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 621
    iput-object p1, p0, Lcom/aadhk/restpos/e;->a:Lcom/aadhk/restpos/DatabaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 4
    .parameter

    .prologue
    .line 624
    iget-object v0, p0, Lcom/aadhk/restpos/e;->a:Lcom/aadhk/restpos/DatabaseActivity;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/aadhk/restpos/DatabaseActivity;->b(Lcom/aadhk/restpos/DatabaseActivity;I)I

    .line 625
    iget-object v0, p0, Lcom/aadhk/restpos/e;->a:Lcom/aadhk/restpos/DatabaseActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/DatabaseActivity;->c(Lcom/aadhk/restpos/DatabaseActivity;)I

    move-result v0

    if-nez v0, :cond_2

    .line 626
    sget-object v0, Lcom/aadhk/restpos/f/d;->e:Ljava/lang/String;

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

    .line 627
    :cond_0
    array-length v0, v2

    if-lez v0, :cond_1

    .line 628
    new-instance v0, Lcom/aadhk/product/library/b/k;

    iget-object v1, p0, Lcom/aadhk/restpos/e;->a:Lcom/aadhk/restpos/DatabaseActivity;

    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/aadhk/product/library/b/k;-><init>(Landroid/content/Context;[Ljava/lang/String;I)V

    .line 629
    const v1, 0x7f090037

    invoke-virtual {v0, v1}, Lcom/aadhk/product/library/b/k;->setTitle(I)V

    .line 630
    new-instance v1, Lcom/aadhk/restpos/f;

    invoke-direct {v1, p0, v2}, Lcom/aadhk/restpos/f;-><init>(Lcom/aadhk/restpos/e;[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/aadhk/product/library/b/k;->a(Lcom/aadhk/product/library/b/f;)V

    .line 637
    invoke-virtual {v0}, Lcom/aadhk/product/library/b/k;->show()V

    .line 657
    :goto_1
    return-void

    .line 639
    :cond_1
    iget-object v0, p0, Lcom/aadhk/restpos/e;->a:Lcom/aadhk/restpos/DatabaseActivity;

    const v1, 0x7f090038

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 642
    :cond_2
    new-instance v0, Lcom/aadhk/restpos/c/g;

    iget-object v1, p0, Lcom/aadhk/restpos/e;->a:Lcom/aadhk/restpos/DatabaseActivity;

    invoke-direct {v0, v1}, Lcom/aadhk/restpos/c/g;-><init>(Landroid/content/Context;)V

    .line 643
    const v1, 0x7f09004d

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/g;->setTitle(I)V

    .line 644
    new-instance v1, Lcom/aadhk/restpos/g;

    invoke-direct {v1, p0, v0}, Lcom/aadhk/restpos/g;-><init>(Lcom/aadhk/restpos/e;Lcom/aadhk/restpos/c/g;)V

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/g;->a(Lcom/aadhk/restpos/c/i;)V

    .line 655
    invoke-virtual {v0}, Lcom/aadhk/restpos/c/g;->show()V

    goto :goto_1
.end method
