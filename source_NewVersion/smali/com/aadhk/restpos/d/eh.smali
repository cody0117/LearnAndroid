.class final Lcom/aadhk/restpos/d/eh;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/product/library/a/b;


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/aadhk/restpos/bean/ReportItem;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic b:Lcom/aadhk/restpos/bean/ReportItem;

.field final synthetic c:Lcom/aadhk/restpos/d/eg;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/d/eg;Lcom/aadhk/restpos/bean/ReportItem;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 220
    iput-object p1, p0, Lcom/aadhk/restpos/d/eh;->c:Lcom/aadhk/restpos/d/eg;

    iput-object p2, p0, Lcom/aadhk/restpos/d/eh;->b:Lcom/aadhk/restpos/bean/ReportItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 8

    .prologue
    .line 231
    iget-object v0, p0, Lcom/aadhk/restpos/d/eh;->c:Lcom/aadhk/restpos/d/eg;

    iget-object v0, v0, Lcom/aadhk/restpos/d/eg;->h:Lcom/aadhk/restpos/d/ef;

    invoke-static {v0}, Lcom/aadhk/restpos/d/ef;->a(Lcom/aadhk/restpos/d/ef;)Lcom/aadhk/restpos/b/n;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/d/eh;->c:Lcom/aadhk/restpos/d/eg;

    invoke-static {v1}, Lcom/aadhk/restpos/d/eg;->a(Lcom/aadhk/restpos/d/eg;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/aadhk/restpos/d/eh;->c:Lcom/aadhk/restpos/d/eg;

    invoke-static {v2}, Lcom/aadhk/restpos/d/eg;->b(Lcom/aadhk/restpos/d/eg;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/aadhk/restpos/d/eh;->c:Lcom/aadhk/restpos/d/eg;

    invoke-static {v3}, Lcom/aadhk/restpos/d/eg;->c(Lcom/aadhk/restpos/d/eg;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/aadhk/restpos/d/eh;->c:Lcom/aadhk/restpos/d/eg;

    invoke-static {v4}, Lcom/aadhk/restpos/d/eg;->d(Lcom/aadhk/restpos/d/eg;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/aadhk/restpos/d/eh;->b:Lcom/aadhk/restpos/bean/ReportItem;

    invoke-virtual {v5}, Lcom/aadhk/restpos/bean/ReportItem;->getId()J

    move-result-wide v5

    const-string v7, "qty desc"

    invoke-virtual/range {v0 .. v7}, Lcom/aadhk/restpos/b/n;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/eh;->a:Ljava/util/List;

    .line 232
    return-void
.end method

.method public final b()V
    .locals 5

    .prologue
    .line 225
    new-instance v0, Lcom/aadhk/restpos/c/bk;

    iget-object v1, p0, Lcom/aadhk/restpos/d/eh;->c:Lcom/aadhk/restpos/d/eg;

    iget-object v1, v1, Lcom/aadhk/restpos/d/eg;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/aadhk/restpos/d/eh;->a:Ljava/util/List;

    iget-object v3, p0, Lcom/aadhk/restpos/d/eh;->b:Lcom/aadhk/restpos/bean/ReportItem;

    invoke-virtual {v3}, Lcom/aadhk/restpos/bean/ReportItem;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x6

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/aadhk/restpos/c/bk;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;I)V

    .line 226
    invoke-virtual {v0}, Lcom/aadhk/restpos/c/bk;->show()V

    .line 227
    return-void
.end method
