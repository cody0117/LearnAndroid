.class final Lcom/aadhk/restpos/a/k;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/bean/Item;

.field final synthetic b:Lcom/aadhk/restpos/a/h;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/a/h;Lcom/aadhk/restpos/bean/Item;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 136
    iput-object p1, p0, Lcom/aadhk/restpos/a/k;->b:Lcom/aadhk/restpos/a/h;

    iput-object p2, p0, Lcom/aadhk/restpos/a/k;->a:Lcom/aadhk/restpos/bean/Item;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 139
    iget-object v0, p0, Lcom/aadhk/restpos/a/k;->b:Lcom/aadhk/restpos/a/h;

    iget-object v1, p0, Lcom/aadhk/restpos/a/k;->a:Lcom/aadhk/restpos/bean/Item;

    invoke-static {v0, v1}, Lcom/aadhk/restpos/a/h;->a(Lcom/aadhk/restpos/a/h;Lcom/aadhk/restpos/bean/Item;)V

    .line 140
    return-void
.end method
