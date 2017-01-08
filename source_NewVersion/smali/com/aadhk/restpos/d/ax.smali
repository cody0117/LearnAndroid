.class final Lcom/aadhk/restpos/d/ax;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/restpos/c/i;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/d/au;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/d/au;)V
    .locals 0
    .parameter

    .prologue
    .line 217
    iput-object p1, p0, Lcom/aadhk/restpos/d/ax;->a:Lcom/aadhk/restpos/d/au;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 220
    iget-object v0, p0, Lcom/aadhk/restpos/d/ax;->a:Lcom/aadhk/restpos/d/au;

    invoke-static {v0}, Lcom/aadhk/restpos/d/au;->e(Lcom/aadhk/restpos/d/au;)Lcom/aadhk/restpos/b/k;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/d/ax;->a:Lcom/aadhk/restpos/d/au;

    invoke-static {v1}, Lcom/aadhk/restpos/d/au;->d(Lcom/aadhk/restpos/d/au;)Lcom/aadhk/restpos/bean/ModifierGroup;

    move-result-object v1

    invoke-virtual {v1}, Lcom/aadhk/restpos/bean/ModifierGroup;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/aadhk/restpos/b/k;->a(J)V

    .line 221
    iget-object v0, p0, Lcom/aadhk/restpos/d/ax;->a:Lcom/aadhk/restpos/d/au;

    invoke-static {v0}, Lcom/aadhk/restpos/d/au;->f(Lcom/aadhk/restpos/d/au;)Lcom/aadhk/restpos/MgrModifierActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/MgrModifierActivity;->b()V

    .line 222
    return-void
.end method
