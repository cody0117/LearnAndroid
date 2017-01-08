.class final Lcom/aadhk/restpos/cc;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/restpos/c/i;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/PayInOutActivity;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/PayInOutActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 100
    iput-object p1, p0, Lcom/aadhk/restpos/cc;->a:Lcom/aadhk/restpos/PayInOutActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 103
    iget-object v0, p0, Lcom/aadhk/restpos/cc;->a:Lcom/aadhk/restpos/PayInOutActivity;

    invoke-virtual {v0, p1}, Lcom/aadhk/restpos/PayInOutActivity;->a(Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcom/aadhk/restpos/cc;->a:Lcom/aadhk/restpos/PayInOutActivity;

    invoke-virtual {v0, p2}, Lcom/aadhk/restpos/PayInOutActivity;->b(Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lcom/aadhk/restpos/cc;->a:Lcom/aadhk/restpos/PayInOutActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/PayInOutActivity;->a(Lcom/aadhk/restpos/PayInOutActivity;)I

    .line 106
    iget-object v0, p0, Lcom/aadhk/restpos/cc;->a:Lcom/aadhk/restpos/PayInOutActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/PayInOutActivity;->a()V

    .line 107
    return-void
.end method
