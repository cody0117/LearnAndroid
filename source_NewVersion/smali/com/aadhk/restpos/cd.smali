.class final Lcom/aadhk/restpos/cd;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/product/library/a/b;


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Z

.field final synthetic c:Lcom/aadhk/restpos/TakeOrderActivity;

.field private d:I


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/TakeOrderActivity;Ljava/util/List;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 558
    iput-object p1, p0, Lcom/aadhk/restpos/cd;->c:Lcom/aadhk/restpos/TakeOrderActivity;

    iput-object p2, p0, Lcom/aadhk/restpos/cd;->a:Ljava/util/List;

    iput-boolean p3, p0, Lcom/aadhk/restpos/cd;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .prologue
    .line 564
    :try_start_0
    iget-object v0, p0, Lcom/aadhk/restpos/cd;->c:Lcom/aadhk/restpos/TakeOrderActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/TakeOrderActivity;->h(Lcom/aadhk/restpos/TakeOrderActivity;)Lcom/aadhk/restpos/e/f;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/cd;->c:Lcom/aadhk/restpos/TakeOrderActivity;

    invoke-static {v1}, Lcom/aadhk/restpos/TakeOrderActivity;->f(Lcom/aadhk/restpos/TakeOrderActivity;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/aadhk/restpos/cd;->c:Lcom/aadhk/restpos/TakeOrderActivity;

    invoke-static {v2}, Lcom/aadhk/restpos/TakeOrderActivity;->a(Lcom/aadhk/restpos/TakeOrderActivity;)Lcom/aadhk/restpos/bean/Order;

    move-result-object v2

    iget-object v3, p0, Lcom/aadhk/restpos/cd;->a:Ljava/util/List;

    iget-boolean v4, p0, Lcom/aadhk/restpos/cd;->b:Z

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/aadhk/restpos/e/f;->a(Ljava/util/List;Lcom/aadhk/restpos/bean/Order;Ljava/util/List;Z)V

    .line 565
    const/4 v0, 0x0

    iput v0, p0, Lcom/aadhk/restpos/cd;->d:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 571
    :goto_0
    return-void

    .line 566
    :catch_0
    move-exception v0

    .line 567
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 568
    invoke-static {v0}, Lcom/aadhk/restpos/e/e;->a(Ljava/lang/Throwable;)I

    move-result v1

    iput v1, p0, Lcom/aadhk/restpos/cd;->d:I

    .line 569
    invoke-static {v0}, Lcom/bugsense/trace/BugSenseHandler;->sendException(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public final b()V
    .locals 3

    .prologue
    .line 575
    iget v0, p0, Lcom/aadhk/restpos/cd;->d:I

    if-eqz v0, :cond_0

    .line 576
    iget-object v0, p0, Lcom/aadhk/restpos/cd;->c:Lcom/aadhk/restpos/TakeOrderActivity;

    iget v1, p0, Lcom/aadhk/restpos/cd;->d:I

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 578
    :cond_0
    return-void
.end method
