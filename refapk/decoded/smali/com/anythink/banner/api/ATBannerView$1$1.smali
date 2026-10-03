.class final Lcom/anythink/banner/api/ATBannerView$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/banner/api/ATBannerView$1;->onBannerClicked(Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/anythink/banner/api/ATBannerView$1;

.field final synthetic val$customBannerAdapter:Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;


# direct methods
.method constructor <init>(Lcom/anythink/banner/api/ATBannerView$1;Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/anythink/banner/api/ATBannerView$1$1;->this$1:Lcom/anythink/banner/api/ATBannerView$1;

    iput-object p2, p0, Lcom/anythink/banner/api/ATBannerView$1$1;->val$customBannerAdapter:Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 95
    iget-object v0, p0, Lcom/anythink/banner/api/ATBannerView$1$1;->this$1:Lcom/anythink/banner/api/ATBannerView$1;

    iget-object v0, v0, Lcom/anythink/banner/api/ATBannerView$1;->this$0:Lcom/anythink/banner/api/ATBannerView;

    invoke-static {v0}, Lcom/anythink/banner/api/ATBannerView;->access$000(Lcom/anythink/banner/api/ATBannerView;)Lcom/anythink/banner/api/ATBannerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/anythink/banner/api/ATBannerView$1$1;->this$1:Lcom/anythink/banner/api/ATBannerView$1;

    iget-object v0, v0, Lcom/anythink/banner/api/ATBannerView$1;->this$0:Lcom/anythink/banner/api/ATBannerView;

    invoke-static {v0}, Lcom/anythink/banner/api/ATBannerView;->access$000(Lcom/anythink/banner/api/ATBannerView;)Lcom/anythink/banner/api/ATBannerListener;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/banner/api/ATBannerView$1$1;->val$customBannerAdapter:Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;

    invoke-static {v1}, Lcom/anythink/core/common/b/k;->a(Lcom/anythink/core/common/b/d;)Lcom/anythink/core/common/b/k;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/anythink/banner/api/ATBannerListener;->onBannerClicked(Lcom/anythink/core/api/ATAdInfo;)V

    :cond_0
    return-void
.end method
