.class final Lcom/aadhk/restpos/cd;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/product/library/b/f;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/PayInOutActivity;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/PayInOutActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 124
    iput-object p1, p0, Lcom/aadhk/restpos/cd;->a:Lcom/aadhk/restpos/PayInOutActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 127
    check-cast p1, Lcom/aadhk/restpos/bean/CashRegister;

    .line 128
    iget-object v0, p0, Lcom/aadhk/restpos/cd;->a:Lcom/aadhk/restpos/PayInOutActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/CashRegister;->getDate()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/CashRegister;->getTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/aadhk/restpos/PayInOutActivity;->a(Lcom/aadhk/restpos/PayInOutActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 129
    iget-object v0, p0, Lcom/aadhk/restpos/cd;->a:Lcom/aadhk/restpos/PayInOutActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/PayInOutActivity;->b(Lcom/aadhk/restpos/PayInOutActivity;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 130
    iget-object v0, p0, Lcom/aadhk/restpos/cd;->a:Lcom/aadhk/restpos/PayInOutActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/PayInOutActivity;->b(Lcom/aadhk/restpos/PayInOutActivity;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/cd;->a:Lcom/aadhk/restpos/PayInOutActivity;

    invoke-static {v1}, Lcom/aadhk/restpos/PayInOutActivity;->c(Lcom/aadhk/restpos/PayInOutActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/aadhk/restpos/cd;->a:Lcom/aadhk/restpos/PayInOutActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/PayInOutActivity;->c(Lcom/aadhk/restpos/PayInOutActivity;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/cd;->a:Lcom/aadhk/restpos/PayInOutActivity;

    invoke-static {v1}, Lcom/aadhk/restpos/PayInOutActivity;->b(Lcom/aadhk/restpos/PayInOutActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_1

    .line 132
    iget-object v0, p0, Lcom/aadhk/restpos/cd;->a:Lcom/aadhk/restpos/PayInOutActivity;

    const v1, 0x7f08010a

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 142
    :goto_0
    return-void

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/aadhk/restpos/cd;->a:Lcom/aadhk/restpos/PayInOutActivity;

    const v1, 0x7f080109

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 140
    :cond_1
    iget-object v0, p0, Lcom/aadhk/restpos/cd;->a:Lcom/aadhk/restpos/PayInOutActivity;

    invoke-static {v0, p1}, Lcom/aadhk/restpos/PayInOutActivity;->a(Lcom/aadhk/restpos/PayInOutActivity;Lcom/aadhk/restpos/bean/CashRegister;)V

    goto :goto_0
.end method
