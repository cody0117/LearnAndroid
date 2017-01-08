.class final Lcom/aadhk/restpos/ay;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/product/library/b/g;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/bean/Note;

.field final synthetic b:Lcom/aadhk/restpos/MgrVoidReasonActivity;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/MgrVoidReasonActivity;Lcom/aadhk/restpos/bean/Note;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 75
    iput-object p1, p0, Lcom/aadhk/restpos/ay;->b:Lcom/aadhk/restpos/MgrVoidReasonActivity;

    iput-object p2, p0, Lcom/aadhk/restpos/ay;->a:Lcom/aadhk/restpos/bean/Note;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .prologue
    .line 78
    new-instance v0, Lcom/aadhk/restpos/c/g;

    iget-object v1, p0, Lcom/aadhk/restpos/ay;->b:Lcom/aadhk/restpos/MgrVoidReasonActivity;

    invoke-direct {v0, v1}, Lcom/aadhk/restpos/c/g;-><init>(Landroid/content/Context;)V

    .line 79
    iget-object v1, p0, Lcom/aadhk/restpos/ay;->b:Lcom/aadhk/restpos/MgrVoidReasonActivity;

    iget-object v1, v1, Lcom/aadhk/restpos/MgrVoidReasonActivity;->b:Landroid/content/res/Resources;

    const v2, 0x7f09027a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/aadhk/restpos/ay;->a:Lcom/aadhk/restpos/bean/Note;

    invoke-virtual {v4}, Lcom/aadhk/restpos/bean/Note;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 80
    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/g;->setTitle(Ljava/lang/CharSequence;)V

    .line 81
    new-instance v1, Lcom/aadhk/restpos/az;

    invoke-direct {v1, p0}, Lcom/aadhk/restpos/az;-><init>(Lcom/aadhk/restpos/ay;)V

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/g;->a(Lcom/aadhk/restpos/c/i;)V

    .line 88
    invoke-virtual {v0}, Lcom/aadhk/restpos/c/g;->show()V

    .line 89
    return-void
.end method
