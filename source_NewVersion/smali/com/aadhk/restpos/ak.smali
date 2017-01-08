.class final Lcom/aadhk/restpos/ak;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/aadhk/restpos/c/i;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/MgrCategoryActivity;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/MgrCategoryActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 187
    iput-object p1, p0, Lcom/aadhk/restpos/ak;->a:Lcom/aadhk/restpos/MgrCategoryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/aadhk/restpos/ak;->a:Lcom/aadhk/restpos/MgrCategoryActivity;

    invoke-static {v0}, Lcom/aadhk/restpos/MgrCategoryActivity;->a(Lcom/aadhk/restpos/MgrCategoryActivity;)Lcom/aadhk/restpos/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aadhk/restpos/b/b;->a()V

    .line 191
    iget-object v0, p0, Lcom/aadhk/restpos/ak;->a:Lcom/aadhk/restpos/MgrCategoryActivity;

    invoke-virtual {v0}, Lcom/aadhk/restpos/MgrCategoryActivity;->a()V

    .line 192
    return-void
.end method
