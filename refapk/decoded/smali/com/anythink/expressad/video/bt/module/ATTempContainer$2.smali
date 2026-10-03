.class final Lcom/anythink/expressad/video/bt/module/ATTempContainer$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/expressad/video/bt/module/ATTempContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/expressad/video/bt/module/ATTempContainer;


# direct methods
.method constructor <init>(Lcom/anythink/expressad/video/bt/module/ATTempContainer;)V
    .locals 0

    .line 290
    iput-object p1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer$2;->a:Lcom/anythink/expressad/video/bt/module/ATTempContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 293
    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer$2;->a:Lcom/anythink/expressad/video/bt/module/ATTempContainer;

    invoke-virtual {v0}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->getActivityProxy()Lcom/anythink/expressad/video/signal/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/anythink/expressad/video/signal/a;->h()I

    move-result v0

    if-nez v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer$2;->a:Lcom/anythink/expressad/video/bt/module/ATTempContainer;

    const/4 v1, -0x3

    const-string v2, "JS bridge connect timeout"

    invoke-virtual {v0, v1, v2}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->defaultLoad(ILjava/lang/String;)V

    return-void

    .line 296
    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer$2;->a:Lcom/anythink/expressad/video/bt/module/ATTempContainer;

    const/4 v1, -0x4

    invoke-static {v0, v1}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->a(Lcom/anythink/expressad/video/bt/module/ATTempContainer;I)I

    return-void
.end method
