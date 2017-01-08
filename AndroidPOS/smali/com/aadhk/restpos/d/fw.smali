.class final Lcom/aadhk/restpos/d/fw;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/aadhk/restpos/d/fx;

.field final synthetic c:Lcom/aadhk/restpos/d/fv;


# direct methods
.method constructor <init>(Lcom/aadhk/restpos/d/fv;ILcom/aadhk/restpos/d/fx;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 236
    iput-object p1, p0, Lcom/aadhk/restpos/d/fw;->c:Lcom/aadhk/restpos/d/fv;

    iput p2, p0, Lcom/aadhk/restpos/d/fw;->a:I

    iput-object p3, p0, Lcom/aadhk/restpos/d/fw;->b:Lcom/aadhk/restpos/d/fx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 239
    iget-object v0, p0, Lcom/aadhk/restpos/d/fw;->c:Lcom/aadhk/restpos/d/fv;

    iget-object v0, v0, Lcom/aadhk/restpos/d/fv;->a:Lcom/aadhk/restpos/d/fq;

    invoke-static {v0}, Lcom/aadhk/restpos/d/fq;->d(Lcom/aadhk/restpos/d/fq;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/aadhk/restpos/d/fw;->c:Lcom/aadhk/restpos/d/fv;

    iget-object v1, v1, Lcom/aadhk/restpos/d/fv;->a:Lcom/aadhk/restpos/d/fq;

    invoke-static {v1}, Lcom/aadhk/restpos/d/fq;->c(Lcom/aadhk/restpos/d/fq;)[Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/aadhk/restpos/d/fw;->a:I

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/aadhk/restpos/d/fw;->b:Lcom/aadhk/restpos/d/fx;

    iget-object v2, v2, Lcom/aadhk/restpos/d/fx;->b:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    return-void
.end method
