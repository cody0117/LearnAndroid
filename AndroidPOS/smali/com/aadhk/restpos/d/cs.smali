.class final Lcom/aadhk/restpos/d/cs;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/product/library/a/c;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/d/cr;

.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/aadhk/restpos/d/cr;Ljava/util/Map;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 817
    iput-object p1, p0, Lcom/aadhk/restpos/d/cs;->a:Lcom/aadhk/restpos/d/cr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 818
    iput-object p2, p0, Lcom/aadhk/restpos/d/cs;->c:Ljava/util/Map;

    .line 819
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 823
    invoke-static {}, Lcom/aadhk/restpos/d/cf;->a()Lcom/aadhk/restpos/g/k;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/d/cs;->c:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/g/k;->a(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/d/cs;->b:Ljava/util/Map;

    .line 824
    return-void
.end method

.method public final b()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 828
    iget-object v0, p0, Lcom/aadhk/restpos/d/cs;->b:Ljava/util/Map;

    const-string v1, "serviceStatus"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 829
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 830
    const-string v1, "10"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "11"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 831
    :cond_0
    iget-object v0, p0, Lcom/aadhk/restpos/d/cs;->a:Lcom/aadhk/restpos/d/cr;

    invoke-virtual {v0}, Lcom/aadhk/restpos/d/cr;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/aadhk/restpos/util/q;->a(Landroid/content/Context;)V

    .line 832
    iget-object v0, p0, Lcom/aadhk/restpos/d/cs;->a:Lcom/aadhk/restpos/d/cr;

    invoke-virtual {v0}, Lcom/aadhk/restpos/d/cr;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f080246

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 838
    :cond_1
    :goto_0
    return-void

    .line 833
    :cond_2
    const-string v1, "9"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 834
    iget-object v0, p0, Lcom/aadhk/restpos/d/cs;->a:Lcom/aadhk/restpos/d/cr;

    invoke-virtual {v0}, Lcom/aadhk/restpos/d/cr;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f080248

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 836
    :cond_3
    iget-object v0, p0, Lcom/aadhk/restpos/d/cs;->a:Lcom/aadhk/restpos/d/cr;

    invoke-virtual {v0}, Lcom/aadhk/restpos/d/cr;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f080247

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method