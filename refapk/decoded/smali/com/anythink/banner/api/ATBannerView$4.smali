.class Lcom/anythink/banner/api/ATBannerView$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/banner/api/ATBannerView;->controlShow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/anythink/banner/api/ATBannerView;

.field final synthetic val$currentRefreshStatus:Z


# direct methods
.method constructor <init>(Lcom/anythink/banner/api/ATBannerView;Z)V
    .locals 0

    .line 412
    iput-object p1, p0, Lcom/anythink/banner/api/ATBannerView$4;->this$0:Lcom/anythink/banner/api/ATBannerView;

    iput-boolean p2, p0, Lcom/anythink/banner/api/ATBannerView$4;->val$currentRefreshStatus:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 415
    iget-object v0, p0, Lcom/anythink/banner/api/ATBannerView$4;->this$0:Lcom/anythink/banner/api/ATBannerView;

    invoke-static {v0}, Lcom/anythink/banner/api/ATBannerView;->access$300(Lcom/anythink/banner/api/ATBannerView;)Lcom/anythink/banner/a/a;

    move-result-object v0

    monitor-enter v0

    .line 416
    :try_start_0
    iget-object v1, p0, Lcom/anythink/banner/api/ATBannerView$4;->this$0:Lcom/anythink/banner/api/ATBannerView;

    invoke-static {v1}, Lcom/anythink/banner/api/ATBannerView;->access$100(Lcom/anythink/banner/api/ATBannerView;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 418
    iget-object v1, p0, Lcom/anythink/banner/api/ATBannerView$4;->this$0:Lcom/anythink/banner/api/ATBannerView;

    invoke-static {v1}, Lcom/anythink/banner/api/ATBannerView;->access$800(Lcom/anythink/banner/api/ATBannerView;)Lcom/anythink/core/common/f/b;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    .line 420
    iget-object v4, p0, Lcom/anythink/banner/api/ATBannerView$4;->this$0:Lcom/anythink/banner/api/ATBannerView;

    invoke-static {v4}, Lcom/anythink/banner/api/ATBannerView;->access$400(Lcom/anythink/banner/api/ATBannerView;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 422
    invoke-virtual {v1}, Lcom/anythink/core/common/f/b;->c()I

    move-result v4

    add-int/2addr v4, v3

    invoke-virtual {v1, v4}, Lcom/anythink/core/common/f/b;->a(I)V

    .line 423
    iget-object v3, p0, Lcom/anythink/banner/api/ATBannerView$4;->this$0:Lcom/anythink/banner/api/ATBannerView;

    invoke-static {v3, v2}, Lcom/anythink/banner/api/ATBannerView;->access$102(Lcom/anythink/banner/api/ATBannerView;Z)Z

    .line 425
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v3

    new-instance v4, Lcom/anythink/banner/api/ATBannerView$4$1;

    invoke-direct {v4, p0, v1}, Lcom/anythink/banner/api/ATBannerView$4$1;-><init>(Lcom/anythink/banner/api/ATBannerView$4;Lcom/anythink/core/common/f/b;)V

    invoke-virtual {v3, v4}, Lcom/anythink/core/common/b/o;->b(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 433
    :cond_0
    iget-object v1, p0, Lcom/anythink/banner/api/ATBannerView$4;->this$0:Lcom/anythink/banner/api/ATBannerView;

    iget-boolean v1, v1, Lcom/anythink/banner/api/ATBannerView;->hasTouchWindow:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/anythink/banner/api/ATBannerView$4;->this$0:Lcom/anythink/banner/api/ATBannerView;

    invoke-virtual {v1}, Lcom/anythink/banner/api/ATBannerView;->isShown()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    .line 436
    :cond_1
    iget-object v1, p0, Lcom/anythink/banner/api/ATBannerView$4;->this$0:Lcom/anythink/banner/api/ATBannerView;

    invoke-static {v1}, Lcom/anythink/banner/api/ATBannerView;->access$600(Lcom/anythink/banner/api/ATBannerView;)Ljava/lang/String;

    goto :goto_0

    .line 439
    :cond_2
    iget-object v1, p0, Lcom/anythink/banner/api/ATBannerView$4;->this$0:Lcom/anythink/banner/api/ATBannerView;

    invoke-static {v1}, Lcom/anythink/banner/api/ATBannerView;->access$1000(Lcom/anythink/banner/api/ATBannerView;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/anythink/banner/api/ATBannerView$4;->this$0:Lcom/anythink/banner/api/ATBannerView;

    invoke-static {v1}, Lcom/anythink/banner/api/ATBannerView;->access$300(Lcom/anythink/banner/api/ATBannerView;)Lcom/anythink/banner/a/a;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/anythink/banner/api/ATBannerView$4;->this$0:Lcom/anythink/banner/api/ATBannerView;

    invoke-static {v1}, Lcom/anythink/banner/api/ATBannerView;->access$300(Lcom/anythink/banner/api/ATBannerView;)Lcom/anythink/banner/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/banner/a/a;->a()Z

    move-result v1

    if-nez v1, :cond_3

    .line 440
    iget-object v1, p0, Lcom/anythink/banner/api/ATBannerView$4;->this$0:Lcom/anythink/banner/api/ATBannerView;

    invoke-static {v1, v3}, Lcom/anythink/banner/api/ATBannerView;->access$200(Lcom/anythink/banner/api/ATBannerView;I)V

    .line 441
    iget-object v1, p0, Lcom/anythink/banner/api/ATBannerView$4;->this$0:Lcom/anythink/banner/api/ATBannerView;

    iget-boolean v1, v1, Lcom/anythink/banner/api/ATBannerView;->hasTouchWindow:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/anythink/banner/api/ATBannerView$4;->this$0:Lcom/anythink/banner/api/ATBannerView;

    invoke-virtual {v1}, Lcom/anythink/banner/api/ATBannerView;->isShown()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v2, 0x1

    :cond_3
    :goto_0
    if-eqz v2, :cond_4

    .line 448
    iget-object v1, p0, Lcom/anythink/banner/api/ATBannerView$4;->this$0:Lcom/anythink/banner/api/ATBannerView;

    invoke-static {v1}, Lcom/anythink/banner/api/ATBannerView;->access$500(Lcom/anythink/banner/api/ATBannerView;)Lcom/anythink/banner/b/a;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 449
    iget-object v1, p0, Lcom/anythink/banner/api/ATBannerView$4;->this$0:Lcom/anythink/banner/api/ATBannerView;

    invoke-static {v1}, Lcom/anythink/banner/api/ATBannerView;->access$500(Lcom/anythink/banner/api/ATBannerView;)Lcom/anythink/banner/b/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/banner/b/a;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 456
    :cond_4
    monitor-exit v0

    return-void

    .line 453
    :cond_5
    :try_start_1
    iget-object v1, p0, Lcom/anythink/banner/api/ATBannerView$4;->this$0:Lcom/anythink/banner/api/ATBannerView;

    invoke-static {v1}, Lcom/anythink/banner/api/ATBannerView;->access$600(Lcom/anythink/banner/api/ATBannerView;)Ljava/lang/String;

    .line 454
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    .line 456
    monitor-exit v0

    throw v1
.end method
