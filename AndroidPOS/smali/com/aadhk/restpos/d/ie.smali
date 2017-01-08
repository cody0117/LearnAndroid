.class final Lcom/aadhk/restpos/d/ie;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/product/library/b/f;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/bean/Reservation;

.field final synthetic b:Lcom/aadhk/restpos/d/ia;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/d/ia;Lcom/aadhk/restpos/bean/Reservation;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 148
    iput-object p1, p0, Lcom/aadhk/restpos/d/ie;->b:Lcom/aadhk/restpos/d/ia;

    iput-object p2, p0, Lcom/aadhk/restpos/d/ie;->a:Lcom/aadhk/restpos/bean/Reservation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 3
    .parameter

    .prologue
    .line 151
    check-cast p1, Lcom/aadhk/restpos/bean/Table;

    .line 152
    iget-object v0, p0, Lcom/aadhk/restpos/d/ie;->a:Lcom/aadhk/restpos/bean/Reservation;

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/Table;->getId()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/Reservation;->setTableId(I)V

    .line 153
    iget-object v0, p0, Lcom/aadhk/restpos/d/ie;->a:Lcom/aadhk/restpos/bean/Reservation;

    invoke-virtual {p1}, Lcom/aadhk/restpos/bean/Table;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/bean/Reservation;->setTableName(Ljava/lang/String;)V

    .line 154
    iget-object v0, p0, Lcom/aadhk/restpos/d/ie;->b:Lcom/aadhk/restpos/d/ia;

    invoke-static {v0}, Lcom/aadhk/restpos/d/ia;->c(Lcom/aadhk/restpos/d/ia;)Lcom/aadhk/restpos/ReservationActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/d/ie;->a:Lcom/aadhk/restpos/bean/Reservation;

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/ReservationActivity;->b(Lcom/aadhk/restpos/bean/Reservation;)V

    .line 155
    iget-object v0, p0, Lcom/aadhk/restpos/d/ie;->b:Lcom/aadhk/restpos/d/ia;

    iget-object v1, p0, Lcom/aadhk/restpos/d/ie;->a:Lcom/aadhk/restpos/bean/Reservation;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Reservation;->getId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/aadhk/restpos/d/ia;->a(Lcom/aadhk/restpos/d/ia;I)V

    .line 156
    return-void
.end method
