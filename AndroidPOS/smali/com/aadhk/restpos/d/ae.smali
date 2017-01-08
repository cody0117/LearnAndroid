.class final Lcom/aadhk/restpos/d/ae;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/restpos/c/bp;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/d/ad;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/d/ad;)V
    .locals 0
    .parameter

    .prologue
    .line 533
    iput-object p1, p0, Lcom/aadhk/restpos/d/ae;->a:Lcom/aadhk/restpos/d/ad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 536
    iget-object v0, p0, Lcom/aadhk/restpos/d/ae;->a:Lcom/aadhk/restpos/d/ad;

    iget-object v0, v0, Lcom/aadhk/restpos/d/ad;->a:Lcom/aadhk/restpos/d/q;

    invoke-static {v0}, Lcom/aadhk/restpos/d/q;->a(Lcom/aadhk/restpos/d/q;)Lcom/aadhk/restpos/DatabaseActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/aadhk/restpos/util/q;->c(Landroid/app/Activity;)V

    .line 537
    return-void
.end method
