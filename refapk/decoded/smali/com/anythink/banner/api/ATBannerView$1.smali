.class Lcom/anythink/banner/api/ATBannerView$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/banner/a/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/banner/api/ATBannerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/anythink/banner/api/ATBannerView;


# direct methods
.method constructor <init>(Lcom/anythink/banner/api/ATBannerView;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/anythink/banner/api/ATBannerView$1;->this$0:Lcom/anythink/banner/api/ATBannerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBannerClicked(Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;)V
    .locals 2

    .line 92
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v0

    new-instance v1, Lcom/anythink/banner/api/ATBannerView$1$1;

    invoke-direct {v1, p0, p1}, Lcom/anythink/banner/api/ATBannerView$1$1;-><init>(Lcom/anythink/banner/api/ATBannerView$1;Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;)V

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/b/o;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onBannerClose(Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;)V
    .locals 2

    .line 121
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v0

    new-instance v1, Lcom/anythink/banner/api/ATBannerView$1$3;

    invoke-direct {v1, p0, p1}, Lcom/anythink/banner/api/ATBannerView$1$3;-><init>(Lcom/anythink/banner/api/ATBannerView$1;Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;)V

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/b/o;->b(Ljava/lang/Runnable;)V

    .line 130
    iget-object p1, p0, Lcom/anythink/banner/api/ATBannerView$1;->this$0:Lcom/anythink/banner/api/ATBannerView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/anythink/banner/api/ATBannerView;->access$102(Lcom/anythink/banner/api/ATBannerView;Z)Z

    .line 131
    iget-object p1, p0, Lcom/anythink/banner/api/ATBannerView$1;->this$0:Lcom/anythink/banner/api/ATBannerView;

    invoke-static {p1, v0}, Lcom/anythink/banner/api/ATBannerView;->access$200(Lcom/anythink/banner/api/ATBannerView;I)V

    return-void
.end method

.method public onBannerShow(Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;Z)V
    .locals 2

    .line 104
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v0

    new-instance v1, Lcom/anythink/banner/api/ATBannerView$1$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/anythink/banner/api/ATBannerView$1$2;-><init>(Lcom/anythink/banner/api/ATBannerView$1;Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;Z)V

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/b/o;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onDeeplinkCallback(Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;Z)V
    .locals 2

    .line 136
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v0

    new-instance v1, Lcom/anythink/banner/api/ATBannerView$1$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/anythink/banner/api/ATBannerView$1$4;-><init>(Lcom/anythink/banner/api/ATBannerView$1;Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;Z)V

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/b/o;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onDownloadConfirm(Landroid/content/Context;Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;Lcom/anythink/core/api/ATNetworkConfirmInfo;)V
    .locals 2

    .line 148
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v0

    new-instance v1, Lcom/anythink/banner/api/ATBannerView$1$5;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/anythink/banner/api/ATBannerView$1$5;-><init>(Lcom/anythink/banner/api/ATBannerView$1;Landroid/content/Context;Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;Lcom/anythink/core/api/ATNetworkConfirmInfo;)V

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/b/o;->b(Ljava/lang/Runnable;)V

    return-void
.end method
