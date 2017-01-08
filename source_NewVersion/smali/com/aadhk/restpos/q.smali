.class final Lcom/aadhk/restpos/q;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/restpos/c/ay;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/p;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/p;)V
    .locals 0
    .parameter

    .prologue
    .line 574
    iput-object p1, p0, Lcom/aadhk/restpos/q;->a:Lcom/aadhk/restpos/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 577
    iget-object v0, p0, Lcom/aadhk/restpos/q;->a:Lcom/aadhk/restpos/p;

    iget-object v0, v0, Lcom/aadhk/restpos/p;->a:Lcom/aadhk/restpos/DatabaseActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/f/k;->d(Landroid/app/Activity;)V

    .line 578
    return-void
.end method
