.class final Lcom/aadhk/restpos/d/ic;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/widget/ExpandableListView$OnChildClickListener;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/d/ia;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/d/ia;)V
    .locals 0
    .parameter

    .prologue
    .line 110
    iput-object p1, p0, Lcom/aadhk/restpos/d/ic;->a:Lcom/aadhk/restpos/d/ia;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 113
    iget-object v0, p0, Lcom/aadhk/restpos/d/ic;->a:Lcom/aadhk/restpos/d/ia;

    invoke-static {v0}, Lcom/aadhk/restpos/d/ia;->c(Lcom/aadhk/restpos/d/ia;)Lcom/aadhk/restpos/ReservationActivity;

    move-result-object v1

    iget-object v0, p0, Lcom/aadhk/restpos/d/ic;->a:Lcom/aadhk/restpos/d/ia;

    invoke-static {v0}, Lcom/aadhk/restpos/d/ia;->b(Lcom/aadhk/restpos/d/ia;)Ljava/util/Map;

    move-result-object v0

    iget-object v2, p0, Lcom/aadhk/restpos/d/ic;->a:Lcom/aadhk/restpos/d/ia;

    invoke-static {v2}, Lcom/aadhk/restpos/d/ia;->a(Lcom/aadhk/restpos/d/ia;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aadhk/restpos/bean/Reservation;

    invoke-virtual {v1, v0}, Lcom/aadhk/restpos/ReservationActivity;->a(Lcom/aadhk/restpos/bean/Reservation;)V

    .line 114
    const/4 v0, 0x1

    return v0
.end method
