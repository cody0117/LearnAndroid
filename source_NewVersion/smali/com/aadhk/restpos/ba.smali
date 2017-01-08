.class final Lcom/aadhk/restpos/ba;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/product/library/b/f;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/MgrVoidReasonActivity;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/MgrVoidReasonActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 97
    iput-object p1, p0, Lcom/aadhk/restpos/ba;->a:Lcom/aadhk/restpos/MgrVoidReasonActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 1
    .parameter

    .prologue
    .line 100
    check-cast p1, Lcom/aadhk/restpos/bean/Note;

    .line 101
    iget-object v0, p0, Lcom/aadhk/restpos/ba;->a:Lcom/aadhk/restpos/MgrVoidReasonActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/MgrVoidReasonActivity;->a(Lcom/aadhk/restpos/MgrVoidReasonActivity;)Lcom/aadhk/restpos/b/l;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/aadhk/restpos/b/l;->a(Lcom/aadhk/restpos/bean/Note;)V

    .line 102
    iget-object v0, p0, Lcom/aadhk/restpos/ba;->a:Lcom/aadhk/restpos/MgrVoidReasonActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/MgrVoidReasonActivity;->a()V

    .line 103
    return-void
.end method
