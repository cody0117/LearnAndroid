.class final Lcom/aadhk/restpos/av;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/product/library/b/f;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/MgrTableActivity;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/MgrTableActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 130
    iput-object p1, p0, Lcom/aadhk/restpos/av;->a:Lcom/aadhk/restpos/MgrTableActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 2
    .parameter

    .prologue
    .line 133
    new-instance v0, Lcom/aadhk/restpos/bean/Table;

    invoke-direct {v0}, Lcom/aadhk/restpos/bean/Table;-><init>()V

    .line 134
    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/aadhk/restpos/bean/Table;->setName(Ljava/lang/String;)V

    .line 135
    iget-object v1, p0, Lcom/aadhk/restpos/av;->a:Lcom/aadhk/restpos/MgrTableActivity;

    invoke-static {v1}, Lcom/aadhk/restpos/MgrTableActivity;->a(Lcom/aadhk/restpos/MgrTableActivity;)Lcom/aadhk/restpos/b/v;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/aadhk/restpos/b/v;->a(Lcom/aadhk/restpos/bean/Table;)V

    .line 136
    iget-object v0, p0, Lcom/aadhk/restpos/av;->a:Lcom/aadhk/restpos/MgrTableActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/MgrTableActivity;->b(Lcom/aadhk/restpos/MgrTableActivity;)V

    .line 137
    return-void
.end method
