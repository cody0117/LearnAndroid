.class final Lcom/aadhk/restpos/aa;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/restpos/c/i;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/z;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/z;)V
    .locals 0
    .parameter

    .prologue
    .line 83
    iput-object p1, p0, Lcom/aadhk/restpos/aa;->a:Lcom/aadhk/restpos/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/aadhk/restpos/aa;->a:Lcom/aadhk/restpos/z;

    iget-object v0, v0, Lcom/aadhk/restpos/z;->b:Lcom/aadhk/restpos/KitchenNoteActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/KitchenNoteActivity;->a(Lcom/aadhk/restpos/KitchenNoteActivity;)Lcom/aadhk/restpos/b/l;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/aa;->a:Lcom/aadhk/restpos/z;

    iget-object v1, v1, Lcom/aadhk/restpos/z;->a:Lcom/aadhk/restpos/bean/Note;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Note;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/b/l;->a(I)V

    .line 87
    iget-object v0, p0, Lcom/aadhk/restpos/aa;->a:Lcom/aadhk/restpos/z;

    iget-object v0, v0, Lcom/aadhk/restpos/z;->b:Lcom/aadhk/restpos/KitchenNoteActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/KitchenNoteActivity;->a()V

    .line 88
    return-void
.end method
