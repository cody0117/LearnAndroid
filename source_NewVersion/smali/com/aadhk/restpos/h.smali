.class final Lcom/aadhk/restpos/h;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/restpos/c/ay;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/DatabaseActivity;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/DatabaseActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 670
    iput-object p1, p0, Lcom/aadhk/restpos/h;->a:Lcom/aadhk/restpos/DatabaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 673
    iget-object v0, p0, Lcom/aadhk/restpos/h;->a:Lcom/aadhk/restpos/DatabaseActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/f/k;->d(Landroid/app/Activity;)V

    .line 674
    return-void
.end method
