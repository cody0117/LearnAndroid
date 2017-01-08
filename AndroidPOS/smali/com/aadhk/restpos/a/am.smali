.class final Lcom/aadhk/restpos/a/am;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field final synthetic a:Lcom/aadhk/restpos/a/al;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/a/al;)V
    .locals 0
    .parameter

    .prologue
    .line 120
    iput-object p1, p0, Lcom/aadhk/restpos/a/am;->a:Lcom/aadhk/restpos/a/al;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 6
    .parameter
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 129
    new-instance v1, Landroid/content/ClipData$Item;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-direct {v1, v0}, Landroid/content/ClipData$Item;-><init>(Ljava/lang/CharSequence;)V

    .line 133
    new-instance v2, Landroid/content/ClipData;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "text/plain"

    aput-object v4, v3, v5

    invoke-direct {v2, v0, v3, v1}, Landroid/content/ClipData;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;Landroid/content/ClipData$Item;)V

    .line 135
    new-instance v0, Lcom/aadhk/restpos/a/an;

    invoke-direct {v0, p1}, Lcom/aadhk/restpos/a/an;-><init>(Landroid/view/View;)V

    .line 138
    const/4 v1, 0x0

    invoke-virtual {p1, v2, v0, v1, v5}, Landroid/view/View;->startDrag(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    move-result v0

    return v0
.end method
