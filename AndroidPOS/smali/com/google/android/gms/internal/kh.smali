.class final Lcom/google/android/gms/internal/kh;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/google/android/gms/internal/fh;

.field final synthetic c:Lcom/google/android/gms/internal/kn;

.field final synthetic d:Lcom/google/android/gms/internal/mk;

.field final synthetic e:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/fh;Lcom/google/android/gms/internal/kn;Lcom/google/android/gms/internal/mk;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/kh;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/kh;->b:Lcom/google/android/gms/internal/fh;

    iput-object p3, p0, Lcom/google/android/gms/internal/kh;->c:Lcom/google/android/gms/internal/kn;

    iput-object p4, p0, Lcom/google/android/gms/internal/kh;->d:Lcom/google/android/gms/internal/mk;

    iput-object p5, p0, Lcom/google/android/gms/internal/kh;->e:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/kh;->a:Landroid/content/Context;

    new-instance v1, Lcom/google/android/gms/internal/ay;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ay;-><init>()V

    const/4 v4, 0x0

    iget-object v3, p0, Lcom/google/android/gms/internal/kh;->b:Lcom/google/android/gms/internal/fh;

    iget-object v5, v3, Lcom/google/android/gms/internal/fh;->k:Lcom/google/android/gms/internal/gs;

    move v3, v2

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/mg;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ay;ZZLcom/google/android/gms/internal/qa;Lcom/google/android/gms/internal/gs;)Lcom/google/android/gms/internal/mg;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mg;->setWillNotDraw(Z)V

    iget-object v1, p0, Lcom/google/android/gms/internal/kh;->c:Lcom/google/android/gms/internal/kn;

    const-string v2, "setAdWebView must be called on the main thread."

    invoke-static {v2}, Lcom/google/android/gms/internal/px;->b(Ljava/lang/String;)V

    iput-object v0, v1, Lcom/google/android/gms/internal/kn;->a:Lcom/google/android/gms/internal/mg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mg;->f()Lcom/google/android/gms/internal/mi;

    move-result-object v1

    const-string v2, "/invalidRequest"

    iget-object v3, p0, Lcom/google/android/gms/internal/kh;->c:Lcom/google/android/gms/internal/kn;

    iget-object v3, v3, Lcom/google/android/gms/internal/kn;->b:Lcom/google/android/gms/internal/cz;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/mi;->a(Ljava/lang/String;Lcom/google/android/gms/internal/cz;)V

    const-string v2, "/loadAdURL"

    iget-object v3, p0, Lcom/google/android/gms/internal/kh;->c:Lcom/google/android/gms/internal/kn;

    iget-object v3, v3, Lcom/google/android/gms/internal/kn;->c:Lcom/google/android/gms/internal/cz;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/mi;->a(Ljava/lang/String;Lcom/google/android/gms/internal/cz;)V

    const-string v2, "/log"

    sget-object v3, Lcom/google/android/gms/internal/cp;->h:Lcom/google/android/gms/internal/cz;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/mi;->a(Ljava/lang/String;Lcom/google/android/gms/internal/cz;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/kh;->d:Lcom/google/android/gms/internal/mk;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/mi;->a(Lcom/google/android/gms/internal/mk;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/kh;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mg;->loadUrl(Ljava/lang/String;)V

    return-void
.end method
