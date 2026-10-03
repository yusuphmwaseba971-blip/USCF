.class final Lcom/anythink/expressad/video/bt/module/ATTempContainer$c;
.super Lcom/anythink/expressad/video/module/a/a/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/expressad/video/bt/module/ATTempContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/expressad/video/bt/module/ATTempContainer;


# direct methods
.method private constructor <init>(Lcom/anythink/expressad/video/bt/module/ATTempContainer;)V
    .locals 0

    .line 1533
    iput-object p1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer$c;->a:Lcom/anythink/expressad/video/bt/module/ATTempContainer;

    invoke-direct {p0}, Lcom/anythink/expressad/video/module/a/a/f;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/anythink/expressad/video/bt/module/ATTempContainer;B)V
    .locals 0

    .line 1533
    invoke-direct {p0, p1}, Lcom/anythink/expressad/video/bt/module/ATTempContainer$c;-><init>(Lcom/anythink/expressad/video/bt/module/ATTempContainer;)V

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/Object;)V
    .locals 3

    .line 1536
    invoke-super {p0, p1, p2}, Lcom/anythink/expressad/video/module/a/a/f;->a(ILjava/lang/Object;)V

    .line 1540
    :try_start_0
    instance-of v0, p2, Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    .line 1541
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1543
    :cond_0
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    .line 1545
    :goto_0
    iget-object v1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer$c;->a:Lcom/anythink/expressad/video/bt/module/ATTempContainer;

    invoke-static {v1}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->p(Lcom/anythink/expressad/video/bt/module/ATTempContainer;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1546
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "type"

    .line 1549
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    const-string v2, "complete"

    .line 1550
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    .line 1560
    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer$c;->a:Lcom/anythink/expressad/video/bt/module/ATTempContainer;

    sget v2, Lcom/anythink/expressad/foundation/g/a;->cv:I

    invoke-static {v0, v2}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->b(Lcom/anythink/expressad/video/bt/module/ATTempContainer;I)I

    goto :goto_1

    .line 1557
    :cond_1
    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer$c;->a:Lcom/anythink/expressad/video/bt/module/ATTempContainer;

    sget v2, Lcom/anythink/expressad/foundation/g/a;->cw:I

    invoke-static {v0, v2}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->b(Lcom/anythink/expressad/video/bt/module/ATTempContainer;I)I

    goto :goto_1

    .line 1554
    :cond_2
    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer$c;->a:Lcom/anythink/expressad/video/bt/module/ATTempContainer;

    sget v2, Lcom/anythink/expressad/foundation/g/a;->cx:I

    invoke-static {v0, v2}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->b(Lcom/anythink/expressad/video/bt/module/ATTempContainer;I)I

    .line 1563
    :goto_1
    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer$c;->a:Lcom/anythink/expressad/video/bt/module/ATTempContainer;

    invoke-static {v0, v1}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->c(Lcom/anythink/expressad/video/bt/module/ATTempContainer;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_3
    const/16 v0, 0x78

    if-eq p1, v0, :cond_8

    const/16 v0, 0x7e

    if-eq p1, v0, :cond_7

    const/16 v0, 0x7f

    if-eq p1, v0, :cond_6

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_3

    .line 1634
    :pswitch_0
    iget-object p1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer$c;->a:Lcom/anythink/expressad/video/bt/module/ATTempContainer;

    invoke-virtual {p1}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->getJSCommon()Lcom/anythink/expressad/video/signal/c;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    :cond_4
    const-string p2, ""

    :goto_2
    invoke-interface {p1, v0, p2}, Lcom/anythink/expressad/video/signal/c;->click(ILjava/lang/String;)V

    goto/16 :goto_3

    .line 1613
    :pswitch_1
    iget-object p1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer$c;->a:Lcom/anythink/expressad/video/bt/module/ATTempContainer;

    invoke-static {p1}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->k(Lcom/anythink/expressad/video/bt/module/ATTempContainer;)V

    return-void

    .line 1571
    :pswitch_2
    iget-object p1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer$c;->a:Lcom/anythink/expressad/video/bt/module/ATTempContainer;

    invoke-static {p1}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->h(Lcom/anythink/expressad/video/bt/module/ATTempContainer;)Z

    .line 1573
    iget-object p1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer$c;->a:Lcom/anythink/expressad/video/bt/module/ATTempContainer;

    invoke-static {p1}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->d(Lcom/anythink/expressad/video/bt/module/ATTempContainer;)Lcom/anythink/expressad/foundation/d/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->H()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 1574
    iget-object p1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer$c;->a:Lcom/anythink/expressad/video/bt/module/ATTempContainer;

    invoke-static {p1}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->k(Lcom/anythink/expressad/video/bt/module/ATTempContainer;)V

    return-void

    .line 1576
    :cond_5
    iget-object p1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer$c;->a:Lcom/anythink/expressad/video/bt/module/ATTempContainer;

    invoke-virtual {p1}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->getJSCommon()Lcom/anythink/expressad/video/signal/c;

    move-result-object p1

    invoke-interface {p1}, Lcom/anythink/expressad/video/signal/c;->j()V

    return-void

    .line 1581
    :pswitch_3
    iget-object p1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer$c;->a:Lcom/anythink/expressad/video/bt/module/ATTempContainer;

    invoke-virtual {p1}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->getJSCommon()Lcom/anythink/expressad/video/signal/c;

    move-result-object p1

    invoke-interface {p1}, Lcom/anythink/expressad/video/signal/c;->j()V

    return-void

    .line 1584
    :pswitch_4
    iget-object p1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer$c;->a:Lcom/anythink/expressad/video/bt/module/ATTempContainer;

    invoke-static {p1}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->q(Lcom/anythink/expressad/video/bt/module/ATTempContainer;)Z

    .line 1585
    iget-object p1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer$c;->a:Lcom/anythink/expressad/video/bt/module/ATTempContainer;

    iget-object p1, p1, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->h:Landroid/os/Handler;

    iget-object p2, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer$c;->a:Lcom/anythink/expressad/video/bt/module/ATTempContainer;

    invoke-static {p2}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->r(Lcom/anythink/expressad/video/bt/module/ATTempContainer;)Ljava/lang/Runnable;

    move-result-object p2

    const-wide/16 v0, 0xfa

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1587
    iget-object p1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer$c;->a:Lcom/anythink/expressad/video/bt/module/ATTempContainer;

    invoke-static {p1}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->g(Lcom/anythink/expressad/video/bt/module/ATTempContainer;)Lcom/anythink/expressad/video/bt/module/b/h;

    move-result-object p1

    invoke-interface {p1}, Lcom/anythink/expressad/video/bt/module/b/h;->a()V

    return-void

    .line 1604
    :cond_6
    iget-object p1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer$c;->a:Lcom/anythink/expressad/video/bt/module/ATTempContainer;

    invoke-static {p1}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->h(Lcom/anythink/expressad/video/bt/module/ATTempContainer;)Z

    .line 1605
    iget-object p1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer$c;->a:Lcom/anythink/expressad/video/bt/module/ATTempContainer;

    invoke-static {p1}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->g(Lcom/anythink/expressad/video/bt/module/ATTempContainer;)Lcom/anythink/expressad/video/bt/module/b/h;

    move-result-object p1

    invoke-interface {p1}, Lcom/anythink/expressad/video/bt/module/b/h;->a()V

    .line 1606
    iget-object p1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer$c;->a:Lcom/anythink/expressad/video/bt/module/ATTempContainer;

    invoke-static {p1}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->g(Lcom/anythink/expressad/video/bt/module/ATTempContainer;)Lcom/anythink/expressad/video/bt/module/b/h;

    move-result-object p1

    invoke-interface {p1}, Lcom/anythink/expressad/video/bt/module/b/h;->c()V

    .line 1610
    iget-object p1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer$c;->a:Lcom/anythink/expressad/video/bt/module/ATTempContainer;

    invoke-virtual {p1}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->getJSContainerModule()Lcom/anythink/expressad/video/signal/e;

    move-result-object p1

    const/16 p2, 0x64

    invoke-interface {p1, p2}, Lcom/anythink/expressad/video/signal/e;->showEndcard(I)V

    return-void

    .line 1597
    :cond_7
    iget-object p1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer$c;->a:Lcom/anythink/expressad/video/bt/module/ATTempContainer;

    invoke-static {p1}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->g(Lcom/anythink/expressad/video/bt/module/ATTempContainer;)Lcom/anythink/expressad/video/bt/module/b/h;

    move-result-object p1

    iget-object p2, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer$c;->a:Lcom/anythink/expressad/video/bt/module/ATTempContainer;

    invoke-static {p2}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->d(Lcom/anythink/expressad/video/bt/module/ATTempContainer;)Lcom/anythink/expressad/foundation/d/c;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/anythink/expressad/video/bt/module/b/h;->a(Lcom/anythink/expressad/foundation/d/c;)V

    .line 1598
    iget-object p1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer$c;->a:Lcom/anythink/expressad/video/bt/module/ATTempContainer;

    iget-object p1, p1, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->k:Lcom/anythink/expressad/reward/player/c;

    if-eqz p1, :cond_9

    return-void

    .line 1590
    :cond_8
    iget-object p1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer$c;->a:Lcom/anythink/expressad/video/bt/module/ATTempContainer;

    invoke-static {p1}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->g(Lcom/anythink/expressad/video/bt/module/ATTempContainer;)Lcom/anythink/expressad/video/bt/module/b/h;

    move-result-object p1

    invoke-interface {p1}, Lcom/anythink/expressad/video/bt/module/b/h;->c()V

    .line 1591
    iget-object p1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer$c;->a:Lcom/anythink/expressad/video/bt/module/ATTempContainer;

    iget-object p1, p1, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->k:Lcom/anythink/expressad/reward/player/c;

    if-eqz p1, :cond_9

    :cond_9
    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
