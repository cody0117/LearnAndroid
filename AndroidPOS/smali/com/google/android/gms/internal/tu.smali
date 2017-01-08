.class final Lcom/google/android/gms/internal/tu;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/tz;

.field final synthetic b:Lcom/google/android/gms/internal/ts;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ts;Lcom/google/android/gms/internal/tz;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/tu;->b:Lcom/google/android/gms/internal/ts;

    iput-object p2, p0, Lcom/google/android/gms/internal/tu;->a:Lcom/google/android/gms/internal/tz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/tu;->a:Lcom/google/android/gms/internal/tz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/tz;->a()V

    const/4 v0, 0x0

    return v0
.end method
