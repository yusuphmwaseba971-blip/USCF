.class final Lcom/anythink/banner/api/ATBannerView$2$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/banner/api/ATBannerView$2;->onAdLoaded()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/anythink/banner/api/ATBannerView$2;


# direct methods
.method constructor <init>(Lcom/anythink/banner/api/ATBannerView$2;)V
    .locals 0

    .line 162
    iput-object p1, p0, Lcom/anythink/banner/api/ATBannerView$2$1;->this$1:Lcom/anythink/banner/api/ATBannerView$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/anythink/banner/api/ATBannerView$2$1;->this$1:Lcom/anythink/banner/api/ATBannerView$2;

    iget-object v0, v0, Lcom/anythink/banner/api/ATBannerView$2;->this$0:Lcom/anythink/banner/api/ATBannerView;

    invoke-static {v0}, Lcom/anythink/banner/api/ATBannerView;->access$000(Lcom/anythink/banner/api/ATBannerView;)Lcom/anythink/banner/api/ATBannerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/banner/api/ATBannerView$2$1;->this$1:Lcom/anythink/banner/api/ATBannerView$2;

    iget-object v0, v0, Lcom/anythink/banner/api/ATBannerView$2;->this$0:Lcom/anythink/banner/api/ATBannerView;

    iget-boolean v0, v0, Lcom/anythink/banner/api/ATBannerView;->mIsRefresh:Z

    if-nez v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/anythink/banner/api/ATBannerView$2$1;->this$1:Lcom/anythink/banner/api/ATBannerView$2;

    iget-object v0, v0, Lcom/anythink/banner/api/ATBannerView$2;->this$0:Lcom/anythink/banner/api/ATBannerView;

    invoke-static {v0}, Lcom/anythink/banner/api/ATBannerView;->access$000(Lcom/anythink/banner/api/ATBannerView;)Lcom/anythink/banner/api/ATBannerListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/anythink/banner/api/ATBannerListener;->onBannerLoaded()V

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/anythink/banner/api/ATBannerView$2$1;->this$1:Lcom/anythink/banner/api/ATBannerView$2;

    iget-object v0, v0, Lcom/anythink/banner/api/ATBannerView$2;->this$0:Lcom/anythink/banner/api/ATBannerView;

    invoke-virtual {v0}, Lcom/anythink/banner/api/ATBannerView;->controlShow()V

    return-void
.end method
