.class final Lcom/aadhk/restpos/d/au;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/d/aq;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/d/aq;)V
    .locals 0
    .parameter

    .prologue
    .line 190
    iput-object p1, p0, Lcom/aadhk/restpos/d/au;->a:Lcom/aadhk/restpos/d/aq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 193
    iget-object v0, p0, Lcom/aadhk/restpos/d/au;->a:Lcom/aadhk/restpos/d/aq;

    invoke-static {v0}, Lcom/aadhk/restpos/d/aq;->b(Lcom/aadhk/restpos/d/aq;)Lcom/aadhk/restpos/util/ObservableScrollView;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/aadhk/restpos/d/au;->a:Lcom/aadhk/restpos/d/aq;

    invoke-static {v2}, Lcom/aadhk/restpos/d/aq;->a(Lcom/aadhk/restpos/d/aq;)Lcom/aadhk/restpos/KitchenActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aadhk/restpos/KitchenActivity;->d()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/restpos/util/ObservableScrollView;->scrollTo(II)V

    .line 194
    return-void
.end method
