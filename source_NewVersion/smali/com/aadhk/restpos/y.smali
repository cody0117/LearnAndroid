.class final Lcom/aadhk/restpos/y;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/product/library/b/f;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/KitchenNoteActivity;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/KitchenNoteActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 69
    iput-object p1, p0, Lcom/aadhk/restpos/y;->a:Lcom/aadhk/restpos/KitchenNoteActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 1
    .parameter

    .prologue
    .line 72
    check-cast p1, Lcom/aadhk/restpos/bean/Note;

    .line 73
    iget-object v0, p0, Lcom/aadhk/restpos/y;->a:Lcom/aadhk/restpos/KitchenNoteActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/KitchenNoteActivity;->a(Lcom/aadhk/restpos/KitchenNoteActivity;)Lcom/aadhk/restpos/b/l;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/aadhk/restpos/b/l;->b(Lcom/aadhk/restpos/bean/Note;)V

    .line 74
    iget-object v0, p0, Lcom/aadhk/restpos/y;->a:Lcom/aadhk/restpos/KitchenNoteActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/KitchenNoteActivity;->a()V

    .line 75
    return-void
.end method
