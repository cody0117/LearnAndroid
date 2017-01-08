.class final Lcom/aadhk/restpos/d/as;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/d/aq;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/d/aq;)V
    .locals 0
    .parameter

    .prologue
    .line 129
    iput-object p1, p0, Lcom/aadhk/restpos/d/as;->a:Lcom/aadhk/restpos/d/aq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 132
    iget-object v0, p0, Lcom/aadhk/restpos/d/as;->a:Lcom/aadhk/restpos/d/aq;

    invoke-static {v0}, Lcom/aadhk/restpos/d/aq;->a(Lcom/aadhk/restpos/d/aq;)Lcom/aadhk/restpos/KitchenActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/KitchenActivity;->e()V

    .line 134
    return-void
.end method
