.class final Lcom/aadhk/restpos/br;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/restpos/c/l;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/ReceiptListActivity;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/ReceiptListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 179
    iput-object p1, p0, Lcom/aadhk/restpos/br;->a:Lcom/aadhk/restpos/ReceiptListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 182
    iget-object v0, p0, Lcom/aadhk/restpos/br;->a:Lcom/aadhk/restpos/ReceiptListActivity;

    invoke-static {v0, p1}, Lcom/aadhk/restpos/ReceiptListActivity;->a(Lcom/aadhk/restpos/ReceiptListActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 183
    iget-object v0, p0, Lcom/aadhk/restpos/br;->a:Lcom/aadhk/restpos/ReceiptListActivity;

    invoke-static {v0, p2}, Lcom/aadhk/restpos/ReceiptListActivity;->b(Lcom/aadhk/restpos/ReceiptListActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 185
    iget-object v0, p0, Lcom/aadhk/restpos/br;->a:Lcom/aadhk/restpos/ReceiptListActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/ReceiptListActivity;->a(Lcom/aadhk/restpos/ReceiptListActivity;)I

    .line 186
    iget-object v0, p0, Lcom/aadhk/restpos/br;->a:Lcom/aadhk/restpos/ReceiptListActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/ReceiptListActivity;->a()V

    .line 187
    return-void
.end method
