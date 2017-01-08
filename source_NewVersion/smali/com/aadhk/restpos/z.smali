.class final Lcom/aadhk/restpos/z;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/product/library/b/g;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/bean/Note;

.field final synthetic b:Lcom/aadhk/restpos/KitchenNoteActivity;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/KitchenNoteActivity;Lcom/aadhk/restpos/bean/Note;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 77
    iput-object p1, p0, Lcom/aadhk/restpos/z;->b:Lcom/aadhk/restpos/KitchenNoteActivity;

    iput-object p2, p0, Lcom/aadhk/restpos/z;->a:Lcom/aadhk/restpos/bean/Note;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .prologue
    .line 80
    new-instance v0, Lcom/aadhk/restpos/c/g;

    iget-object v1, p0, Lcom/aadhk/restpos/z;->b:Lcom/aadhk/restpos/KitchenNoteActivity;

    invoke-direct {v0, v1}, Lcom/aadhk/restpos/c/g;-><init>(Landroid/content/Context;)V

    .line 81
    iget-object v1, p0, Lcom/aadhk/restpos/z;->b:Lcom/aadhk/restpos/KitchenNoteActivity;

    iget-object v1, v1, Lcom/aadhk/restpos/KitchenNoteActivity;->b:Landroid/content/res/Resources;

    const v2, 0x7f09027a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/aadhk/restpos/z;->a:Lcom/aadhk/restpos/bean/Note;

    invoke-virtual {v4}, Lcom/aadhk/restpos/bean/Note;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 82
    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/g;->setTitle(Ljava/lang/CharSequence;)V

    .line 83
    new-instance v1, Lcom/aadhk/restpos/aa;

    invoke-direct {v1, p0}, Lcom/aadhk/restpos/aa;-><init>(Lcom/aadhk/restpos/z;)V

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/c/g;->a(Lcom/aadhk/restpos/c/i;)V

    .line 90
    invoke-virtual {v0}, Lcom/aadhk/restpos/c/g;->show()V

    .line 91
    return-void
.end method
