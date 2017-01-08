.class final Lcom/aadhk/restpos/d/ar;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/restpos/util/n;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/d/aq;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/d/aq;)V
    .locals 0
    .parameter

    .prologue
    .line 98
    iput-object p1, p0, Lcom/aadhk/restpos/d/ar;->a:Lcom/aadhk/restpos/d/aq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 1
    .parameter

    .prologue
    .line 101
    iget-object v0, p0, Lcom/aadhk/restpos/d/ar;->a:Lcom/aadhk/restpos/d/aq;

    invoke-static {v0}, Lcom/aadhk/restpos/d/aq;->a(Lcom/aadhk/restpos/d/aq;)Lcom/aadhk/restpos/KitchenActivity;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/aadhk/restpos/KitchenActivity;->a(I)V

    .line 102
    return-void
.end method
