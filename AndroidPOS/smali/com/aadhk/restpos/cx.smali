.class final Lcom/aadhk/restpos/cx;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/restpos/c/i;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/ReceiptListActivity;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/ReceiptListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 202
    iput-object p1, p0, Lcom/aadhk/restpos/cx;->a:Lcom/aadhk/restpos/ReceiptListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 205
    iget-object v0, p0, Lcom/aadhk/restpos/cx;->a:Lcom/aadhk/restpos/ReceiptListActivity;

    invoke-static {v0, p1}, Lcom/aadhk/restpos/ReceiptListActivity;->a(Lcom/aadhk/restpos/ReceiptListActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 206
    iget-object v0, p0, Lcom/aadhk/restpos/cx;->a:Lcom/aadhk/restpos/ReceiptListActivity;

    invoke-static {v0, p2}, Lcom/aadhk/restpos/ReceiptListActivity;->b(Lcom/aadhk/restpos/ReceiptListActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 208
    iget-object v0, p0, Lcom/aadhk/restpos/cx;->a:Lcom/aadhk/restpos/ReceiptListActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/ReceiptListActivity;->e(Lcom/aadhk/restpos/ReceiptListActivity;)I

    .line 209
    iget-object v0, p0, Lcom/aadhk/restpos/cx;->a:Lcom/aadhk/restpos/ReceiptListActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/ReceiptListActivity;->a()V

    .line 210
    return-void
.end method
