.class final Lcom/aadhk/restpos/a/g;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/bean/Item;

.field final synthetic b:Lcom/aadhk/restpos/a/e;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/a/e;Lcom/aadhk/restpos/bean/Item;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 143
    iput-object p1, p0, Lcom/aadhk/restpos/a/g;->b:Lcom/aadhk/restpos/a/e;

    iput-object p2, p0, Lcom/aadhk/restpos/a/g;->a:Lcom/aadhk/restpos/bean/Item;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 146
    iget-object v0, p0, Lcom/aadhk/restpos/a/g;->b:Lcom/aadhk/restpos/a/e;

    iget-object v1, p0, Lcom/aadhk/restpos/a/g;->a:Lcom/aadhk/restpos/bean/Item;

    invoke-static {v0, v1}, Lcom/aadhk/restpos/a/e;->b(Lcom/aadhk/restpos/a/e;Lcom/aadhk/restpos/bean/Item;)V

    .line 147
    return-void
.end method
