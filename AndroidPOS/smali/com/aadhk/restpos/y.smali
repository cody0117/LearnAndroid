.class final Lcom/aadhk/restpos/y;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/restpos/c/f;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/KitchenNoteActivity;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/KitchenNoteActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 107
    iput-object p1, p0, Lcom/aadhk/restpos/y;->a:Lcom/aadhk/restpos/KitchenNoteActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/aadhk/restpos/y;->a:Lcom/aadhk/restpos/KitchenNoteActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/KitchenNoteActivity;->finish()V

    .line 111
    return-void
.end method
