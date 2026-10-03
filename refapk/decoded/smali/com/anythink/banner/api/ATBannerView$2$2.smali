.class final Lcom/anythink/banner/api/ATBannerView$2$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/banner/api/ATBannerView$2;->onAdLoadFail(Lcom/anythink/core/api/AdError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/anythink/banner/api/ATBannerView$2;

.field final synthetic val$adError:Lcom/anythink/core/api/AdError;


# direct methods
.method constructor <init>(Lcom/anythink/banner/api/ATBannerView$2;Lcom/anythink/core/api/AdError;)V
    .locals 0

    .line 175
    iput-object p1, p0, Lcom/anythink/banner/api/ATBannerView$2$2;->this$1:Lcom/anythink/banner/api/ATBannerView$2;

    iput-object p2, p0, Lcom/anythink/banner/api/ATBannerView$2$2;->val$adError:Lcom/anythink/core/api/AdError;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 178
    iget-object v0, p0, Lcom/anythink/banner/api/ATBannerView$2$2;->this$1:Lcom/anythink/banner/api/ATBannerView$2;

    iget-object v0, v0, Lcom/anythink/banner/api/ATBannerView$2;->this$0:Lcom/anythink/banner/api/ATBannerView;

    invoke-static {v0}, Lcom/anythink/banner/api/ATBannerView;->access$000(Lcom/anythink/banner/api/ATBannerView;)Lcom/anythink/banner/api/ATBannerListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/anythink/banner/api/ATBannerView$2$2;->this$1:Lcom/anythink/banner/api/ATBannerView$2;

    iget-object v0, v0, Lcom/anythink/banner/api/ATBannerView$2;->this$0:Lcom/anythink/banner/api/ATBannerView;

    invoke-static {v0}, Lcom/anythink/banner/api/ATBannerView;->access$100(Lcom/anythink/banner/api/ATBannerView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 179
    iget-object v0, p0, Lcom/anythink/banner/api/ATBannerView$2$2;->this$1:Lcom/anythink/banner/api/ATBannerView$2;

    iget-object v0, v0, Lcom/anythink/banner/api/ATBannerView$2;->this$0:Lcom/anythink/banner/api/ATBannerView;

    iget-boolean v0, v0, Lcom/anythink/banner/api/ATBannerView;->mIsRefresh:Z

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/anythink/banner/api/ATBannerView$2$2;->this$1:Lcom/anythink/banner/api/ATBannerView$2;

    iget-object v0, v0, Lcom/anythink/banner/api/ATBannerView$2;->this$0:Lcom/anythink/banner/api/ATBannerView;

    invoke-static {v0}, Lcom/anythink/banner/api/ATBannerView;->access$000(Lcom/anythink/banner/api/ATBannerView;)Lcom/anythink/banner/api/ATBannerListener;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/banner/api/ATBannerView$2$2;->val$adError:Lcom/anythink/core/api/AdError;

    invoke-interface {v0, v1}, Lcom/anythink/banner/api/ATBannerListener;->onBannerAutoRefreshFail(Lcom/anythink/core/api/AdError;)V

    return-void

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/anythink/banner/api/ATBannerView$2$2;->this$1:Lcom/anythink/banner/api/ATBannerView$2;

    iget-object v0, v0, Lcom/anythink/banner/api/ATBannerView$2;->this$0:Lcom/anythink/banner/api/ATBannerView;

    invoke-static {v0}, Lcom/anythink/banner/api/ATBannerView;->access$000(Lcom/anythink/banner/api/ATBannerView;)Lcom/anythink/banner/api/ATBannerListener;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/banner/api/ATBannerView$2$2;->val$adError:Lcom/anythink/core/api/AdError;

    invoke-interface {v0, v1}, Lcom/anythink/banner/api/ATBannerListener;->onBannerFailed(Lcom/anythink/core/api/AdError;)V

    :cond_1
    return-void
.end method
