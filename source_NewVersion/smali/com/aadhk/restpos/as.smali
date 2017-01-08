.class final Lcom/aadhk/restpos/as;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/product/library/b/f;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/bean/Table;

.field final synthetic b:Lcom/aadhk/restpos/MgrTableActivity;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/MgrTableActivity;Lcom/aadhk/restpos/bean/Table;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 82
    iput-object p1, p0, Lcom/aadhk/restpos/as;->b:Lcom/aadhk/restpos/MgrTableActivity;

    iput-object p2, p0, Lcom/aadhk/restpos/as;->a:Lcom/aadhk/restpos/bean/Table;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 2
    .parameter

    .prologue
    .line 85
    iget-object v0, p0, Lcom/aadhk/restpos/as;->a:Lcom/aadhk/restpos/bean/Table;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/aadhk/restpos/bean/Table;->setName(Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/aadhk/restpos/as;->b:Lcom/aadhk/restpos/MgrTableActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/MgrTableActivity;->a(Lcom/aadhk/restpos/MgrTableActivity;)Lcom/aadhk/restpos/b/v;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/as;->a:Lcom/aadhk/restpos/bean/Table;

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/b/v;->b(Lcom/aadhk/restpos/bean/Table;)V

    .line 87
    iget-object v0, p0, Lcom/aadhk/restpos/as;->b:Lcom/aadhk/restpos/MgrTableActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/MgrTableActivity;->b(Lcom/aadhk/restpos/MgrTableActivity;)V

    .line 88
    return-void
.end method
