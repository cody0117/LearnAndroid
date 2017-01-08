.class final Lcom/aadhk/restpos/at;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/product/library/b/g;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/bean/Table;

.field final synthetic b:Lcom/aadhk/restpos/MgrTableActivity;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/MgrTableActivity;Lcom/aadhk/restpos/bean/Table;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 90
    iput-object p1, p0, Lcom/aadhk/restpos/at;->b:Lcom/aadhk/restpos/MgrTableActivity;

    iput-object p2, p0, Lcom/aadhk/restpos/at;->a:Lcom/aadhk/restpos/bean/Table;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " rowid="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/aadhk/restpos/at;->a:Lcom/aadhk/restpos/bean/Table;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Table;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 95
    iget-object v1, p0, Lcom/aadhk/restpos/at;->b:Lcom/aadhk/restpos/MgrTableActivity;

    invoke-static {v1}, Lcom/aadhk/restpos/MgrTableActivity;->c(Lcom/aadhk/restpos/MgrTableActivity;)Lcom/aadhk/restpos/b/m;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/aadhk/restpos/b/m;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    new-instance v0, Lcom/aadhk/restpos/c/ax;

    iget-object v1, p0, Lcom/aadhk/restpos/at;->b:Lcom/aadhk/restpos/MgrTableActivity;

    invoke-direct {v0, v1}, Lcom/aadhk/restpos/c/ax;-><init>(Landroid/content/Context;)V

    .line 97
    iget-object v1, p0, Lcom/aadhk/restpos/at;->b:Lcom/aadhk/restpos/MgrTableActivity;

    iget-object v1, v1, Lcom/aadhk/restpos/MgrTableActivity;->b:Landroid/content/res/Resources;

    const v2, 0x7f0900bd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/ax;->a(Ljava/lang/String;)V

    .line 98
    invoke-virtual {v0}, Lcom/aadhk/restpos/c/ax;->show()V

    .line 103
    :goto_0
    return-void

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/aadhk/restpos/at;->b:Lcom/aadhk/restpos/MgrTableActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/MgrTableActivity;->a(Lcom/aadhk/restpos/MgrTableActivity;)Lcom/aadhk/restpos/b/v;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/at;->a:Lcom/aadhk/restpos/bean/Table;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Table;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/restpos/b/v;->a(J)V

    .line 101
    iget-object v0, p0, Lcom/aadhk/restpos/at;->b:Lcom/aadhk/restpos/MgrTableActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/MgrTableActivity;->b(Lcom/aadhk/restpos/MgrTableActivity;)V

    goto :goto_0
.end method
