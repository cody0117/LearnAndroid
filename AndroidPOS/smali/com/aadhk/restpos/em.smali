.class final Lcom/aadhk/restpos/em;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/product/library/a/c;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/VoidReasonActivity;

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

.field private c:Lcom/aadhk/restpos/bean/Note;


# direct methods
.method public constructor <init>(Lcom/aadhk/restpos/VoidReasonActivity;Lcom/aadhk/restpos/bean/Note;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 188
    iput-object p1, p0, Lcom/aadhk/restpos/em;->a:Lcom/aadhk/restpos/VoidReasonActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 189
    iput-object p2, p0, Lcom/aadhk/restpos/em;->c:Lcom/aadhk/restpos/bean/Note;

    .line 190
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 193
    iget-object v0, p0, Lcom/aadhk/restpos/em;->a:Lcom/aadhk/restpos/VoidReasonActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/VoidReasonActivity;->a(Lcom/aadhk/restpos/VoidReasonActivity;)Lcom/aadhk/restpos/g/af;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/em;->c:Lcom/aadhk/restpos/bean/Note;

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/g/af;->a(Lcom/aadhk/restpos/bean/Note;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/aadhk/restpos/em;->b:Ljava/util/Map;

    .line 194
    return-void
.end method

.method public final b()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 197
    iget-object v0, p0, Lcom/aadhk/restpos/em;->b:Ljava/util/Map;

    const-string v1, "serviceStatus"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 198
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 199
    iget-object v1, p0, Lcom/aadhk/restpos/em;->a:Lcom/aadhk/restpos/VoidReasonActivity;

    iget-object v0, p0, Lcom/aadhk/restpos/em;->b:Ljava/util/Map;

    const-string v2, "serviceData"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v1, v0}, Lcom/aadhk/restpos/VoidReasonActivity;->a(Lcom/aadhk/restpos/VoidReasonActivity;Ljava/util/List;)Ljava/util/List;

    .line 200
    iget-object v0, p0, Lcom/aadhk/restpos/em;->a:Lcom/aadhk/restpos/VoidReasonActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/VoidReasonActivity;->a()V

    .line 209
    :goto_0
    return-void

    .line 201
    :cond_0
    const-string v1, "10"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "11"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 202
    :cond_1
    iget-object v0, p0, Lcom/aadhk/restpos/em;->a:Lcom/aadhk/restpos/VoidReasonActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/util/q;->a(Landroid/content/Context;)V

    .line 203
    iget-object v0, p0, Lcom/aadhk/restpos/em;->a:Lcom/aadhk/restpos/VoidReasonActivity;

    const v1, 0x7f080246

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 204
    :cond_2
    const-string v1, "9"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 205
    iget-object v0, p0, Lcom/aadhk/restpos/em;->a:Lcom/aadhk/restpos/VoidReasonActivity;

    const v1, 0x7f080248

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 207
    :cond_3
    iget-object v0, p0, Lcom/aadhk/restpos/em;->a:Lcom/aadhk/restpos/VoidReasonActivity;

    const v1, 0x7f080247

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
