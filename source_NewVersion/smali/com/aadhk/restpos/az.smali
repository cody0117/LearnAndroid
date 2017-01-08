.class final Lcom/aadhk/restpos/az;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/restpos/c/i;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/ay;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/ay;)V
    .locals 0
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Lcom/aadhk/restpos/az;->a:Lcom/aadhk/restpos/ay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/aadhk/restpos/az;->a:Lcom/aadhk/restpos/ay;

    iget-object v0, v0, Lcom/aadhk/restpos/ay;->b:Lcom/aadhk/restpos/MgrVoidReasonActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/MgrVoidReasonActivity;->a(Lcom/aadhk/restpos/MgrVoidReasonActivity;)Lcom/aadhk/restpos/b/l;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/az;->a:Lcom/aadhk/restpos/ay;

    iget-object v1, v1, Lcom/aadhk/restpos/ay;->a:Lcom/aadhk/restpos/bean/Note;

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/Note;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/aadhk/restpos/b/l;->a(I)V

    .line 85
    iget-object v0, p0, Lcom/aadhk/restpos/az;->a:Lcom/aadhk/restpos/ay;

    iget-object v0, v0, Lcom/aadhk/restpos/ay;->b:Lcom/aadhk/restpos/MgrVoidReasonActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/MgrVoidReasonActivity;->a()V

    .line 86
    return-void
.end method
