.class public Lcom/aadhk/product/view/DragListView;
.super Landroid/widget/ListView;
.source "ProGuard"


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:Landroid/view/WindowManager;

.field private j:Landroid/view/WindowManager$LayoutParams;

.field private final k:I

.field private l:I

.field private m:I

.field private n:Lcom/aadhk/product/a/a;

.field private o:Landroid/view/ViewGroup;

.field private final p:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/aadhk/product/view/DragListView;->k:I

    .line 46
    iput-object p1, p0, Lcom/aadhk/product/view/DragListView;->p:Landroid/content/Context;

    .line 47
    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/aadhk/product/view/DragListView;->a:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/aadhk/product/view/DragListView;->i:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/aadhk/product/view/DragListView;->a:Landroid/widget/ImageView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 140
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aadhk/product/view/DragListView;->a:Landroid/widget/ImageView;

    .line 142
    :cond_0
    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v6, -0x2

    .line 52
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    .line 54
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v2, v0

    .line 55
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v3, v0

    .line 58
    invoke-virtual {p0, v2, v3}, Lcom/aadhk/product/view/DragListView;->pointToPosition(II)I

    move-result v0

    iput v0, p0, Lcom/aadhk/product/view/DragListView;->d:I

    iput v0, p0, Lcom/aadhk/product/view/DragListView;->c:I

    iput v0, p0, Lcom/aadhk/product/view/DragListView;->b:I

    .line 61
    iget v0, p0, Lcom/aadhk/product/view/DragListView;->c:I

    const/4 v4, -0x1

    if-ne v0, v4, :cond_0

    .line 62
    invoke-super {p0, p1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 100
    :goto_0
    return v0

    .line 68
    :cond_0
    iget v0, p0, Lcom/aadhk/product/view/DragListView;->c:I

    invoke-virtual {p0}, Lcom/aadhk/product/view/DragListView;->getFirstVisiblePosition()I

    move-result v4

    sub-int/2addr v0, v4

    invoke-virtual {p0, v0}, Lcom/aadhk/product/view/DragListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/aadhk/product/view/DragListView;->o:Landroid/view/ViewGroup;

    .line 73
    iget-object v0, p0, Lcom/aadhk/product/view/DragListView;->o:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLeft()I

    move-result v0

    sub-int v0, v2, v0

    iput v0, p0, Lcom/aadhk/product/view/DragListView;->e:I

    .line 74
    iget-object v0, p0, Lcom/aadhk/product/view/DragListView;->o:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getTop()I

    move-result v0

    sub-int v0, v3, v0

    iput v0, p0, Lcom/aadhk/product/view/DragListView;->f:I

    .line 75
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    int-to-float v4, v2

    sub-float/2addr v0, v4

    float-to-int v0, v0

    iput v0, p0, Lcom/aadhk/product/view/DragListView;->g:I

    .line 76
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    int-to-float v4, v3

    sub-float/2addr v0, v4

    float-to-int v0, v0

    iput v0, p0, Lcom/aadhk/product/view/DragListView;->h:I

    .line 79
    iget-object v0, p0, Lcom/aadhk/product/view/DragListView;->o:Landroid/view/ViewGroup;

    sget v4, Lcom/aadhk/product/library/b;->e:I

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 81
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    add-int/lit8 v0, v0, -0x14

    if-le v2, v0, :cond_1

    .line 82
    iget v0, p0, Lcom/aadhk/product/view/DragListView;->k:I

    sub-int v0, v3, v0

    invoke-virtual {p0}, Lcom/aadhk/product/view/DragListView;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x3

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/aadhk/product/view/DragListView;->l:I

    .line 88
    iget v0, p0, Lcom/aadhk/product/view/DragListView;->k:I

    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/aadhk/product/view/DragListView;->getHeight()I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    div-int/lit8 v4, v4, 0x3

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/aadhk/product/view/DragListView;->m:I

    .line 91
    iget-object v0, p0, Lcom/aadhk/product/view/DragListView;->o:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->destroyDrawingCache()V

    .line 92
    iget-object v0, p0, Lcom/aadhk/product/view/DragListView;->o:Landroid/view/ViewGroup;

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setDrawingCacheEnabled(Z)V

    .line 93
    iget-object v0, p0, Lcom/aadhk/product/view/DragListView;->o:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 96
    invoke-direct {p0}, Lcom/aadhk/product/view/DragListView;->a()V

    new-instance v4, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v4}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v4, p0, Lcom/aadhk/product/view/DragListView;->j:Landroid/view/WindowManager$LayoutParams;

    iget-object v4, p0, Lcom/aadhk/product/view/DragListView;->j:Landroid/view/WindowManager$LayoutParams;

    const/16 v5, 0x30

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v4, p0, Lcom/aadhk/product/view/DragListView;->j:Landroid/view/WindowManager$LayoutParams;

    iget v5, p0, Lcom/aadhk/product/view/DragListView;->e:I

    sub-int/2addr v2, v5

    iget v5, p0, Lcom/aadhk/product/view/DragListView;->g:I

    add-int/2addr v2, v5

    iput v2, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v2, p0, Lcom/aadhk/product/view/DragListView;->j:Landroid/view/WindowManager$LayoutParams;

    iget v4, p0, Lcom/aadhk/product/view/DragListView;->f:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/aadhk/product/view/DragListView;->h:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v2, p0, Lcom/aadhk/product/view/DragListView;->j:Landroid/view/WindowManager$LayoutParams;

    iput v6, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object v2, p0, Lcom/aadhk/product/view/DragListView;->j:Landroid/view/WindowManager$LayoutParams;

    iput v6, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    iget-object v2, p0, Lcom/aadhk/product/view/DragListView;->j:Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x398

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v2, p0, Lcom/aadhk/product/view/DragListView;->j:Landroid/view/WindowManager$LayoutParams;

    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    new-instance v2, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/aadhk/product/view/DragListView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0}, Lcom/aadhk/product/view/DragListView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "window"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/aadhk/product/view/DragListView;->i:Landroid/view/WindowManager;

    iget-object v0, p0, Lcom/aadhk/product/view/DragListView;->i:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/aadhk/product/view/DragListView;->j:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v2, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iput-object v2, p0, Lcom/aadhk/product/view/DragListView;->a:Landroid/widget/ImageView;

    :cond_1
    move v0, v1

    .line 98
    goto/16 :goto_0

    .line 100
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto/16 :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter

    .prologue
    const/4 v6, -0x1

    const/4 v1, 0x0

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "=======dragImageView==="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/aadhk/product/view/DragListView;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", dragPosition:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/aadhk/product/view/DragListView;->c:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 152
    iget-object v0, p0, Lcom/aadhk/product/view/DragListView;->a:Landroid/widget/ImageView;

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/aadhk/product/view/DragListView;->c:I

    if-eq v0, v6, :cond_6

    .line 153
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 154
    packed-switch v0, :pswitch_data_0

    .line 173
    :cond_0
    :goto_0
    const/4 v0, 0x1

    .line 180
    :goto_1
    return v0

    .line 157
    :pswitch_0
    invoke-virtual {p0}, Lcom/aadhk/product/view/DragListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/aadhk/product/a/a;

    iput-object v0, p0, Lcom/aadhk/product/view/DragListView;->n:Lcom/aadhk/product/a/a;

    .line 158
    iget-object v0, p0, Lcom/aadhk/product/view/DragListView;->n:Lcom/aadhk/product/a/a;

    iget v1, p0, Lcom/aadhk/product/view/DragListView;->d:I

    invoke-virtual {v0, v1}, Lcom/aadhk/product/a/a;->a(I)V

    goto :goto_0

    .line 161
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 162
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 164
    invoke-direct {p0}, Lcom/aadhk/product/view/DragListView;->a()V

    .line 166
    invoke-virtual {p0}, Lcom/aadhk/product/view/DragListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/aadhk/product/a/a;

    iput-object v0, p0, Lcom/aadhk/product/view/DragListView;->n:Lcom/aadhk/product/a/a;

    iget-object v0, p0, Lcom/aadhk/product/view/DragListView;->n:Lcom/aadhk/product/a/a;

    invoke-virtual {v0}, Lcom/aadhk/product/a/a;->a()V

    iget-object v0, p0, Lcom/aadhk/product/view/DragListView;->n:Lcom/aadhk/product/a/a;

    invoke-virtual {v0}, Lcom/aadhk/product/a/a;->b()V

    goto :goto_0

    .line 169
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 170
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v3, v2

    .line 172
    iget-object v2, p0, Lcom/aadhk/product/view/DragListView;->a:Landroid/widget/ImageView;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/aadhk/product/view/DragListView;->j:Landroid/view/WindowManager$LayoutParams;

    iget v4, p0, Lcom/aadhk/product/view/DragListView;->e:I

    sub-int v4, v0, v4

    iget v5, p0, Lcom/aadhk/product/view/DragListView;->g:I

    add-int/2addr v4, v5

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v2, p0, Lcom/aadhk/product/view/DragListView;->j:Landroid/view/WindowManager$LayoutParams;

    iget v4, p0, Lcom/aadhk/product/view/DragListView;->f:I

    sub-int v4, v3, v4

    iget v5, p0, Lcom/aadhk/product/view/DragListView;->h:I

    add-int/2addr v4, v5

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v2, p0, Lcom/aadhk/product/view/DragListView;->i:Landroid/view/WindowManager;

    iget-object v4, p0, Lcom/aadhk/product/view/DragListView;->a:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/aadhk/product/view/DragListView;->j:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v2, v4, v5}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    invoke-virtual {p0, v0, v3}, Lcom/aadhk/product/view/DragListView;->pointToPosition(II)I

    move-result v0

    invoke-virtual {p0, v1}, Lcom/aadhk/product/view/DragListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    if-ge v3, v2, :cond_4

    move v2, v1

    :goto_2
    if-ltz v2, :cond_2

    invoke-virtual {p0}, Lcom/aadhk/product/view/DragListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-ge v2, v0, :cond_2

    iget v0, p0, Lcom/aadhk/product/view/DragListView;->d:I

    if-eq v2, v0, :cond_2

    invoke-virtual {p0}, Lcom/aadhk/product/view/DragListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/aadhk/product/a/a;

    iput-object v0, p0, Lcom/aadhk/product/view/DragListView;->n:Lcom/aadhk/product/a/a;

    iget-object v0, p0, Lcom/aadhk/product/view/DragListView;->n:Lcom/aadhk/product/a/a;

    iget v4, p0, Lcom/aadhk/product/view/DragListView;->d:I

    invoke-virtual {v0, v4, v2}, Lcom/aadhk/product/a/a;->a(II)V

    iput v2, p0, Lcom/aadhk/product/view/DragListView;->d:I

    iget-object v0, p0, Lcom/aadhk/product/view/DragListView;->n:Lcom/aadhk/product/a/a;

    iget v4, p0, Lcom/aadhk/product/view/DragListView;->d:I

    invoke-virtual {v0, v4}, Lcom/aadhk/product/a/a;->a(I)V

    :cond_2
    if-eq v2, v6, :cond_3

    iput v2, p0, Lcom/aadhk/product/view/DragListView;->c:I

    :cond_3
    iget v0, p0, Lcom/aadhk/product/view/DragListView;->l:I

    if-ge v3, v0, :cond_5

    const/16 v0, 0x8

    :goto_3
    if-eqz v0, :cond_0

    iget v1, p0, Lcom/aadhk/product/view/DragListView;->c:I

    invoke-virtual {p0}, Lcom/aadhk/product/view/DragListView;->getFirstVisiblePosition()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/aadhk/product/view/DragListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    iget v2, p0, Lcom/aadhk/product/view/DragListView;->c:I

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, v2, v0}, Lcom/aadhk/product/view/DragListView;->setSelectionFromTop(II)V

    goto/16 :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/aadhk/product/view/DragListView;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Lcom/aadhk/product/view/DragListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    if-le v3, v2, :cond_8

    invoke-virtual {p0}, Lcom/aadhk/product/view/DragListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    goto :goto_2

    :cond_5
    iget v0, p0, Lcom/aadhk/product/view/DragListView;->m:I

    if-le v3, v0, :cond_7

    const/4 v0, -0x8

    goto :goto_3

    .line 180
    :cond_6
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto/16 :goto_1

    :cond_7
    move v0, v1

    goto :goto_3

    :cond_8
    move v2, v0

    goto :goto_2

    .line 154
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
