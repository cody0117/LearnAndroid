.class final Lcom/aadhk/restpos/b;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/restpos/c/q;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/aadhk/restpos/CurrencyActivity;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/CurrencyActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 91
    iput-object p1, p0, Lcom/aadhk/restpos/b;->b:Lcom/aadhk/restpos/CurrencyActivity;

    iput-object p2, p0, Lcom/aadhk/restpos/b;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/aadhk/product/library/bean/Currency;)V
    .locals 2
    .parameter

    .prologue
    .line 94
    iget-object v0, p0, Lcom/aadhk/restpos/b;->b:Lcom/aadhk/restpos/CurrencyActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/CurrencyActivity;->a(Lcom/aadhk/restpos/CurrencyActivity;)Lcom/aadhk/restpos/b/d;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/b;->a:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/aadhk/restpos/b/d;->a(Lcom/aadhk/product/library/bean/Currency;Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lcom/aadhk/restpos/b;->b:Lcom/aadhk/restpos/CurrencyActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/CurrencyActivity;->b(Lcom/aadhk/restpos/CurrencyActivity;)V

    .line 96
    return-void
.end method
