.class final Lcom/anythink/banner/api/ATBannerView$1$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/banner/api/ATBannerView$1;->onDownloadConfirm(Landroid/content/Context;Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;Lcom/anythink/core/api/ATNetworkConfirmInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/anythink/banner/api/ATBannerView$1;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$customBannerAdapter:Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;

.field final synthetic val$networkConfirmInfo:Lcom/anythink/core/api/ATNetworkConfirmInfo;


# direct methods
.method constructor <init>(Lcom/anythink/banner/api/ATBannerView$1;Landroid/content/Context;Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;Lcom/anythink/core/api/ATNetworkConfirmInfo;)V
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/anythink/banner/api/ATBannerView$1$5;->this$1:Lcom/anythink/banner/api/ATBannerView$1;

    iput-object p2, p0, Lcom/anythink/banner/api/ATBannerView$1$5;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/anythink/banner/api/ATBannerView$1$5;->val$customBannerAdapter:Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;

    iput-object p4, p0, Lcom/anythink/banner/api/ATBannerView$1$5;->val$networkConfirmInfo:Lcom/anythink/core/api/ATNetworkConfirmInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 151
    iget-object v0, p0, Lcom/anythink/banner/api/ATBannerView$1$5;->this$1:Lcom/anythink/banner/api/ATBannerView$1;

    iget-object v0, v0, Lcom/anythink/banner/api/ATBannerView$1;->this$0:Lcom/anythink/banner/api/ATBannerView;

    invoke-static {v0}, Lcom/anythink/banner/api/ATBannerView;->access$000(Lcom/anythink/banner/api/ATBannerView;)Lcom/anythink/banner/api/ATBannerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/banner/api/ATBannerView$1$5;->this$1:Lcom/anythink/banner/api/ATBannerView$1;

    iget-object v0, v0, Lcom/anythink/banner/api/ATBannerView$1;->this$0:Lcom/anythink/banner/api/ATBannerView;

    invoke-static {v0}, Lcom/anythink/banner/api/ATBannerView;->access$000(Lcom/anythink/banner/api/ATBannerView;)Lcom/anythink/banner/api/ATBannerListener;

    move-result-object v0

    instance-of v0, v0, Lcom/anythink/banner/api/ATBannerExListener;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/anythink/banner/api/ATBannerView$1$5;->this$1:Lcom/anythink/banner/api/ATBannerView$1;

    iget-object v0, v0, Lcom/anythink/banner/api/ATBannerView$1;->this$0:Lcom/anythink/banner/api/ATBannerView;

    invoke-static {v0}, Lcom/anythink/banner/api/ATBannerView;->access$000(Lcom/anythink/banner/api/ATBannerView;)Lcom/anythink/banner/api/ATBannerListener;

    move-result-object v0

    check-cast v0, Lcom/anythink/banner/api/ATBannerExListener;

    iget-object v1, p0, Lcom/anythink/banner/api/ATBannerView$1$5;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/anythink/banner/api/ATBannerView$1$5;->val$customBannerAdapter:Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;

    invoke-static {v2}, Lcom/anythink/core/common/b/k;->a(Lcom/anythink/core/common/b/d;)Lcom/anythink/core/common/b/k;

    move-result-object v2

    iget-object v3, p0, Lcom/anythink/banner/api/ATBannerView$1$5;->val$networkConfirmInfo:Lcom/anythink/core/api/ATNetworkConfirmInfo;

    invoke-interface {v0, v1, v2, v3}, Lcom/anythink/banner/api/ATBannerExListener;->onDownloadConfirm(Landroid/content/Context;Lcom/anythink/core/api/ATAdInfo;Lcom/anythink/core/api/ATNetworkConfirmInfo;)V

    :cond_0
    return-void
.end method
