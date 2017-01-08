.class final Lcom/aadhk/restpos/c;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/restpos/c/m;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/bean/Currency;

.field final synthetic b:Lcom/aadhk/restpos/CurrencyActivity;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/CurrencyActivity;Lcom/aadhk/restpos/bean/Currency;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 106
    iput-object p1, p0, Lcom/aadhk/restpos/c;->b:Lcom/aadhk/restpos/CurrencyActivity;

    iput-object p2, p0, Lcom/aadhk/restpos/c;->a:Lcom/aadhk/restpos/bean/Currency;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/aadhk/restpos/c;->b:Lcom/aadhk/restpos/CurrencyActivity;

    iget-object v1, p0, Lcom/aadhk/restpos/c;->a:Lcom/aadhk/restpos/bean/Currency;

    invoke-static {v0, v1}, Lcom/aadhk/restpos/CurrencyActivity;->a(Lcom/aadhk/restpos/CurrencyActivity;Lcom/aadhk/restpos/bean/Currency;)V

    .line 110
    return-void
.end method
