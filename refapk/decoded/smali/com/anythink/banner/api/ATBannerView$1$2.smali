.class final Lcom/anythink/banner/api/ATBannerView$1$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/banner/api/ATBannerView$1;->onBannerShow(Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/anythink/banner/api/ATBannerView$1;

.field final synthetic val$customBannerAdapter:Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;

.field final synthetic val$isRefresh:Z


# direct methods
.method constructor <init>(Lcom/anythink/banner/api/ATBannerView$1;Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;Z)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/anythink/banner/api/ATBannerView$1$2;->this$1:Lcom/anythink/banner/api/ATBannerView$1;

    iput-object p2, p0, Lcom/anythink/banner/api/ATBannerView$1$2;->val$customBannerAdapter:Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;

    iput-boolean p3, p0, Lcom/anythink/banner/api/ATBannerView$1$2;->val$isRefresh:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 107
    iget-object v0, p0, Lcom/anythink/banner/api/ATBannerView$1$2;->this$1:Lcom/anythink/banner/api/ATBannerView$1;

    iget-object v0, v0, Lcom/anythink/banner/api/ATBannerView$1;->this$0:Lcom/anythink/banner/api/ATBannerView;

    invoke-static {v0}, Lcom/anythink/banner/api/ATBannerView;->access$000(Lcom/anythink/banner/api/ATBannerView;)Lcom/anythink/banner/api/ATBannerListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 108
    iget-object v0, p0, Lcom/anythink/banner/api/ATBannerView$1$2;->val$customBannerAdapter:Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/anythink/banner/api/ATBannerView$1$2;->val$isRefresh:Z

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/anythink/banner/api/ATBannerView$1$2;->this$1:Lcom/anythink/banner/api/ATBannerView$1;

    iget-object v0, v0, Lcom/anythink/banner/api/ATBannerView$1;->this$0:Lcom/anythink/banner/api/ATBannerView;

    invoke-static {v0}, Lcom/anythink/banner/api/ATBannerView;->access$000(Lcom/anythink/banner/api/ATBannerView;)Lcom/anythink/banner/api/ATBannerListener;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/banner/api/ATBannerView$1$2;->val$customBannerAdapter:Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;

    invoke-static {v1}, Lcom/anythink/core/common/b/k;->a(Lcom/anythink/core/common/b/d;)Lcom/anythink/core/common/b/k;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/anythink/banner/api/ATBannerListener;->onBannerAutoRefreshed(Lcom/anythink/core/api/ATAdInfo;)V

    return-void

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/anythink/banner/api/ATBannerView$1$2;->this$1:Lcom/anythink/banner/api/ATBannerView$1;

    iget-object v0, v0, Lcom/anythink/banner/api/ATBannerView$1;->this$0:Lcom/anythink/banner/api/ATBannerView;

    invoke-static {v0}, Lcom/anythink/banner/api/ATBannerView;->access$000(Lcom/anythink/banner/api/ATBannerView;)Lcom/anythink/banner/api/ATBannerListener;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/banner/api/ATBannerView$1$2;->val$customBannerAdapter:Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;

    invoke-static {v1}, Lcom/anythink/core/common/b/k;->a(Lcom/anythink/core/common/b/d;)Lcom/anythink/core/common/b/k;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/anythink/banner/api/ATBannerListener;->onBannerShow(Lcom/anythink/core/api/ATAdInfo;)V

    :cond_1
    return-void
.end method
