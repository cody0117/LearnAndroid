.class final Lcom/aadhk/restpos/util/t;
.super Landroid/content/BroadcastReceiver;
.source "ProGuard"


# instance fields
.field final synthetic a:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .parameter

    .prologue
    .line 21
    iput-object p1, p0, Lcom/aadhk/restpos/util/t;->a:Landroid/app/Activity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 24
    invoke-virtual {p0}, Lcom/aadhk/restpos/util/t;->getResultCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 41
    :goto_0
    :pswitch_0
    return-void

    .line 26
    :pswitch_1
    iget-object v0, p0, Lcom/aadhk/restpos/util/t;->a:Landroid/app/Activity;

    const-string v1, "\u77ed\u4fe1\u53d1\u9001\u6210\u529f"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 29
    :pswitch_2
    iget-object v0, p0, Lcom/aadhk/restpos/util/t;->a:Landroid/app/Activity;

    const-string v1, "\u77ed\u4fe1\u53d1\u9001\u5931\u8d25\uff0c\u8bf7\u68c0\u67e5"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 32
    :pswitch_3
    iget-object v0, p0, Lcom/aadhk/restpos/util/t;->a:Landroid/app/Activity;

    const-string v1, "\u670d\u52a1\u5f53\u524d\u4e0d\u53ef\u7528"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 35
    :pswitch_4
    iget-object v0, p0, Lcom/aadhk/restpos/util/t;->a:Landroid/app/Activity;

    const-string v1, "\u7535\u53f0\u88ab\u663e\u5f0f\u5730\u5173\u95ed"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 38
    :pswitch_5
    iget-object v0, p0, Lcom/aadhk/restpos/util/t;->a:Landroid/app/Activity;

    const-string v1, "\u6ca1\u6709\u63d0\u4f9bpdu"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 24
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_3
    .end packed-switch
.end method
